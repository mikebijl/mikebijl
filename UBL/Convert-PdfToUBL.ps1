function Read-PDFFile {
    # Synopsis
    #   Extracts text from a PDF file using PdfPig.
    #
    # Description
    #   This script demonstrates how to read text from a PDF file in PowerShell using the PdfPig .NET library.
    #
    # Example
    #   PS> .\Get-PdfText.ps1 -PdfPath 'C:\Invoices\invoice.pdf'
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$PdfPath
    )

    Add-Type -Path "C:\Users\MikeBijl\Git\mikebijl\UBL\UglyToad.PdfPig\UglyToad.PdfPig.dll"

    $pdfDocument = [UglyToad.PdfPig.PdfDocument]::Open($PdfPath)
    foreach ($page in $pdfDocument.GetPages()) {
        $text = $page.Text
        Write-Output $text
    }
}

function ConvertTo-UblInvoice {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$InvoiceText,

        [Parameter(Mandatory)]
        [string]$OutputPath
    )

    # Parse invoice fields from text (very basic, for demo purposes)
    $invoiceNumber = ($InvoiceText -split 'Factuur nr\.\s+')[1] -split '\s' | Select-Object -First 1
    $invoiceDate = ($InvoiceText -split 'Factuurdatum:\s*')[1] -split '\s' | Select-Object -First 1
    $supplierName = 'Axe{0}B.V' -f ((($InvoiceText -split 'Axe') | Where-Object { $_ -like '*KvK nr*' -and $_ -like '*IBAN*' }) -split 'B.V.')
    $supplierKvK = (($InvoiceText -split 'Axe') | Where-Object { $_ -like '*KvK nr*' -and $_ -like '*IBAN*' } | Foreach-Object { $_ -split 'KvK nr:' } )[1].trim().Substring(0, 9).trim()
    $supplierBtwNr = (((($InvoiceText -split 'Axe') | Where-Object { $_ -like '*BTW-nr*' -and $_ -like '*IBAN*' }) -split 'BTW-nr: ')[1]  -split '\s')[0]
    $customerName = (($InvoiceText -split 'FACTUREREN AAN\s*')[1] -split '\s' | Select-Object -First 3) -join ' '
    $customerKvK = (($InvoiceText -split 'Axe') | Where-Object { $_ -like '*KvK nr*' -and $_ -notlike '*IBAN*' } | Foreach-Object { $_ -split 'KvK nr:' } )[1].trim().Substring(0, 9).trim()  
    $customerBtwNr = (((($InvoiceText -split 'Axe') | Where-Object { $_ -like '*BTW-nr*' -and $_ -notlike '*IBAN*' }) -split 'BTW-nr: ')[1]  -split '\s')[0]
    $dueDate = ($InvoiceText -split 'Vervaldatum:\s*')[1] -split '\s' | Select-Object -First 1
    $totalAmount = ($InvoiceText -split '€')[-1] -replace '[^0-9,.]', '' | Select-Object -First 1

    # Compose UBL Invoice XML (simplified)
    $ublXml = @"
<?xml version="1.0" encoding="UTF-8"?>
<Invoice xmlns="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"
         xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
         xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">
  <cbc:ID>$invoiceNumber</cbc:ID>
  <cbc:IssueDate>$invoiceDate</cbc:IssueDate>
  <cbc:DueDate>$dueDate</cbc:DueDate>
  <cbc:InvoiceTypeCode>380</cbc:InvoiceTypeCode>
  <cbc:DocumentCurrencyCode>EUR</cbc:DocumentCurrencyCode>
  <cac:AccountingSupplierParty>
    <cac:Party>
      <cbc:Name>$supplierName</cbc:Name>
    </cac:Party>
    <cac:Partydentification>
      <cbc:ID>$supplierKvK</cbc:ID>
    </cac:Partydentification>
    <cac:PartyTaxScheme>
      <cbc:CompanyID>$supplierBtwNr</cbc:CompanyID>
      <cac:TaxScheme>
        <cbc:ID>VAT</cbc:ID>
      </cac:TaxScheme>
    </cac:PartyTaxScheme>
  </cac:AccountingSupplierParty>
  <cac:AccountingCustomerParty>
    <cac:Party>
      <cbc:Name>$customerName</cbc:Name>
    </cac:Party>
    <cac:Partydentification>
        <cbc:ID>$customerKvK</cbc:ID>
    </cac:Partydentification>
    <cac:PartyTaxScheme>
      <cbc:CompanyID>$customerBtwNr</cbc:CompanyID>
      <cac:TaxScheme>
        <cbc:ID>VAT</cbc:ID>
      </cac:TaxScheme>
    </cac:PartyTaxScheme>
  </cac:AccountingCustomerParty>
  <cac:LegalMonetaryTotal>
    <cbc:PayableAmount currencyID="EUR">$totalAmount</cbc:PayableAmount>
  </cac:LegalMonetaryTotal>
</Invoice>
"@

    Set-Content -Path $OutputPath -Value $ublXml -Encoding UTF8

    Write-Host "UBL Invoice XML generated at $OutputPath"
}

$pdfContent = Read-PDFFile -PdfPath "C:\Users\MikeBijl\Git\mikebijl\UBL\2025-04 Managementvergoeding.pdf"

ConvertTo-UblInvoice -InvoiceText $pdfContent -OutputPath "C:\Users\MikeBijl\Git\mikebijl\UBL\2025-04 Managementvergoeding.xml"