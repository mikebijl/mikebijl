targetScope = 'tenant'

@description('Provide a prefix (max 10 characters, unique at tenant-scope) for the Management Group hierarchy and other resources created as part of Enterprise-scale.')
@maxLength(10)
param enterpriseScaleCompanyPrefix string

@maxLength(36)
param singlePlatformSubscriptionId string = ''

@allowed([
  'Audit'
  'Deny'
  'Disabled'
])
param enablePrivateSubnet string = 'Audit'

@description('The customer usage identifier used for telemetry purposes. The default value of False enables telemetry. The value of True disables telemetry.')
@allowed([
  'Yes'
  'No'
])
param telemetryOptOut string = 'No'

@description('If \'Yes\' is selected when also adding a subscription for management, ARM will assign two policies to enable auditing in your environment, into the Log Analytics workspace for platform monitoring. If \'No\', it will be ignored.')
@allowed([
  'Yes'
  'No'
])
param enableLogAnalytics string = 'No'

@allowed([
  'allLogs'
  'auditLogs'
])
param laCategory string = 'allLogs'
param retentionInDays string = ''
param enableSentinel string = 'Yes'

@description('Provide the subscription id of an existing, empty subscription you want to dedicate for management. If you don\'t want to bring a subscription, leave this parameter empty as is.')
@maxLength(36)
param managementSubscriptionId string = ''

@allowed([
  'Yes'
  'No'
])
param enableChangeTracking string = 'No'

@allowed([
  'Yes'
  'No'
])
param enableUpdateMgmt string = 'Yes'

@allowed([
  'Yes'
  'No'
])
param enableVmInsights string = 'Yes'

@description('If \'Yes\' is selected when also adding a subscription for management, ARM will assign two policies to enable auditing in your environment, into the Log Analytics workspace for platform monitoring. If \'No\', it will be ignored.')
@allowed([
  'Yes'
  'No'
])
param enableAsc string = 'No'

@description('Email address for Microsoft Defender for Cloud contact details.')
param emailContactAsc string = ''

@allowed([
  'DeployIfNotExists'
  'Disabled'
])
param enableAscForServers string = 'Disabled'

@allowed([
  'DeployIfNotExists'
  'Disabled'
])
param enableAscForServersVulnerabilityAssessments string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
])
param enableAscForOssDb string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
])
param enableAscForCosmosDbs string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
])
param enableAscForAppServices string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
])
param enableAscForStorage string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
])
param enableAscForSql string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
])
param enableAscForSqlOnVm string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
])
param enableAscForKeyVault string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
])
param enableAscForArm string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
])
param enableAscForApis string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
])
param enableAscForCspm string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
])
param enableAscForContainers string = 'Disabled'

@allowed([
  'Disabled'
  'DeployIfNotExists'
  'AuditIfNotExists'
])
param enableMDEndpoints string = 'Disabled'

@allowed([
  'Yes'
  'No'
])
param enableSecuritySolution string = 'Yes'

@description('If \'Yes\' is selected, ARM will assign a policy initiative to deploy alerting for Service Health in your environment. If \'No\', it will be ignored.')
param enableServiceHealth string = 'Yes'

@description('If \'Yes\' is selected, ARM will assign a policy initiative to deploy alerting for Service Health in your environment. If \'No\', it will be ignored.')
@maxLength(36)
param enableMonitorBaselines string = ''

@description('If \'Yes\' is selected, ARM will assign a policy initiative to deploy alerting for select connectivity resources in your environment. If \'No\', it will be ignored.')
@maxLength(36)
param enableMonitorConnectivity string = ''

@description('If \'Yes\' is selected, ARM will assign a policy initiative to deploy alerting for select identity resources in your environment. If \'No\', it will be ignored.')
@maxLength(36)
param enableMonitorIdentity string = ''

@description('If \'Yes\' is selected, ARM will assign a policy initiative to deploy alerting for select management resources in your environment. If \'No\', it will be ignored.')
@maxLength(36)
param enableMonitorManagement string = ''

@description('Name of the resource group to be created for monitoring resources in each subscription.')
@maxLength(90)
param monitorAlertsResourceGroup string = ''

@description('The name of the user assigned managed identity for monitoring purpose.')
@maxLength(90)
param userAssignedManagedIdentityName string = ''

@description('Email address for alerting purposes.')
param ambaAgEmailContact string = ''

@description('Service Hook URI for action group notifications.')
param ambaAgServiceHook string = ''

@description('ARM roles for action group notifications.')
param ambaAgArmRole array = []

@description('Assign HybridVM initiative')
param enableAMBAHybridVM string = 'Yes'

@description('Assign Key Management initiative')
param enableAMBAKeyManagement string = 'Yes'

@description('Assign Load Balancing initiative')
param enableAMBALoadBalancing string = 'Yes'

@description('Assign Network Changes initiative')
param enableAMBANetworkChanges string = 'Yes'

@description('Assign Recovery Services initiative')
param enableAMBARecoveryServices string = 'Yes'

@description('Assign Storage initiative')
param enableAMBAStorage string = 'Yes'

@description('Assign VM initiative')
param enableAMBAVM string = 'Yes'

@description('Assign Web initiative')
param enableAMBAWeb string = 'Yes'

@description('Provide the subscription id of an existing, empty subscription you want to dedicate for networking.')
@maxLength(36)
param connectivitySubscriptionId string = ''
param addressPrefix string = ''
param connectivityLocation string = deployment().location
param deployAVNM bool = false

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableDdoS string = 'No'

@allowed([
  'Yes'
  'No'
])
param enablePrivateDnsZones string = 'No'
param privateDnsZonesToDeploy array = []

@allowed([
  'Yes'
  'No'
])
param enableVpnGw string = 'No'

@allowed([
  'Yes'
  'No'
])
param enableVpnActiveActive string = 'No'
param gwRegionalOrAz string = ''
param gwRegionalSku string = ''
param gwAzSku string = ''
param vpnGateWayScaleUnit string = '1'
param subnetMaskForGw string = ''

@allowed([
  'Yes'
  'No'
])
param enableErGw string = 'No'
param erAzSku string = ''
param erRegionalSku string = ''
param erRegionalOrAz string = ''
param expressRouteScaleUnit string = '1'

@allowed([
  'vhub'
  'vwan'
  'nva'
  'No'
])
param enableHub string = 'No'

@allowed([
  'Yes'
  'No'
])
param enableAzFw string = 'No'

@allowed([
  'Yes'
  'No'
])
param enableAzFwDnsProxy string = 'No'

@allowed([
  'Basic'
  'Standard'
  'Premium'
])
param firewallSku string = 'Standard'
param firewallZones array = []
param subnetMaskForAzFw string = ''
param subnetMaskForAzFwMgmt string = ''

@allowed([
  'Yes'
  'No'
])
param enableVWANRoutingIntent string = 'No'

@description('Enable vWAN Routing Intent and Policy for Internet Traffic')
param internetTrafficRoutingPolicy bool = false

@description('Enable vWAN Routing Intent and Policy for Private Traffic')
param privateTrafficRoutingPolicy bool = false

@description('vWAN Hub Routing Preference')
param vWANHubRoutingPreference string = 'ExpressRoute'

@description('vWAN Hub Capacity')
param vWANHubCapacity string = '2'
param addressPrefixSecondary string = ''
param connectivityLocationSecondary string = deployment().location

@allowed([
  'Yes'
  'No'
])
param enablePrivateDnsZonesSecondary string = 'No'
param privateDnsZonesToDeploySecondary array = []

@allowed([
  'Yes'
  'No'
])
param enableVpnGwSecondary string = 'No'

@allowed([
  'Yes'
  'No'
])
param enableVpnActiveActiveSecondary string = 'No'
param gwRegionalOrAzSecondary string = ''
param gwRegionalSkuSecondary string = ''
param gwAzSkuSecondary string = ''
param vpnGateWayScaleUnitSecondary string = '1'
param subnetMaskForGwSecondary string = ''

@allowed([
  'Yes'
  'No'
])
param enableErGwSecondary string = 'No'
param erAzSkuSecondary string = ''
param erRegionalSkuSecondary string = ''
param erRegionalOrAzSecondary string = ''
param expressRouteScaleUnitSecondary string = '1'

@allowed([
  'Yes'
  'No'
])
param enableSecondaryRegion string = 'Yes'

@allowed([
  'vhub'
  'vwan'
  'nva'
  'No'
])
param enableHubSecondary string = 'No'

@allowed([
  'Yes'
  'No'
])
param enableAzFwSecondary string = 'No'

@allowed([
  'Yes'
  'No'
])
param enableAzFwDnsProxySecondary string = 'No'

@allowed([
  'Basic'
  'Standard'
  'Premium'
])
param firewallSkuSecondary string = 'Standard'
param firewallZonesSecondary array = []
param subnetMaskForAzFwSecondary string = ''
param subnetMaskForAzFwMgmtSecondary string = ''

@allowed([
  'Yes'
  'No'
])
param enableVWANRoutingIntentSecondary string = 'No'

@description('Enable vWAN Routing Intent and Policy for Internet Traffic')
param internetTrafficRoutingPolicySecondary bool = false

@description('Enable vWAN Routing Intent and Policy for Private Traffic')
param privateTrafficRoutingPolicySecondary bool = false

@description('vWAN Hub Routing Preference')
param vWANHubRoutingPreferenceSecondary string = 'ExpressRoute'

@description('vWAN Hub Capacity')
param vWANHubCapacitySecondary string = '2'

@description('Provide the subscription id of an existing, empty subscription you want to dedicate for identity.')
@maxLength(36)
param identitySubscriptionId string = ''

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denyMgmtPortsForIdentity string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denySubnetWithoutNsgForIdentity string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denyPipForIdentity string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableVmBackupForIdentity string = 'No'
param identityAddressPrefix string = ''
param identityAddressPrefixSecondary string = ''

@description('Provide the subscription ids for existing, empty subscriptions you want to move in as your first corp landing zones and connect to virtual networking hub.')
param corpConnectedLzSubscriptionId array = []

@description('Provide the subscription ids for existing, empty subscriptions you want to move in as your first corp landing zones.')
param corpLzSubscriptionId array = []

@description('Provide the subscription ids for existing, empty subscriptions you want to move in as your first online landing zones.')
param onlineLzSubscriptionId array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableLzDdoS string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denyPublicEndpoints string = 'No'

@allowed([
  'Yes'
  'No'
])
param denyPipOnNicForCorp string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enablePrivateDnsZonesForLzs string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableEncryptionInTransit string = 'No'

@description('If \'Yes\' is selected, policy will be assigned to enforce VM monitoring.')
@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableVmMonitoring string = 'No'

@description('If \'Yes\' is selected, policy will be assigned to enforce VMSS monitoring.')
@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableVmssMonitoring string = 'No'

@description('If \'Yes\' is selected, policy will be assigned to enforce Hybrid VM monitoring.')
@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableVmHybridMonitoring string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denyAksPrivileged string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denyAksPrivilegedEscalation string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denyClassicResources string = 'Yes'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denyVMUnmanagedDisk string = 'Yes'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denyHttpIngressForAks string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableVmBackup string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denyMgmtPorts string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denySubnetWithoutNsg string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denyIpForwarding string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableSqlEncryption string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableSqlThreat string = 'No'

@allowed([
  'Yes'
  'No'
])
param enableDecommissioned string = 'No'

@allowed([
  'Yes'
  'No'
])
param enableSandbox string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableSqlAudit string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableStorageHttps string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enforceKvGuardrails string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enforceBackup string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enforceKvGuardrailsPlat string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enforceBackupPlat string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param denyHybridNetworking string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param auditPeDnsZones string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param auditAppGwWaf string = 'No'

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enforceACSB string = 'No'

@description('Configure the count of empty deployments used to introduce a delay after policy deployment. Used to increase reliability of deployment, but can be reduced when re-deploying to an existing environment.')
@minValue(1)
@maxValue(60)
param delayCount int = 55

@description('The current date and time using the utcNow function. Used for deployment name uniqueness')
param currentDateTimeUtcNow string = utcNow()

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsCMKInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for API Management.')
param wsCMKSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsAPIMInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for API Management.')
param wsAPIMSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsAppServicesInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for App Services.')
param wsAppServicesSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsAutomationInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Automation Accounts.')
param wsAutomationSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsBotServiceInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Automation Accounts.')
param wsBotServiceSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsCognitiveServicesInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Cognitive Services.')
param wsCognitiveServicesSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsComputeInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Compute.')
param wsComputeSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsContainerAppsInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Container Apps.')
param wsContainerAppsSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsContainerInstanceInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Container Instance.')
param wsContainerInstanceSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsContainerRegistryInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Container Registry.')
param wsContainerRegistrySelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsCosmosDbInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Cosmos DB.')
param wsCosmosDbSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsDataExplorerInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Data Explorer.')
param wsDataExplorerSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsDataFactoryInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Data Factory.')
param wsDataFactorySelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsEventGridInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Event Grid.')
param wsEventGridSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsEventHubInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Event Hub.')
param wsEventHubSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsKeyVaultSupInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Key Vault.')
param wsKeyVaultSupSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsKubernetesInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Kubernetes.')
param wsKubernetesSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsMachineLearningInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Machine Learning.')
param wsMachineLearningSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsMySQLInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Machine Learning.')
param wsMySQLSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsNetworkInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Network and Networking services.')
param wsNetworkSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsOpenAIInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Open AI.')
param wsOpenAISelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsPostGreSQLInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for PostGreSQL.')
param wsPostGreSQLSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsServiceBusInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Service Bus.')
param wsServiceBusSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsSQLInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for SQL.')
param wsSQLSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsStorageInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Storage.')
param wsStorageSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsSynapseInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Synapse.')
param wsSynapseSelectorMG array = []

@allowed([
  'Yes'
  'Audit'
  'No'
])
param enableWsVirtualDesktopInitiatives string = 'No'

@description('Array of management groups to assign the Workload Specific Compliance initiative for Virtual Desktop.')
param wsVirtualDesktopSelectorMG array = []

@description('Array of objects containing built-in Regulatory Compliance policies to assign to specified Management Groups')
param regulatoryComplianceInitiativesToAssign array = []
param regCompPolParAusGovIsmRestrictedVmAdminsExclude string = ''
param regCompPolParAusGovIsmRestrictedResourceTypes string = 'all'
param regCompPolParMPAACertificateThumb string = ''
param regCompPolParMPAAApplicationName string = ''
param regCompPolParMPAAStoragePrefix string = ''
param regCompPolParMPAAResGroupPrefix string = ''
param regCompPolParMPAARBatchMetricName string = ''
param regCompPolParSovBaseConfRegions array = []
param regCompPolParSovBaseGlobalRegions array = []
param regCompPolParSwift2020VmAdminsInclude string = ''
param regCompPolParSwift2020DomainFqdn string = ''
param regCompPolParCanadaFedPbmmVmAdminsInclude string = ''
param regCompPolParCanadaFedPbmmVmAdminsExclude string = ''
param regCompPolParCisV2KeyVaultKeysRotateDays int = 90
param regCompPolParCmmcL3VmAdminsInclude string = ''
param regCompPolParCmmcL3VmAdminsExclude string = ''
param regCompPolParHiTrustHipaaApplicationName string = ''
param regCompPolParHiTrustHipaaStoragePrefix string = ''
param regCompPolParHiTrustHipaaResGroupPrefix string = ''
param regCompPolParHiTrustHipaaCertificateThumb string = ''
param regCompPolParIrs1075Sep2016VmAdminsExclude string = ''
param regCompPolParIrs1075Sep2016VmAdminsInclude string = ''
param regCompPolParNZIsmRestrictedVmAdminsInclude string = ''
param regCompPolParNZIsmRestrictedVmAdminsExclude string = ''
param regCompPolParNistSp800171R2VmAdminsExclude string = ''
param regCompPolParNistSp800171R2VmAdminsInclude string = ''
param regCompPolParSoc2Type2AllowedRegistries string = '^[^\\/]+\\.azurecr\\.io\\/.+$'
param regCompPolParSoc2Type2MaxCpuUnits string = '200m'
param regCompPolParSoc2Type2MaxMemoryBytes string = '1Gi'
param listOfResourceTypesDisallowedForDeletion array = [
  'microsoft.ManagedIdentity/UserAssignedIdentities'
]

var mgmtGroups = {
  eslzRoot: enterpriseScaleCompanyPrefix
  platform: '${enterpriseScaleCompanyPrefix}-platform'
  management: '${enterpriseScaleCompanyPrefix}-management'
  connectivity: '${enterpriseScaleCompanyPrefix}-connectivity'
  identity: '${enterpriseScaleCompanyPrefix}-identity'
  lzs: '${enterpriseScaleCompanyPrefix}-landingzones'
  corp: '${enterpriseScaleCompanyPrefix}-corp'
  online: '${enterpriseScaleCompanyPrefix}-online'
  decommissioned: '${enterpriseScaleCompanyPrefix}-decommissioned'
  sandboxes: '${enterpriseScaleCompanyPrefix}-sandboxes'
}
var mgmtGroupsLite = {
  eslzRoot: enterpriseScaleCompanyPrefix
  platform: '${enterpriseScaleCompanyPrefix}-platform'
  lzs: '${enterpriseScaleCompanyPrefix}-landingzones'
  corp: '${enterpriseScaleCompanyPrefix}-corp'
  online: '${enterpriseScaleCompanyPrefix}-online'
  decommissioned: '${enterpriseScaleCompanyPrefix}-decommissioned'
  sandboxes: '${enterpriseScaleCompanyPrefix}-sandboxes'
}
var scopes = {
  eslzRootManagementGroup: tenantResourceId('Microsoft.Management/managementGroups/', mgmtGroups.eslzRoot)
  platformManagementGroup: tenantResourceId('Microsoft.Management/managementGroups/', mgmtGroups.platform)
  managementManagementGroup: tenantResourceId('Microsoft.Management/managementGroups/', mgmtGroups.management)
  connectivityManagementGroup: tenantResourceId('Microsoft.Management/managementGroups/', mgmtGroups.connectivity)
  identityManagementGroup: tenantResourceId('Microsoft.Management/managementGroups/', mgmtGroups.identity)
  lzsManagementGroup: tenantResourceId('Microsoft.Management/managementGroups/', mgmtGroups.lzs)
  corpManagementGroup: tenantResourceId('Microsoft.Management/managementGroups/', mgmtGroups.corp)
  onlineManagementGroup: tenantResourceId('Microsoft.Management/managementGroups/', mgmtGroups.online)
  decommissionedManagementGroup: tenantResourceId('Microsoft.Management/managementGroups/', mgmtGroups.decommissioned)
  sandboxManagementGroup: tenantResourceId('Microsoft.Management/managementGroups/', mgmtGroups.sandboxes)
}
var rootUris = {
  monitorRepo: 'https://raw.githubusercontent.com/Azure/azure-monitor-baseline-alerts/2025-04-04/'
}
var azPrivateDnsPolicyAssignmentMapping = {
  'https://management.azure.com/': 'managementGroupTemplates/policyAssignments/DINE-PrivateDNSZonesPolicyAssignment.json'
  'https://management.usgovcloudapi.net': 'managementGroupTemplates/policyAssignments/gov/fairfaxDINE-PrivateDNSZonesPolicyAssignment.json'
}
var azPrivateDnsPolicyAssignment = azPrivateDnsPolicyAssignmentMapping[environment().resourceManager]
var deploymentUris = {
  managementGroups: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/mgmtGroupStructure/mgmtGroups.json'
  )
  managementGroupsLite: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/mgmtGroupStructure/mgmtGroupsLite.json'
  )
  roleDefinitions: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/roleDefinitions/customRoleDefinitions.json'
  )
  policyDefinitions: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyDefinitions/policies.json'
  )
  initiativeDefinitions: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyDefinitions/initiatives.json'
  )
  preRequisites: uri(deployment().properties.templateLink.uri, 'prerequisites/deployPrerequisites.json')
  avnmConnectivityHub: uri(deployment().properties.templateLink.uri, 'subscriptionTemplates/avnmConfiguration.json')
  avnmPolicy: uri(deployment().properties.templateLink.uri, 'subscriptionTemplates/avnmPolicy.json')
  vnetConnectivityHub: uri(deployment().properties.templateLink.uri, 'subscriptionTemplates/hubSpoke-connectivity.json')
  vwanConnectivityHub: uri(deployment().properties.templateLink.uri, 'subscriptionTemplates/vwan-connectivity.json')
  nvaConnectivityHub: uri(
    deployment().properties.templateLink.uri,
    'subscriptionTemplates/nvaHubSpoke-connectivity.json'
  )
  subscriptionPlacement: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/subscriptionOrganization/subscriptionOrganization.json'
  )
  monitoring: uri(deployment().properties.templateLink.uri, 'subscriptionTemplates/logAnalyticsWorkspace.json')
  dataCollectionRuleVmInsights: uri(
    deployment().properties.templateLink.uri,
    'resourceGroupTemplates/dataCollectionRule-VmInsights.json'
  )
  userAssignedIdentity: uri(
    deployment().properties.templateLink.uri,
    'resourceGroupTemplates/userAssignedIdentity.json'
  )
  resourceGroup: uri(deployment().properties.templateLink.uri, 'subscriptionTemplates/resourceGroup.json')
  ddosProtection: uri(deployment().properties.templateLink.uri, 'resourceGroupTemplates/ddosProtection.json')
  asbPolicyInitiative: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-ASBPolicyAssignment.json'
  )
  regulatoryComplianceInitiatives: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-RegulatoryCompliancePolicyAssignment.json'
  )
  resourceDiagnosticsInitiative: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-ResourceDiagnosticsPolicyAssignment.json'
  )
  activityDiagnosticsPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-ActivityLogPolicyAssignment.json'
  )
  mdfcConfigPolicyInitiative: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-MDFCConfigPolicyAssignment.json'
  )
  mdEndpointsPolicyInitiative: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-MDEndpointsPolicyAssignment.json'
  )
  mdEndpointsAMAPolicyInitiative: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-MDEndpointsAMAPolicyAssignment.json'
  )
  atpOssDbPolicyInitiative: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-AtpOssDbPolicyAssignment.json'
  )
  atpSqlDbPolicyInitiative: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-AtpSqlDbPolicyAssignment.json'
  )
  azVmMonitorPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-VMMonitoringPolicyAssignment.json'
  )
  azVmssMonitorPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-VMSSMonitoringPolicyAssignment.json'
  )
  azVmHybridMonitorPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-VMHybridMonitoringPolicyAssignment.json'
  )
  azVmBackupPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-VMBackupPolicyAssignment.json'
  )
  aksPrivEscalationPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-AksPrivEscalationPolicyAssignment.json'
  )
  aksPrivilegedPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-AksPrivilegedPolicyAssignment.json'
  )
  TlsSslPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-DINE-APPEND-TLS-SSL-PolicyAssignment.json'
  )
  aksHttpsPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-AksWithoutHttpsPolicyAssignment.json'
  )
  ipFwdPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-IPForwardingPolicyAssignment.json'
  )
  publicEndpointPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-PublicEndpointPolicyAssignment.json'
  )
  privateDnsZonePolicyAssignment: uri(deployment().properties.templateLink.uri, azPrivateDnsPolicyAssignment)
  pipPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-PublicIpAddressPolicyAssignment.json'
  )
  pipOnNicPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-PublicIpAddressOnNICPolicyAssignment.json'
  )
  mgmtFromInternetPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-MgmtPortsFromInternetPolicyAssignment.json'
  )
  storageHttpsPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-StorageWithoutHttpsPolicyAssignment.json'
  )
  kvGuardrailsPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsKeyVaultPolicyAssignment.json'
  )
  backupPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-BackupPolicyAssignment.json'
  )
  denyHybridNetworkingPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-HybridNetworkingPolicyAssignment.json'
  )
  auditPeDnsZonesPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/AUDIT-PeDnsZonesPolicyAssignment.json'
  )
  auditAppGwWafPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/AUDIT-AppGwWafPolicyAssignment.json'
  )
  enforceACSBPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-AcsbPolicyAssignment.json'
  )
  subnetNsgPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-SubnetWithoutNsgPolicyAssignment.json'
  )
  sqlAuditPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-SQLAuditingPolicyAssignment.json'
  )
  sqlEncryptionPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-SQLEncryptionPolicyAssignment.json'
  )
  sqlThreatPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-SQLThreatPolicyAssignment.json'
  )
  decommissionPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-ALZ-DecommissionedPolicyAssignment.json'
  )
  sandboxPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-ALZ-SandboxPolicyAssignment.json'
  )
  ddosPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/MODIFY-DDoSPolicyAssignment.json'
  )
  corpVnetPeering: uri(deployment().properties.templateLink.uri, 'subscriptionTemplates/vnetPeering.json')
  corpVwanPeering: uri(deployment().properties.templateLink.uri, 'subscriptionTemplates/vnetPeeringVwan.json')
  hubVnetPeering: uri(deployment().properties.templateLink.uri, 'subscriptionTemplates/vnetPeeringHub.json')
  hubVnetRouting: uri(deployment().properties.templateLink.uri, 'resourceGroupTemplates/vnetRouteTable.json')
  privateDnsZones: uri(deployment().properties.templateLink.uri, 'resourceGroupTemplates/privateDnsZones.json')
  roleAssignments: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/roleAssignments/roleAssignment.json'
  )
  classicResourcesPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-ClassicResourceTypesPolicyAssignment.json'
  )
  govMdfcPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/gov/fairfaxDINE-MDFCConfigPolicyAssignment.json'
  )
  costOptimizationPolicyInitiative: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/AUDIT-UnusedResourcesPolicyAssignment.json'
  )
  trustedLaunchPolicyInitiative: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/AUDIT-TrustedLaunchPolicyAssignment.json'
  )
  zoneResilientPolicyInitiative: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/AUDIT-ZoneResilientPolicyAssignment.json'
  )
  resourceRgLocationPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/AUDIT-ResourceRGLocationPolicyAssignment.json'
  )
  VMUnmanagedDiskPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DENY-VMUnmanagedDiskPolicyAssignment.json'
  )
  diagnosticSettingsForManagementGroups: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/diagSettingsMGs/diagSettingsMGs.json'
  )
  privateSubnetPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-SubnetPrivatePolicyAssignment.json'
  )
  monitorPolicyDefinitions: uri(rootUris.monitorRepo, 'patterns/alz/alzArm.json')
  azureUpdateManagerPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/MODIFY-AUM-CheckUpdatesPolicyAssignment.json'
  )
  dataCollectionRuleChangeTracking: uri(
    deployment().properties.templateLink.uri,
    'resourceGroupTemplates/dataCollectionRule-CT.json'
  )
  ChangeTrackingVmPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-ChangeTrackingVMPolicyAssignment.json'
  )
  ChangeTrackingVmArcPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-ChangeTrackingVMArcPolicyAssignment.json'
  )
  ChangeTrackingVmssPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-ChangeTrackingVMSSPolicyAssignment.json'
  )
  MDFCDefenderSqlAma: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DINE-MDFCDefenderSqlAMAPolicyAssignment.json'
  )
  dataCollectionRuleMdfcDefenderSQL: uri(
    deployment().properties.templateLink.uri,
    'resourceGroupTemplates/dataCollectionRule-DefenderSQL.json'
  )
  MDFCSubscriptionEnablement: uri(
    deployment().properties.templateLink.uri,
    'subscriptionTemplates/mdfcConfiguration.json'
  )
  wsCMKPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-EncryptionCMKPolicyAssignment.json'
  )
  wsAPIMPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsAPIMPolicyAssignment.json'
  )
  wsAppServicesPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsAppServicesPolicyAssignment.json'
  )
  wsAutomationPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsAutomationPolicyAssignment.json'
  )
  wsBotServicePolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsBotServicePolicyAssignment.json'
  )
  wsCognitiveServicesPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsCognitiveServicesPolicyAssignment.json'
  )
  wsComputePolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsComputePolicyAssignment.json'
  )
  wsContainerAppsPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsContainerAppsPolicyAssignment.json'
  )
  wsContainerInstancePolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsContainerInstancePolicyAssignment.json'
  )
  wsContainerRegistryPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsContainerRegistryPolicyAssignment.json'
  )
  wsCosmosDbPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsCosmosDbPolicyAssignment.json'
  )
  wsDataExplorerPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsDataExplorerPolicyAssignment.json'
  )
  wsDataFactoryPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsDataFactoryPolicyAssignment.json'
  )
  wsEventGridPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsEventGridPolicyAssignment.json'
  )
  wsEventHubPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsEventHubPolicyAssignment.json'
  )
  wsKeyVaultSupPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsKeyVaultSupPolicyAssignment.json'
  )
  wsKubernetesPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsKubernetesPolicyAssignment.json'
  )
  wsMachineLearningPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsMachineLearningPolicyAssignment.json'
  )
  wsMySQLPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsMySQLPolicyAssignment.json'
  )
  wsNetworkPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsNetworkPolicyAssignment.json'
  )
  wsOpenAIPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsOpenAIPolicyAssignment.json'
  )
  wsPostGreSQLPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsPostGreSQLPolicyAssignment.json'
  )
  wsServiceBusPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsServiceBusPolicyAssignment.json'
  )
  wsSQLPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsSQLPolicyAssignment.json'
  )
  wsStoragePolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsStoragePolicyAssignment.json'
  )
  wsSynapsePolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsSynapsePolicyAssignment.json'
  )
  wsVirtualDesktopPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/ENFORCE-GuardrailsVirtualDesktopPolicyAssignment.json'
  )
  denyActionDeleteUAMIAMAPolicyAssignment: uri(
    deployment().properties.templateLink.uri,
    'managementGroupTemplates/policyAssignments/DenyAction-DeleteUAMIAMAPolicyAssignment.json'
  )
}
var deploymentSuffix = '-${deployment().location}-${guid(enterpriseScaleCompanyPrefix,currentDateTimeUtcNow)}'
var deploymentNames = {
  mgmtGroupDeploymentName: take('alz-Mgs${deploymentSuffix}', 64)
  mgmtSubscriptionPlacement: take('alz-MgmtSub${deploymentSuffix}', 64)
  corpPeeringDeploymentName: take('alz-CorpPeering${deploymentSuffix}', 60)
  hubPeeringDeploymentName: take('alz-HubPeering${deploymentSuffix}', 60)
  hubPeering2DeploymentName: take('alz-HubPeering2${deploymentSuffix}', 60)
  connectivitySubscriptionPlacement: take('alz-ConnectivitySub${deploymentSuffix}', 64)
  identitySubscriptionPlacement: take('alz-IdentitySub${deploymentSuffix}', 64)
  roleDefsDeploymentName: take('alz-RoleDefs${deploymentSuffix}', 64)
  policyDeploymentName: take('alz-Policy${deploymentSuffix}', 64)
  initiativeDeploymentName: take('alz-PolicySet${deploymentSuffix}', 64)
  monitorPolicyDeploymentName: take('alz-MonitorPolicy${deploymentSuffix}', 64)
  ddosRgDeploymentName: take('alz-DDoSRg${deploymentSuffix}', 64)
  ddosDeploymentName: take('alz-DDoS${deploymentSuffix}', 64)
  ddosHubPolicyDeploymentName: take('alz-DDoSHubPolicy${deploymentSuffix}', 64)
  ddosLzPolicyDeploymentName: take('alz-DDoSLZPolicy${deploymentSuffix}', 64)
  monitoringDeploymentName: take('alz-Monitoring${deploymentSuffix}', 64)
  dataCollectionRuleVmInsightsDeploymentName: take('alz-DataCollectionRuleVmInsights${deploymentSuffix}', 64)
  monitorConnectivityDeploymentName: take('alz-ConnectivityMonitor${deploymentSuffix}', 64)
  monitorIdentityDeploymentName: take('alz-IdentityMonitor${deploymentSuffix}', 64)
  monitorManagementDeploymentName: take('alz-ManagementMonitor${deploymentSuffix}', 64)
  monitorLandingZoneDeploymentName: take('alz-LandingZoneMonitor${deploymentSuffix}', 64)
  monitorServiceHealthDeploymentName: take('alz-SvcHealthMonitor${deploymentSuffix}', 64)
  asbPolicyDeploymentName: take('alz-ASB${deploymentSuffix}', 64)
  regulatoryComplianceInitiativesToAssignDeploymentName: take(
    'alz-RegComp-${deployment().location}-${uniqueString(currentDateTimeUtcNow)}-',
    64
  )
  resourceDiagnosticsPolicyDeploymentName: take('alz-ResourceDiagnostics${deploymentSuffix}', 64)
  activityDiagnosticsPolicyDeploymentName: take('alz-ActivityDiagnostics${deploymentSuffix}', 64)
  ascPolicyDeploymentName: take('alz-ASC${deploymentSuffix}', 64)
  atpOssDbPolicyDeploymentName: take('alz-AtpOssDb${deploymentSuffix}', 64)
  atpSqlDbPolicyDeploymentName: take('alz-AtpSqlDb${deploymentSuffix}', 64)
  ascGovPolicyDeploymentName: take('alz-Gov-ASC${deploymentSuffix}', 64)
  avnmConnectivityHubDeploymentName: take('alz-AVNM${deploymentSuffix}', 64)
  avnmPolicyDeploymentName: take('alz-AVNMPolicy${deploymentSuffix}', 64)
  vnetConnectivityHubDeploymentName: take('alz-hubSpoke${deploymentSuffix}', 64)
  vwanConnectivityHubDeploymentName: take('alz-VWanHub${deploymentSuffix}', 64)
  vnetConnectivityHub2DeploymentName: take('alz-hubSpoke2${deploymentSuffix}', 64)
  vnetConnectivityRouteTableDeploymentName: take('alz-HubRoute${deploymentSuffix}', 64)
  vnetConnectivityRouteTable2DeploymentName: take('alz-HubRoute2${deploymentSuffix}', 64)
  nvaConnectivityHubDeploymentName: take('alz-nvaHub${deploymentSuffix}', 64)
  nvaConnectivityHub2DeploymentName: take('alz-nvaHub2${deploymentSuffix}', 64)
  azVmMonitorPolicyDeploymentName: take('alz-AzVmMonitor${deploymentSuffix}', 64)
  azVmssMonitorPolicyDeploymentName: take('alz-AzVmssMonitor${deploymentSuffix}', 64)
  azVmHybridMonitorPolicyDeploymentName: take('alz-AzVmHybridMonitor${deploymentSuffix}', 64)
  azBackupLzPolicyDeploymentName: take('alz-AzBackupLz${deploymentSuffix}', 64)
  azBackupIdentityPolicyDeploymentName: take('alz-AzBackupIdentity${deploymentSuffix}', 64)
  aksPrivEscalationPolicyDeploymentName: take('alz-AksPrivEsc${deploymentSuffix}', 64)
  aksHttpsPolicyDeploymentName: take('alz-AksHttps${deploymentSuffix}', 64)
  aksPrivilegedPolicyDeploymentName: take('alz-AksPrivileged${deploymentSuffix}', 64)
  TlsSslPolicyDeploymentName: take('alz-TlsSsl${deploymentSuffix}', 64)
  ipFwPolicyDeploymentName: take('alz-IPFwd${deploymentSuffix}', 64)
  publicEndpointPolicyDeploymentName: take('alz-PEndpoint${deploymentSuffix}', 64)
  privateDnsPolicyDeploymentName: take('alz-PrivDNSAssignment${deploymentSuffix}', 64)
  pipPolicyDeploymentName: take('alz-PIP${deploymentSuffix}', 64)
  pipOnNicPolicyDeploymentName: take('alz-PipOnNic${deploymentSuffix}', 64)
  mgmtFromInternetPolicyDeploymentName: take('alz-MgmtPorts${deploymentSuffix}', 64)
  mgmtFromInternetIdentityPolicyDeploymentName: take('alz-MgmtPortsIdentity${deploymentSuffix}', 64)
  storageHttpsPolicyDeploymentName: take('alz-StorageHttps${deploymentSuffix}', 64)
  kvGuardrailsPolicyDeploymentName: take('alz-KvGuardrails${deploymentSuffix}', 64)
  kvGuardrailsPolicyPlatDeploymentName: take('alz-KvGuardrailsPlat${deploymentSuffix}', 64)
  backupPolicyDeploymentName: take('alz-Backup${deploymentSuffix}', 64)
  backupPlatPolicyDeploymentName: take('alz-BackupPlat${deploymentSuffix}', 64)
  denyHybridNetworkingPolicyDeploymentName: take('alz-DenyHybridNetworking${deploymentSuffix}', 64)
  auditPeDnsZonesPolicyDeploymentName: take('alz-AuditPeDnsZones${deploymentSuffix}', 64)
  auditAppGwWafPolicyDeploymentName: take('alz-AppGwWaf${deploymentSuffix}', 64)
  enforceACSBPolicyDeploymentName: take('alz-Acsb${deploymentSuffix}', 64)
  subnetNsgPolicyDeploymentName: take('alz-SubnetNsg${deploymentSuffix}', 64)
  subnetNsgIdentityPolicyDeploymentName: take('alz-SubnetNsgIdentity${deploymentSuffix}', 64)
  sqlAuditPolicyDeploymentName: take('alz-SqlAudit${deploymentSuffix}', 64)
  sqlAuditRoleAssignmentDeploymentName1: take('alz-SqlAuditRbac1${deploymentSuffix}', 64)
  sqlAuditRoleAssignmentDeploymentName2: take('alz-SqlAuditRbac2${deploymentSuffix}', 64)
  sqlEncryptionPolicyDeploymentName: take('alz-SqlEncrypt${deploymentSuffix}', 64)
  sqlThreatPolicyDeploymentName: take('alz-SqlThreat${deploymentSuffix}', 64)
  decommissionPolicyDeploymentName: take('alz-DecommissionPol${deploymentSuffix}', 64)
  sandboxPolicyDeploymentName: take('alz-SandboxPol${deploymentSuffix}', 64)
  onlineLzSubs: take('alz-OnlineLzs${deploymentSuffix}', 60)
  corpLzSubs: take('alz-CorpLzs${deploymentSuffix}', 60)
  corpConnectedMoveLzSubs: take('alz-CorpConnLzs${deploymentSuffix}', 50)
  corpConnectedLzSubs: take('alz-CorpPeering${deploymentSuffix}', 50)
  privateDnsZoneRgDeploymentName: take('alz-PrivDnsRg${deploymentSuffix}', 64)
  privateDnsZonesDeploymentName: take('alz-PrivDNSZones${deploymentSuffix}', 35)
  privateDnsZoneRg2DeploymentName: take('alz-PrivDnsRg2${deploymentSuffix}', 64)
  privateDnsZones2DeploymentName: take('alz-PrivDNSZones2${deploymentSuffix}', 35)
  dnsZoneRoleAssignmentDeploymentName: take('alz-DNSZoneRole${deploymentSuffix}', 64)
  identityPeeringDeploymentName: take('alz-IDPeering${deploymentSuffix}', 64)
  identityPeering2DeploymentName: take('alz-IDPeering2${deploymentSuffix}', 64)
  identityVwanPeeringDeploymentName: take('alz-IDVwanPeering${deploymentSuffix}', 64)
  identityVwanPeering2DeploymentName: take('alz-IDVwanPeering2${deploymentSuffix}', 64)
  mdEndpointsDeploymentName: take('alz-MDEndpoints${deploymentSuffix}', 64)
  mdEndpointsAMADeploymentName: take('alz-MDEndpointsAMA${deploymentSuffix}', 64)
  corpConnectedLzVwanSubs: take('alz-CorpConnLzsVwan${deploymentSuffix}', 50)
  privateSubnetDeploymentName: take('alz-pvtSubnet${deploymentSuffix}', 64)
  pidCuaDeploymentName: take(
    'pid-${CuaId}-${uniqueString(deployment().location,enterpriseScaleCompanyPrefix,currentDateTimeUtcNow)}',
    64
  )
  denyClassicResourcePolicyDeploymentName: take('alz-NoClassicResource${deploymentSuffix}', 64)
  costOptimizationDeploymentName: take('alz-CostOptimization${deploymentSuffix}', 64)
  trustedLaunchDeploymentName: take('alz-TrustedLaunch${deploymentSuffix}', 64)
  zoneResilientDeploymentName: take('alz-ZoneResilient${deploymentSuffix}', 64)
  resourceRgLocationDeploymentName: take('alz-ResourceRGLoc${deploymentSuffix}', 64)
  denyVMUnmanagedDiskPolicyDeploymentName: take('alz-NoUnmanagedDiskResource${deploymentSuffix}', 64)
  ztnPhase1PidCuaDeploymentName: take(
    'pid-${ztnPhase1CuaId}-${uniqueString(deployment().location,enterpriseScaleCompanyPrefix,currentDateTimeUtcNow,(connectivitySubscriptionId??singlePlatformSubscriptionId))}-ztnp1',
    64
  )
  ambaPortalPidCuaDeploymentName: take(
    'pid-${ambaPortalCuaId}-${uniqueString(deployment().location,enterpriseScaleCompanyPrefix,currentDateTimeUtcNow,(connectivitySubscriptionId??singlePlatformSubscriptionId))}-ztnp1',
    64
  )
  pidCuaDeploymentNameSecondaryRegion: take(
    'pid-${CuaIdSecondaryRegion}-${uniqueString(deployment().location,enterpriseScaleCompanyPrefix,currentDateTimeUtcNow)}',
    64
  )
  diagnosticSettingsForMGsDeploymentName: take('alz-DiagSettingsMGs${deploymentSuffix}', 64)
  userAssignedIdentityDeploymentName: take('alz-UserAssignedIdentity${deploymentSuffix}', 60)
  azureUpdateManagerPolicyDeploymentName: take('alz-AzureUpdateManager${deploymentSuffix}', 64)
  dataCollectionRuleChangeTrackingDeploymentName: take('alz-DataCollectionRuleChangeTracking${deploymentSuffix}', 64)
  ChangeTrackingVmDeploymentName: take('alz-ChangeTracking-VM${deploymentSuffix}', 64)
  ChangeTrackingVmArcDeploymentName: take('alz-ChangeTracking-VMArc${deploymentSuffix}', 64)
  ChangeTrackingVmssDeploymentName: take('alz-ChangeTracking-VMSS${deploymentSuffix}', 64)
  MDFCDefenderSqlAmaDeploymentName: take('alz-MDFCDefenderForSqlAma${deploymentSuffix}', 64)
  dataCollectionRuleMdfcDefenderSQLDeploymentName: take('alz-DataCollectionRuleDefenderSQL${deploymentSuffix}', 64)
  MDFCSubscriptionEnableDeploymentName: take('alz-MDFCSubEnable${deploymentSuffix}', 62)
  pidCuaDeploymentNameSinglePlatformSub: take(
    'pid-${CuaIdSinglePlatformSub}-${uniqueString(deployment().location,enterpriseScaleCompanyPrefix,currentDateTimeUtcNow)}',
    64
  )
  pidCuaDeploymentNameMultiPlatformSubs: take(
    'pid-${CuaIdMultiPlatformSubs}-${uniqueString(deployment().location,enterpriseScaleCompanyPrefix,currentDateTimeUtcNow)}',
    64
  )
  pidCuaDeploymentNameNetworkingNone: take(
    'pid-${CuaIdNetworkingNone}-${uniqueString(deployment().location,enterpriseScaleCompanyPrefix,currentDateTimeUtcNow)}',
    64
  )
  pidCuaDeploymentNameNetworkingHubSpoke: take(
    'pid-${CuaIdNetworkingHubSpoke}-${uniqueString(deployment().location,enterpriseScaleCompanyPrefix,currentDateTimeUtcNow)}',
    64
  )
  pidCuaDeploymentNameNetworkingVirtualWan: take(
    'pid-${CuaIdNetworkingVirtualWan}-${uniqueString(deployment().location,enterpriseScaleCompanyPrefix,currentDateTimeUtcNow)}',
    64
  )
  denyActionDeleteUAMIAMAPolicyDeploymentName: take('alz-DenyActionDeleteUAMI${deploymentSuffix}', 64)
  wsCMKDeploymentName: take('alz-wsCMK${deploymentSuffix}', 35)
  wsAPIMDeploymentName: take('alz-wsAPIM${deploymentSuffix}', 35)
  wsAppServicesDeploymentName: take('alz-wsAppService${deploymentSuffix}', 35)
  wsAutomationDeploymentName: take('alz-wsAutomation${deploymentSuffix}', 35)
  wsBotServiceDeploymentName: take('alz-wsBotService${deploymentSuffix}', 35)
  wsCognitiveServicesDeploymentName: take('alz-wsCognitiveServices${deploymentSuffix}', 35)
  wsComputeDeploymentName: take('alz-wsCompute${deploymentSuffix}', 35)
  wsContainerAppsDeploymentName: take('alz-wsContainerApps${deploymentSuffix}', 35)
  wsContainerInstanceDeploymentName: take('alz-wsContainerInstance${deploymentSuffix}', 35)
  wsContainerRegistryDeploymentName: take('alz-wsContainerRegistry${deploymentSuffix}', 35)
  wsCosmosDbDeploymentName: take('alz-wsCosmosDb${deploymentSuffix}', 35)
  wsDataExplorerDeploymentName: take('alz-wsDataExplorer${deploymentSuffix}', 35)
  wsDataFactoryDeploymentName: take('alz-wsDataFactory${deploymentSuffix}', 35)
  wsEventGridDeploymentName: take('alz-wsEventGrid${deploymentSuffix}', 35)
  wsEventHubDeploymentName: take('alz-wsEventHub${deploymentSuffix}', 35)
  wsKeyVaultSupDeploymentName: take('alz-wsKeyVaultSup${deploymentSuffix}', 35)
  wsKubernetesDeploymentName: take('alz-wsKubernetes${deploymentSuffix}', 35)
  wsMachineLearningDeploymentName: take('alz-wsMachineLearning${deploymentSuffix}', 35)
  wsMySQLDeploymentName: take('alz-wsMySQL${deploymentSuffix}', 35)
  wsNetworkDeploymentName: take('alz-wsNetwork${deploymentSuffix}', 35)
  wsOpenAIDeploymentName: take('alz-wsOpenAI${deploymentSuffix}', 35)
  wsPostGreSQLDeploymentName: take('alz-wsPostGreSQL${deploymentSuffix}', 35)
  wsServiceBusDeploymentName: take('alz-wsServiceBus${deploymentSuffix}', 35)
  wsSQLDeploymentName: take('alz-wsSQL${deploymentSuffix}', 35)
  wsStorageDeploymentName: take('alz-wsStorage${deploymentSuffix}', 35)
  wsSynapseDeploymentName: take('alz-wsSynapse${deploymentSuffix}', 35)
  wsVirtualDesktopDeploymentName: take('alz-wsVirtualDesktop${deploymentSuffix}', 35)
}
var esLiteDeploymentNames = {
  mgmtGroupLiteDeploymentName: take('alz-MgsLite${deploymentSuffix}', 64)
  mgmtFromInternetIdentityLitePolicyDeploymentName: take('alz-MgmtIdentity${deploymentSuffix}', 64)
  azBackupIdentityLitePolicyDeploymentName: take('alz-AzBackupIdentity${deploymentSuffix}', 64)
  subnetNsgIdentityLitePolicyDeploymentName: take('alz-SubnetNsgIdentity${deploymentSuffix}', 64)
  monitoringLiteDeploymentName: take('alz-MonitoringLite${deploymentSuffix}', 64)
  platformLiteSubscriptionPlacement: take('alz-PlatformSubLite${deploymentSuffix}', 64)
  vnetConnectivityHubLiteDeploymentName: take('alz-VnetHubLite${deploymentSuffix}', 64)
  vwanConnectivityHubLiteDeploymentName: take('alz-VWanHubLite${deploymentSuffix}', 64)
  nvaConnectivityHubLiteDeploymentName: take('alz-nvaHubLite${deploymentSuffix}', 64)
  vnetConnectivityHubLite2DeploymentName: take('alz-VnetHubLite2${deploymentSuffix}', 64)
  hubPeeringDeploymentName: take('alz-HubPeering${deploymentSuffix}', 60)
  hubPeering2DeploymentName: take('alz-HubPeering2${deploymentSuffix}', 60)
  vnetConnectivityRouteTableDeploymentName: take('alz-HubRoute${deploymentSuffix}', 64)
  vnetConnectivityRouteTable2DeploymentName: take('alz-HubRoute2${deploymentSuffix}', 64)
  nvaConnectivityHubLite2DeploymentName: take('alz-nvaHubLite2${deploymentSuffix}', 64)
  avnmLiteConnectivityHubDeploymentName: take('alz-AVNMLite${deploymentSuffix}', 64)
  avnmLitePolicyDeploymentName: take('alz-AVNMLitePolicy${deploymentSuffix}', 64)
  ddosRgLiteDeploymentName: take('alz-DDoSRgLite${deploymentSuffix}', 64)
  ddosLiteDeploymentName: take('alz-DDoSLite${deploymentSuffix}', 64)
  ddosHubLitePolicyDeploymentName: take('alz-DDoSHubPolicyLite${deploymentSuffix}', 64)
  privateDnsZoneRgLiteDeploymentName: take('alz-PrivDnsRgLite${deploymentSuffix}', 64)
  privateDnsZonesLiteDeploymentName: take('alz-PrivDNSLite${deploymentSuffix}', 35)
  privateDnsZonesLite1DeploymentName: take('alz-PrivDNSLite1${deploymentSuffix}', 35)
  privateDnsZoneRgLite2DeploymentName: take('alz-PrivDnsRgLite2${deploymentSuffix}', 64)
  privateDnsZonesLite2DeploymentName: take('alz-PrivDNSLite2${deploymentSuffix}', 35)
  monitorPolicyLiteDeploymentName: take('alz-MonitorPolicyLite${deploymentSuffix}', 64)
  dataCollectionRuleVmInsightsLiteDeploymentName: take('alz-DataCollectionRuleVmInsightsLite${deploymentSuffix}', 64)
  dataCollectionRuleChangeTrackingLiteDeploymentName: take(
    'alz-DataCollectionRuleChangeTrackingLite${deploymentSuffix}',
    64
  )
  dataCollectionRuleMdfcDefenderSQLLiteDeploymentName: take(
    'alz-DataCollectionRuleDefenderSQLLite${deploymentSuffix}',
    64
  )
  userAssignedIdentityLiteDeploymentName: take('alz-UserAssignedIdentityLite${deploymentSuffix}', 60)
}
var platformRgNames = {
  mgmtRg: '${enterpriseScaleCompanyPrefix}-mgmt'
  connectivityRg: '${enterpriseScaleCompanyPrefix}-vnethub-${connectivityLocation}'
  connectivityRgSecondary: '${enterpriseScaleCompanyPrefix}-vnethub-${connectivityLocationSecondary}'
  ddosRg: '${enterpriseScaleCompanyPrefix}-ddos'
  privateDnsRg: '${enterpriseScaleCompanyPrefix}-privatedns'
  privateDnsRg2: '${enterpriseScaleCompanyPrefix}-privatedns-02'
  identityVnetRg: '${enterpriseScaleCompanyPrefix}-vnet-${connectivityLocation}'
  identityVnetRgSecondary: '${enterpriseScaleCompanyPrefix}-vnet-${connectivityLocationSecondary}'
  lzVnetRg: '${enterpriseScaleCompanyPrefix}-vnet-${connectivityLocation}'
}
var platformResourceNames = {
  logAnalyticsWorkspace: '${enterpriseScaleCompanyPrefix}-law'
  dataCollectionRuleVmInsights: 'dcr-vminsights-prod-${connectivityLocation}-001'
  dataCollectionRuleChangeTracking: 'dcr-changetracking-prod-${connectivityLocation}-001'
  dataCollectionRuleMdfcDefenderSql: 'dcr-defendersql-prod-${connectivityLocation}-001'
  userAssignedIdentity: 'id-ama-prod-${connectivityLocation}-001'
  vpnGwName: '${enterpriseScaleCompanyPrefix}-vpngw-${connectivityLocation}'
  erGwName: '${enterpriseScaleCompanyPrefix}-ergw-${connectivityLocation}'
  ddosName: '${enterpriseScaleCompanyPrefix}-ddos-${connectivityLocation}'
  azFwPolicyName: '${enterpriseScaleCompanyPrefix}-azfwpolicy-${connectivityLocation}'
  azFwName: '${enterpriseScaleCompanyPrefix}-fw-${connectivityLocation}'
  azFwNameSecondary: '${enterpriseScaleCompanyPrefix}-fw-${connectivityLocationSecondary}'
  azErGwIpName: '${enterpriseScaleCompanyPrefix}-erpip-${connectivityLocation}'
  hubName: '${enterpriseScaleCompanyPrefix}-hub-${connectivityLocation}'
  hubNameSecondary: '${enterpriseScaleCompanyPrefix}-hub-${connectivityLocationSecondary}'
  vwanName: '${enterpriseScaleCompanyPrefix}-vwan-${connectivityLocation}'
  azVpnGwIpName: '${enterpriseScaleCompanyPrefix}-gwpip-${connectivityLocation}'
  azFwIpName: '${enterpriseScaleCompanyPrefix}-fwpip-${connectivityLocation}'
  identityVnet: '${enterpriseScaleCompanyPrefix}-vnet-${connectivityLocation}'
  identityVnetSecondary: '${enterpriseScaleCompanyPrefix}-vnet-${connectivityLocationSecondary}'
  lzVnet: '${enterpriseScaleCompanyPrefix}-vnet-${connectivityLocation}'
}
var singleVsDedicatedMgmtSub = (empty(managementSubscriptionId)
  ? singlePlatformSubscriptionId
  : managementSubscriptionId)
var singleVsDedicatedConnectivitySub = (empty(connectivitySubscriptionId)
  ? singlePlatformSubscriptionId
  : connectivitySubscriptionId)
var platformResourceIds = {
  logAnalyticsResourceId: '/subscriptions/${singleVsDedicatedMgmtSub}/resourceGroups/${platformRgNames.mgmtRg}/providers/Microsoft.OperationalInsights/workspaces/${platformResourceNames.logAnalyticsWorkspace}'
  dataCollectionRuleVmInsightsResourceId: '/subscriptions/${singleVsDedicatedMgmtSub}/resourceGroups/${platformRgNames.mgmtRg}/providers/Microsoft.Insights/dataCollectionRules/${platformResourceNames.dataCollectionRuleVmInsights}'
  dataCollectionRuleChangeTrackingResourceId: '/subscriptions/${singleVsDedicatedMgmtSub}/resourceGroups/${platformRgNames.mgmtRg}/providers/Microsoft.Insights/dataCollectionRules/${platformResourceNames.dataCollectionRuleChangeTracking}'
  dataCollectionRuleMdfcDefenderSQLResourceId: '/subscriptions/${singleVsDedicatedMgmtSub}/resourceGroups/${platformRgNames.mgmtRg}/providers/Microsoft.Insights/dataCollectionRules/${platformResourceNames.dataCollectionRuleMdfcDefenderSql}'
  ddosProtectionResourceId: '/subscriptions/${singleVsDedicatedConnectivitySub}/resourceGroups/${platformRgNames.ddosRg}/providers/Microsoft.Network/ddosProtectionPlans/${platformResourceNames.ddosName}'
  vNetHubResourceId: '/subscriptions/${singleVsDedicatedConnectivitySub}/resourceGroups/${platformRgNames.connectivityRg}/providers/Microsoft.Network/virtualNetworks/${platformResourceNames.hubName}'
  vNetHubResourceIdSecondary: '/subscriptions/${singleVsDedicatedConnectivitySub}/resourceGroups/${platformRgNames.connectivityRgSecondary}/providers/Microsoft.Network/virtualNetworks/${platformResourceNames.hubNameSecondary}'
  vWanHubResourceId: '/subscriptions/${singleVsDedicatedConnectivitySub}/resourceGroups/${platformRgNames.connectivityRg}/providers/Microsoft.Network/virtualHubs/${platformResourceNames.hubName}'
  vWanHubResourceIdSecondary: '/subscriptions/${singleVsDedicatedConnectivitySub}/resourceGroups/${platformRgNames.connectivityRg}/providers/Microsoft.Network/virtualHubs/${platformResourceNames.hubNameSecondary}'
  privateDnsRgResourceId: '/subscriptions/${singleVsDedicatedConnectivitySub}/resourceGroups/${platformRgNames.privateDnsRg}'
  azFirewallResourceId: '/subscriptions/${singleVsDedicatedConnectivitySub}/resourceGroups/${platformRgNames.connectivityRg}/providers/Microsoft.Network/azureFirewalls/${platformResourceNames.azFwName}'
  azFirewallResourceIdSecondary: '/subscriptions/${singleVsDedicatedConnectivitySub}/resourceGroups/${platformRgNames.connectivityRgSecondary}/providers/Microsoft.Network/azureFirewalls/${platformResourceNames.azFwNameSecondary}'
  azFirewallResourceIdSecondaryVwan: '/subscriptions/${singleVsDedicatedConnectivitySub}/resourceGroups/${platformRgNames.connectivityRg}/providers/Microsoft.Network/azureFirewalls/${platformResourceNames.azFwNameSecondary}'
  userAssignedIdentityResourceId: '/subscriptions/${singleVsDedicatedMgmtSub}/resourceGroups/${platformRgNames.mgmtRg}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/${platformResourceNames.userAssignedIdentity}'
}
var deterministicRoleAssignmentGuids = {
  ddosForConnectivity: take(guid('${enterpriseScaleCompanyPrefix}ddos'), 10)
  backupForIdentity: take(guid('${enterpriseScaleCompanyPrefix}idbackup'), 10)
}
var privateDnsZones = array(privateDnsZonesToDeploy)
var azBackupGeoCodes = {
  australiacentral: 'acl'
  australiacentral2: 'acl2'
  australiaeast: 'ae'
  australiasoutheast: 'ase'
  brazilsouth: 'brs'
  brazilsoutheast: 'bse'
  centraluseuap: 'ccy'
  canadacentral: 'cnc'
  canadaeast: 'cne'
  centralus: 'cus'
  eastasia: 'ea'
  eastus2euap: 'ecy'
  eastus: 'eus'
  eastus2: 'eus2'
  francecentral: 'frc'
  francesouth: 'frs'
  germanynorth: 'gn'
  germanywestcentral: 'gwc'
  centralindia: 'inc'
  southindia: 'ins'
  westindia: 'inw'
  italynorth: 'itn'
  israelcentral: 'ilc'
  japaneast: 'jpe'
  japanwest: 'jpw'
  jioindiacentral: 'jic'
  jioindiawest: 'jiw'
  koreacentral: 'krc'
  koreasouth: 'krs'
  mexicocentral: 'mxc'
  newzealandnorth: 'nzn'
  northcentralus: 'ncus'
  northeurope: 'ne'
  norwayeast: 'nwe'
  norwaywest: 'nww'
  polandcentral: 'plc'
  qatarcentral: 'qac'
  southafricanorth: 'san'
  southafricawest: 'saw'
  southcentralus: 'scus'
  spaincentral: 'spc'
  swedencentral: 'sdc'
  swedensouth: 'sds'
  southeastasia: 'sea'
  switzerlandnorth: 'szn'
  switzerlandwest: 'szw'
  taiwannorth: 'twn'
  uaecentral: 'uac'
  uaenorth: 'uan'
  uksouth: 'uks'
  ukwest: 'ukw'
  westcentralus: 'wcus'
  westeurope: 'we'
  westus: 'wus'
  westus2: 'wus2'
  westus3: 'wus3'
  usdodcentral: 'udc'
  usdodeast: 'ude'
  usgovarizona: 'uga'
  usgoviowa: 'ugi'
  usgovtexas: 'ugt'
  usgovvirginia: 'ugv'
  usnateast: 'exe'
  usnatwest: 'exw'
  usseceast: 'rxe'
  ussecwest: 'rxw'
  chinanorth: 'bjb'
  chinanorth2: 'bjb2'
  chinanorth3: 'bjb3'
  chinaeast: 'sha'
  chinaeast2: 'sha2'
  chinaeast3: 'sha3'
  germanycentral: 'gec'
  germanynortheast: 'gne'
}
var privateDnsZonesMerge = ((contains(azBackupGeoCodes, connectivityLocation) && contains(
    privateDnsZones,
    'privatelink.regionGeoShortCode.backup.windowsazure.com'
  ))
  ? union(
      [
        replace(privateDnsZones[0], '.regionGeoShortCode.', '.${azBackupGeoCodes[toLower(connectivityLocation)]}.')
      ],
      privateDnsZones
    )
  : privateDnsZones)
var privateDnsZonesMergedWithBackupPlaceholderRemoved = filter(
  privateDnsZonesMerge,
  i => (i != 'privatelink.regionGeoShortCode.backup.windowsazure.com')
)
var subscriptionIds = union(
  onlineLzSubscriptionId,
  corpLzSubscriptionId,
  map(corpConnectedLzSubscriptionId, sub => sub.subs),
  (empty(singlePlatformSubscriptionId)
    ? (empty(connectivitySubscriptionId)
        ? [
            managementSubscriptionId
            identitySubscriptionId
          ]
        : [
            managementSubscriptionId
            connectivitySubscriptionId
            identitySubscriptionId
          ])
    : [
        singlePlatformSubscriptionId
      ])
)
var roleDefinitions = {
  networkContributor: '4d97b98b-1d4f-4787-a291-c67834d212e7'
}
var CuaId = '35c42e79-00b3-42eb-a9ac-e542953efb3c'
var CuaIdSinglePlatformSub = 'b35a8452-8a67-49f9-b1a9-1aee3c1a13c2'
var CuaIdMultiPlatformSubs = '725aea60-cfaa-4a0c-9fe7-71b07f53803d'
var CuaIdNetworkingNone = '35c1ce02-165f-43b2-8d3a-fc68a04b802a'
var CuaIdNetworkingHubSpoke = 'f7fcc714-0c0d-4011-87bf-319810bbb03d'
var CuaIdNetworkingVirtualWan = '0263335d-f570-470c-8389-aa6c916e5008'
var ztnPhase1CuaId = 'f09f64b8-5cb3-4b16-900d-6ba1df8a597e'
var ambaPortalCuaId = '5f0e5693-3998-4ae2-8115-ee96e38dac62'
var CuaIdSecondaryRegion = 'b8cb7850-a693-4b04-a3a8-5441491966d6'
var mgmtGroupsArray = [for i in range(0, length(items(mgmtGroups))): items(mgmtGroups)[i].value]
var mgmtGroupsESLiteArray = [for i in range(0, length(items(mgmtGroupsLite))): items(mgmtGroupsLite)[i].value]

module deploymentNames_mgmtGroupDeployment [variables('deploymentUris').managementGroups] = if (empty(singlePlatformSubscriptionId)) {
  name: deploymentNames.mgmtGroupDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
  }
}

module deploymentNames_roleDefsDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').roleDefinitions]*/ = {
  name: deploymentNames.roleDefsDeploymentName
  params: {}
  dependsOn: [
    deploymentNames_mgmtGroupDeployment
    esLiteDeploymentNames_mgmtGroupLiteDeployment
  ]
}

module deploymentNames_policyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').policyDefinitions]*/ = {
  name: deploymentNames.policyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
  }
  dependsOn: [
    deploymentNames_mgmtGroupDeployment
    esLiteDeploymentNames_mgmtGroupLiteDeployment
  ]
}

module deploymentNames_initiativeDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').initiativeDefinitions]*/ = {
  name: deploymentNames.initiativeDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
  }
  dependsOn: [
    deploymentNames_policyDeployment
    deploymentNames_mgmtGroupDeployment
    esLiteDeploymentNames_mgmtGroupLiteDeployment
  ]
}

module deploymentNames_monitorPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').monitorPolicyDefinitions]*/ = if (empty(singlePlatformSubscriptionId) && ((enableMonitorBaselines == 'Yes') || (enableServiceHealth == 'Yes'))) {
  name: deploymentNames.monitorPolicyDeploymentName
  params: {
    enterpriseScaleCompanyPrefix: enterpriseScaleCompanyPrefix
    telemetryOptOut: telemetryOptOut
    platformManagementGroup: mgmtGroups.platform
    IdentityManagementGroup: mgmtGroups.identity
    managementManagementGroup: mgmtGroups.management
    connectivityManagementGroup: mgmtGroups.connectivity
    LandingZoneManagementGroup: mgmtGroups.lzs
    enableAMBAConnectivity: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableMonitorConnectivity)
    enableAMBAIdentity: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableMonitorIdentity)
    enableAMBAManagement: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableMonitorManagement)
    enableAMBAServiceHealth: enableServiceHealth
    enableAMBAHybridVM: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableAMBAHybridVM)
    enableAMBAKeyManagement: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableAMBAKeyManagement)
    enableAMBALoadBalancing: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableAMBALoadBalancing)
    enableAMBANetworkChanges: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableAMBANetworkChanges)
    enableAMBARecoveryServices: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableAMBARecoveryServices)
    enableAMBAStorage: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes')) ? 'No' : enableAMBAStorage)
    enableAMBAVM: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes')) ? 'No' : enableAMBAVM)
    enableAMBAWeb: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes')) ? 'No' : enableAMBAWeb)
    userAssignedManagedIdentityName: userAssignedManagedIdentityName
    ALZWebhookServiceUri: (empty(ambaAgServiceHook) ? null : array(ambaAgServiceHook))
    ALZArmRoleId: array(ambaAgArmRole)
    ALZMonitorResourceGroupName: monitorAlertsResourceGroup
    ALZMonitorResourceGroupLocation: deployment().location
    ALZMonitorActionGroupEmail: (empty(ambaAgEmailContact) ? null : array(ambaAgEmailContact))
    managementSubscriptionId: managementSubscriptionId
    deployALZPortalAccelerator: 'Yes'
  }
  dependsOn: [
    deploymentNames_mgmtGroupDeployment
    esLiteDeploymentNames_mgmtGroupLiteDeployment
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module esLiteDeploymentNames_monitorPolicyLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').monitorPolicyDefinitions]*/ = if ((!empty(singlePlatformSubscriptionId)) && ((enableMonitorBaselines == 'Yes') || (enableServiceHealth == 'Yes'))) {
  name: esLiteDeploymentNames.monitorPolicyLiteDeploymentName
  params: {
    enterpriseScaleCompanyPrefix: enterpriseScaleCompanyPrefix
    telemetryOptOut: telemetryOptOut
    platformManagementGroup: mgmtGroups.platform
    IdentityManagementGroup: mgmtGroups.platform
    managementManagementGroup: mgmtGroups.platform
    connectivityManagementGroup: mgmtGroups.platform
    LandingZoneManagementGroup: mgmtGroups.lzs
    enableAMBAConnectivity: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableMonitorConnectivity)
    enableAMBAIdentity: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableMonitorIdentity)
    enableAMBAManagement: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableMonitorManagement)
    enableAMBAServiceHealth: enableServiceHealth
    enableAMBAHybridVM: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableAMBAHybridVM)
    enableAMBAKeyManagement: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableAMBAKeyManagement)
    enableAMBALoadBalancing: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableAMBALoadBalancing)
    enableAMBANetworkChanges: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableAMBANetworkChanges)
    enableAMBARecoveryServices: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes'))
      ? 'No'
      : enableAMBARecoveryServices)
    enableAMBAStorage: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes')) ? 'No' : enableAMBAStorage)
    enableAMBAVM: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes')) ? 'No' : enableAMBAVM)
    enableAMBAWeb: (((enableMonitorBaselines == 'No') && (enableServiceHealth == 'Yes')) ? 'No' : enableAMBAWeb)
    userAssignedManagedIdentityName: userAssignedManagedIdentityName
    ALZWebhookServiceUri: (empty(ambaAgServiceHook) ? null : array(ambaAgServiceHook))
    ALZArmRoleId: array(ambaAgArmRole)
    ALZMonitorResourceGroupName: monitorAlertsResourceGroup
    ALZMonitorResourceGroupLocation: deployment().location
    ALZMonitorActionGroupEmail: (empty(ambaAgEmailContact) ? null : array(ambaAgEmailContact))
    managementSubscriptionId: singlePlatformSubscriptionId
    deployALZPortalAccelerator: 'Yes'
  }
  dependsOn: [
    esLiteDeploymentNames_mgmtGroupLiteDeployment
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module Microsoft_Resources_deployments_alz_prerequisites '?' /*TODO: replace with correct path to [variables('deploymentUris').preRequisites]*/ = if (!empty(managementSubscriptionId)) {
  name: 'alz-prerequisites'
  params: {
    location: deployment().location
    eslzRootName: enterpriseScaleCompanyPrefix
    managementSubscriptionId: managementSubscriptionId
  }
  dependsOn: [
    deploymentNames_initiativeDeployment
    deploymentNames_mgmtSubscriptionPlacement
  ]
}

module Microsoft_Resources_deployments_alz_prerequisites '?' /*TODO: replace with correct path to [variables('deploymentUris').preRequisites]*/ = if (!empty(singlePlatformSubscriptionId)) {
  name: 'alz-prerequisites'
  params: {
    location: deployment().location
    eslzRootName: enterpriseScaleCompanyPrefix
    managementSubscriptionId: singlePlatformSubscriptionId
  }
  dependsOn: [
    deploymentNames_initiativeDeployment
    esLiteDeploymentNames_mgmtGroupLiteDeployment
  ]
}

module deploymentNames_mgmtSubscriptionPlacement '?' /*TODO: replace with correct path to [variables('deploymentUris').subscriptionPlacement]*/ = if (!empty(managementSubscriptionId)) {
  name: deploymentNames.mgmtSubscriptionPlacement
  params: {
    targetManagementGroupId: mgmtGroups.management
    subscriptionId: managementSubscriptionId
  }
  dependsOn: [
    deploymentNames_mgmtGroupDeployment
  ]
}

module deploymentNames_connectivitySubscriptionPlacement '?' /*TODO: replace with correct path to [variables('deploymentUris').subscriptionPlacement]*/ = if (!empty(connectivitySubscriptionId)) {
  name: deploymentNames.connectivitySubscriptionPlacement
  params: {
    targetManagementGroupId: mgmtGroups.connectivity
    subscriptionId: connectivitySubscriptionId
  }
  dependsOn: [
    deploymentNames_mgmtGroupDeployment
  ]
}

module deploymentNames_identitySubscriptionPlacement '?' /*TODO: replace with correct path to [variables('deploymentUris').subscriptionPlacement]*/ = if (!empty(identitySubscriptionId)) {
  name: deploymentNames.identitySubscriptionPlacement
  params: {
    targetManagementGroupId: mgmtGroups.identity
    subscriptionId: identitySubscriptionId
  }
  dependsOn: [
    deploymentNames_mgmtGroupDeployment
  ]
}

module deploymentNames_monitoringDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').monitoring]*/ = if ((enableLogAnalytics == 'Yes') && (!empty(managementSubscriptionId))) {
  name: deploymentNames.monitoringDeploymentName
  scope: subscription(managementSubscriptionId)
  params: {
    rgName: platformRgNames.mgmtRg
    workspaceName: platformResourceNames.logAnalyticsWorkspace
    workspaceRegion: deployment().location
    retentionInDays: retentionInDays
    enableSentinel: enableSentinel
  }
  dependsOn: [
    deploymentNames_mgmtSubscriptionPlacement
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_dataCollectionRuleVmInsightsDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').dataCollectionRuleVmInsights]*/ = if ((!empty(managementSubscriptionId)) && (enableLogAnalytics == 'Yes') && (enableVmInsights == 'Yes')) {
  name: deploymentNames.dataCollectionRuleVmInsightsDeploymentName
  scope: subscription(managementSubscriptionId)
  params: {
    WorkspaceResourceId: platformResourceIds.logAnalyticsResourceId
    WorkspaceLocation: deployment().location
    userGivenDcrName: platformResourceNames.dataCollectionRuleVmInsights
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
  ]
}

module deploymentNames_dataCollectionRuleChangeTrackingDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').dataCollectionRuleChangeTracking]*/ = if ((!empty(managementSubscriptionId)) && (enableLogAnalytics == 'Yes') && (enableChangeTracking == 'Yes')) {
  name: deploymentNames.dataCollectionRuleChangeTrackingDeploymentName
  scope: subscription(managementSubscriptionId)
  params: {
    WorkspaceResourceId: platformResourceIds.logAnalyticsResourceId
    WorkspaceLocation: deployment().location
    dataCollectionRuleName: platformResourceNames.dataCollectionRuleChangeTracking
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
  ]
}

module deploymentNames_dataCollectionRuleMdfcDefenderSQLDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').dataCollectionRuleMdfcDefenderSQL]*/ = if ((!empty(managementSubscriptionId)) && (enableLogAnalytics == 'Yes') && (enableAscForSqlOnVm == 'DeployIfNotExists')) {
  name: deploymentNames.dataCollectionRuleMdfcDefenderSQLDeploymentName
  scope: subscription(managementSubscriptionId)
  params: {
    WorkspaceResourceId: platformResourceIds.logAnalyticsResourceId
    WorkspaceLocation: deployment().location
    userGivenDcrName: platformResourceNames.dataCollectionRuleMdfcDefenderSql
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
  ]
}

module deploymentNames_userAssignedIdentityDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').userAssignedIdentity]*/ = if ((enableLogAnalytics == 'Yes') && (!empty(managementSubscriptionId))) {
  name: deploymentNames.userAssignedIdentityDeploymentName
  scope: subscription(managementSubscriptionId)
  params: {
    location: deployment().location
    userAssignedIdentityName: platformResourceNames.userAssignedIdentity
    userAssignedIdentityResourceGroup: platformRgNames.mgmtRg
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
  ]
}

module mgmtGroupsArray_deploymentNames_diagnosticSettingsForMGsDeploymentName_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').diagnosticSettingsForManagementGroups]*/ = [
  for item in mgmtGroupsArray: {
    name: take(concat(item, deploymentNames.diagnosticSettingsForMGsDeploymentName), 64)
    params: {
      logAnalyticsResourceId: platformResourceIds.logAnalyticsResourceId
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      esLiteDeploymentNames_platformLiteSubscriptionPlacement
      deploymentNames_monitoringDeployment
      esLiteDeploymentNames_monitoringLiteDeployment
    ]
  }
]

module mgmtGroupsESLiteArray_deploymentNames_diagnosticSettingsForMGsDeploymentName_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').diagnosticSettingsForManagementGroups]*/ = [
  for item in mgmtGroupsESLiteArray: {
    name: take(concat(item, deploymentNames.diagnosticSettingsForMGsDeploymentName), 64)
    params: {
      logAnalyticsResourceId: platformResourceIds.logAnalyticsResourceId
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      esLiteDeploymentNames_platformLiteSubscriptionPlacement
      deploymentNames_monitoringDeployment
      esLiteDeploymentNames_monitoringLiteDeployment
    ]
  }
]

module deploymentNames_asbPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').asbPolicyInitiative]*/ = if (((!empty(singlePlatformSubscriptionId)) || (!empty(managementSubscriptionId))) && ((enableLogAnalytics == 'Yes') || (enableAsc == 'Yes'))) {
  name: deploymentNames.asbPolicyDeploymentName
  params: {}
  dependsOn: [
    deploymentNames_mgmtSubscriptionPlacement
    Microsoft_Resources_deployments_alz_prerequisites
    deploymentNames_monitoringDeployment
    esLiteDeploymentNames_monitoringLiteDeployment
  ]
}

module deploymentNames_wsCMKDeploymentName_wsCMKSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsCMKPolicyAssignment]*/ = [
  for (item, i) in wsCMKSelectorMG: {
    name: take('${deploymentNames.wsCMKDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}', 64)
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsCMKInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsAPIMDeploymentName_wsAPIMSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsAPIMPolicyAssignment]*/ = [
  for (item, i) in wsAPIMSelectorMG: {
    name: take('${deploymentNames.wsAPIMDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}', 64)
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsAPIMInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsAppServicesDeploymentName_wsAppServicesSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsAppServicesPolicyAssignment]*/ = [
  for (item, i) in wsAppServicesSelectorMG: {
    name: take(
      '${deploymentNames.wsAppServicesDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsAppServicesInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsAutomationDeploymentName_wsAutomationSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsAutomationPolicyAssignment]*/ = [
  for (item, i) in wsAutomationSelectorMG: {
    name: take(
      '${deploymentNames.wsAutomationDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsAutomationInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsBotServiceDeploymentName_wsBotServiceSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsBotServicePolicyAssignment]*/ = [
  for (item, i) in wsBotServiceSelectorMG: {
    name: take(
      '${deploymentNames.wsBotServiceDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsBotServiceInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsCognitiveServicesDeploymentName_wsCognitiveServicesSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsCognitiveServicesPolicyAssignment]*/ = [
  for (item, i) in wsCognitiveServicesSelectorMG: {
    name: take(
      '${deploymentNames.wsCognitiveServicesDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsCognitiveServicesInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsComputeDeploymentName_wsComputeSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsComputePolicyAssignment]*/ = [
  for (item, i) in wsComputeSelectorMG: {
    name: take('${deploymentNames.wsComputeDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}', 64)
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsComputeInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsContainerAppsDeploymentName_wsContainerAppsSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsContainerAppsPolicyAssignment]*/ = [
  for (item, i) in wsContainerAppsSelectorMG: {
    name: take(
      '${deploymentNames.wsContainerAppsDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsContainerAppsInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsContainerInstanceDeploymentName_wsContainerInstanceSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsContainerInstancePolicyAssignment]*/ = [
  for (item, i) in wsContainerInstanceSelectorMG: {
    name: take(
      '${deploymentNames.wsContainerInstanceDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsContainerInstanceInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsContainerRegistryDeploymentName_wsContainerRegistrySelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsContainerRegistryPolicyAssignment]*/ = [
  for (item, i) in wsContainerRegistrySelectorMG: {
    name: take(
      '${deploymentNames.wsContainerRegistryDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsContainerRegistryInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsCosmosDbDeploymentName_wsCosmosDbSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsCosmosDbPolicyAssignment]*/ = [
  for (item, i) in wsCosmosDbSelectorMG: {
    name: take(
      '${deploymentNames.wsCosmosDbDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsCosmosDbInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsDataExplorerDeploymentName_wsDataExplorerSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsDataExplorerPolicyAssignment]*/ = [
  for (item, i) in wsDataExplorerSelectorMG: {
    name: take(
      '${deploymentNames.wsDataExplorerDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsDataExplorerInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsDataFactoryDeploymentName_wsDataFactorySelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsDataFactoryPolicyAssignment]*/ = [
  for (item, i) in wsDataFactorySelectorMG: {
    name: take(
      '${deploymentNames.wsDataFactoryDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsDataFactoryInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsEventGridDeploymentName_wsEventGridSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsEventGridPolicyAssignment]*/ = [
  for (item, i) in wsEventGridSelectorMG: {
    name: take(
      '${deploymentNames.wsEventGridDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsEventGridInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsEventHubDeploymentName_wsEventHubSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsEventHubPolicyAssignment]*/ = [
  for (item, i) in wsEventHubSelectorMG: {
    name: take(
      '${deploymentNames.wsEventHubDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsEventHubInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsKeyVaultSupDeploymentName_wsKeyVaultSupSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsKeyVaultSupPolicyAssignment]*/ = [
  for (item, i) in wsKeyVaultSupSelectorMG: {
    name: take(
      '${deploymentNames.wsKeyVaultSupDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsKeyVaultSupInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsKubernetesDeploymentName_wsKubernetesSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsKubernetesPolicyAssignment]*/ = [
  for (item, i) in wsKubernetesSelectorMG: {
    name: take(
      '${deploymentNames.wsKubernetesDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsKubernetesInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsMachineLearningDeploymentName_wsMachineLearningSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsMachineLearningPolicyAssignment]*/ = [
  for (item, i) in wsMachineLearningSelectorMG: {
    name: take(
      '${deploymentNames.wsMachineLearningDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsMachineLearningInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsMySQLDeploymentName_wsMySQLSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsMySQLPolicyAssignment]*/ = [
  for (item, i) in wsMySQLSelectorMG: {
    name: take('${deploymentNames.wsMySQLDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}', 64)
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsMySQLInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsNetworkDeploymentName_wsNetworkSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsNetworkPolicyAssignment]*/ = [
  for (item, i) in wsNetworkSelectorMG: {
    name: take('${deploymentNames.wsNetworkDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}', 64)
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
      enforcementMode: ((enableWsNetworkInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsOpenAIDeploymentName_wsOpenAISelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsOpenAIPolicyAssignment]*/ = [
  for (item, i) in wsOpenAISelectorMG: {
    name: take('${deploymentNames.wsOpenAIDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}', 64)
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsOpenAIInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsPostGreSQLDeploymentName_wsPostGreSQLSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsPostGreSQLPolicyAssignment]*/ = [
  for (item, i) in wsPostGreSQLSelectorMG: {
    name: take(
      '${deploymentNames.wsPostGreSQLDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsPostGreSQLInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsServiceBusDeploymentName_wsServiceBusSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsServiceBusPolicyAssignment]*/ = [
  for (item, i) in wsServiceBusSelectorMG: {
    name: take(
      '${deploymentNames.wsServiceBusDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsServiceBusInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsSQLDeploymentName_wsSQLSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsSQLPolicyAssignment]*/ = [
  for (item, i) in wsSQLSelectorMG: {
    name: take('${deploymentNames.wsSQLDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}', 64)
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsSQLInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsStorageDeploymentName_wsStorageSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsStoragePolicyAssignment]*/ = [
  for (item, i) in wsStorageSelectorMG: {
    name: take('${deploymentNames.wsStorageDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}', 64)
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsStorageInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsSynapseDeploymentName_wsSynapseSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsSynapsePolicyAssignment]*/ = [
  for (item, i) in wsSynapseSelectorMG: {
    name: take('${deploymentNames.wsSynapseDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}', 64)
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsSynapseInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_wsVirtualDesktopDeploymentName_wsVirtualDesktopSelectorMG_contoso_enterpriseScaleCompanyPrefix_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').wsVirtualDesktopPolicyAssignment]*/ = [
  for (item, i) in wsVirtualDesktopSelectorMG: {
    name: take(
      '${deploymentNames.wsVirtualDesktopDeploymentName}-${replace(item,'contoso',enterpriseScaleCompanyPrefix)}',
      64
    )
    params: {
      topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
      assignmentIndex: i
      enforcementMode: ((enableWsVirtualDesktopInitiatives == 'Yes') ? 'Default' : 'DoNotEnforce')
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_initiativeDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_monitoringDeployment
      Microsoft_Resources_deployments_alz_prerequisites
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_regulatoryComplianceInitiativesToAssignDeploymentName_regulatoryComplianceInitiativesToAssign_mg_regulatoryComplianceInitiativesToAssign_mg_1_regulatoryComplianceInitiativesToAssign_mg_regulatoryComplianceInitiativesToAssign_mg_regulatoryComplianceInitiativesToAssign_policy_id_64 '?' /*TODO: replace with correct path to [variables('deploymentUris').regulatoryComplianceInitiatives]*/= [for item in regulatoryComplianceInitiativesToAssign:{
name: take('${deploymentNames.regulatoryComplianceInitiativesToAssignDeploymentName}${(contains(item.mg,'-')?split(item.mg,'-')[1]:item.mg)}-${uniqueString(item.mg,item.policy.id)}',64)
params: {
topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
policySetDefinitionId: item.policy.id
policySetDefinitionDisplayName: item.policy.displayName
policySetDefinitionDescription: item.policy.description
policyAssignmentName: take('Enforce-RegComp-${uniqueString(replace(item.mg,'contoso',enterpriseScaleCompanyPrefix),item.policy.id)}',24)
logAnalyticsWorkspaceId: platformResourceIds.logAnalyticsResourceId
regCompPolParAusGovIsmRestrictedVmAdminsExclude: regCompPolParAusGovIsmRestrictedVmAdminsExclude
regCompPolParAusGovIsmRestrictedResourceTypes: regCompPolParAusGovIsmRestrictedResourceTypes
regCompPolParMPAACertificateThumb: regCompPolParMPAACertificateThumb
regCompPolParMPAAApplicationName: regCompPolParMPAAApplicationName
regCompPolParMPAAStoragePrefix: regCompPolParMPAAStoragePrefix
regCompPolParMPAAResGroupPrefix: regCompPolParMPAAResGroupPrefix
regCompPolParMPAARBatchMetricName: regCompPolParMPAARBatchMetricName
regCompPolParSovBaseConfRegions: regCompPolParSovBaseConfRegions
regCompPolParSovBaseGlobalRegions: regCompPolParSovBaseGlobalRegions
regCompPolParSwift2020VmAdminsInclude: regCompPolParSwift2020VmAdminsInclude
regCompPolParSwift2020DomainFqdn: regCompPolParSwift2020DomainFqdn
regCompPolParCanadaFedPbmmVmAdminsInclude: regCompPolParCanadaFedPbmmVmAdminsInclude
regCompPolParCanadaFedPbmmVmAdminsExclude: regCompPolParCanadaFedPbmmVmAdminsExclude
regCompPolParCisV2KeyVaultKeysRotateDays: regCompPolParCisV2KeyVaultKeysRotateDays
regCompPolParCmmcL3VmAdminsInclude: regCompPolParCmmcL3VmAdminsInclude
regCompPolParCmmcL3VmAdminsExclude: regCompPolParCmmcL3VmAdminsExclude
regCompPolParHiTrustHipaaApplicationName: regCompPolParHiTrustHipaaApplicationName
regCompPolParHiTrustHipaaStoragePrefix: regCompPolParHiTrustHipaaStoragePrefix
regCompPolParHiTrustHipaaResGroupPrefix: regCompPolParHiTrustHipaaResGroupPrefix
regCompPolParHiTrustHipaaCertificateThumb: regCompPolParHiTrustHipaaCertificateThumb
regCompPolParIrs1075Sep2016VmAdminsExclude: regCompPolParIrs1075Sep2016VmAdminsExclude
regCompPolParIrs1075Sep2016VmAdminsInclude: regCompPolParIrs1075Sep2016VmAdminsInclude
regCompPolParNZIsmRestrictedVmAdminsInclude: regCompPolParNZIsmRestrictedVmAdminsInclude
regCompPolParNZIsmRestrictedVmAdminsExclude: regCompPolParNZIsmRestrictedVmAdminsExclude
regCompPolParNistSp800171R2VmAdminsExclude: regCompPolParNistSp800171R2VmAdminsExclude
regCompPolParNistSp800171R2VmAdminsInclude: regCompPolParNistSp800171R2VmAdminsInclude
regCompPolParSoc2Type2AllowedRegistries: regCompPolParSoc2Type2AllowedRegistries
regCompPolParSoc2Type2MaxCpuUnits: regCompPolParSoc2Type2MaxCpuUnits
regCompPolParSoc2Type2MaxMemoryBytes: regCompPolParSoc2Type2MaxMemoryBytes
}
dependsOn: [
deploymentNames_mgmtSubscriptionPlacement
deploymentNames_vnetConnectivityHubDeployment
deploymentNames_vwanConnectivityHubDeployment
deploymentNames_nvaConnectivityHubDeployment
deploymentNames_ddosLzPolicyDeployment
deploymentNames_policyDeployment
deploymentNames_initiativeDeployment
deploymentNames_activityDiagnosticsPolicyDeployment
deploymentNames_ascPolicyDeployment
deploymentNames_ascGovPolicyDeployment
deploymentNames_resourceDiagnosticsPolicyDeployment
esLitedeploymentNames_vwanConnectivityHubLiteDeployment
esLitedeploymentNames_vnetConnectivityHubLiteDeployment
esLitedeploymentNames_nvaConnectivityHubLiteDeployment
deploymentNames_monitoringDeployment
deploymentNames_corpConnectedMoveLzSubs
]
}]

module deploymentNames_resourceDiagnosticsPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').resourceDiagnosticsInitiative]*/ = if (((!empty(singlePlatformSubscriptionId)) || (!empty(managementSubscriptionId))) && (enableLogAnalytics == 'Yes')) {
  name: deploymentNames.resourceDiagnosticsPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    logAnalyticsResourceId: platformResourceIds.logAnalyticsResourceId
    laCategory: laCategory
  }
  dependsOn: [
    deploymentNames_mgmtSubscriptionPlacement
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
    deploymentNames_monitoringDeployment
    esLiteDeploymentNames_monitoringLiteDeployment
  ]
}

module deploymentNames_activityDiagnosticsPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').activityDiagnosticsPolicyAssignment]*/ = if (((!empty(singlePlatformSubscriptionId)) || (!empty(managementSubscriptionId))) && (enableLogAnalytics == 'Yes')) {
  name: deploymentNames.activityDiagnosticsPolicyDeploymentName
  params: {
    logAnalyticsResourceId: platformResourceIds.logAnalyticsResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    esLiteDeploymentNames_monitoringLiteDeployment
  ]
}

module deploymentNames_costOptimizationDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').costOptimizationPolicyInitiative]*/ = if ((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) {
  name: deploymentNames.costOptimizationDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_trustedLaunchDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').trustedLaunchPolicyInitiative]*/ = if ((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) {
  name: deploymentNames.trustedLaunchDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_zoneResilientDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').zoneResilientPolicyInitiative]*/ = if ((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) {
  name: deploymentNames.zoneResilientDeploymentName
  params: {
    enforcementMode: 'Default'
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_resourceRgLocationDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').resourceRgLocationPolicyAssignment]*/ = if ((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) {
  name: deploymentNames.resourceRgLocationDeploymentName
  params: {
    enforcementMode: 'Default'
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_MDFCSubscriptionEnableDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').MDFCSubscriptionEnablement]*/ = [
  for (item, i) in subscriptionIds: {
    name: concat(deploymentNames.MDFCSubscriptionEnableDeploymentName, i)
    scope: subscription(item)
    params: {
      logAnalyticsResourceId: platformResourceIds.logAnalyticsResourceId
      resourceGroupLocation: deployment().location
      resourceGroupName: '${enterpriseScaleCompanyPrefix}-asc-export'
      emailContactAsc: emailContactAsc
      enableAscForServers: enableAscForServers
      enableAscForSql: enableAscForSql
      enableAscForAppServices: enableAscForAppServices
      enableAscForStorage: enableAscForStorage
      enableAscForContainers: enableAscForContainers
      enableAscForKeyVault: enableAscForKeyVault
      enableAscForSqlOnVm: enableAscForSqlOnVm
      enableAscForArm: enableAscForArm
      enableAscForApis: enableAscForApis
      enableAscForCspm: enableAscForCspm
      enableAscForOssDb: enableAscForOssDb
      enableAscForCosmosDbs: enableAscForCosmosDbs
    }
    dependsOn: [
      deploymentNames_mgmtSubscriptionPlacement
      deploymentNames_connectivitySubscriptionPlacement
      deploymentNames_identitySubscriptionPlacement
      esLiteDeploymentNames_platformLiteSubscriptionPlacement
      deploymentNames_onlineLzSubs
      deploymentNames_corpLzSubs
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module deploymentNames_ascPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').mdfcConfigPolicyInitiative]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableAsc == 'Yes') && (environment().resourceManager == 'https://management.azure.com/')) {
  name: deploymentNames.ascPolicyDeploymentName
  params: {
    logAnalyticsResourceId: platformResourceIds.logAnalyticsResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    emailContactAsc: emailContactAsc
    enableAscForServers: enableAscForServers
    enableAscForServersVulnerabilityAssessments: enableAscForServersVulnerabilityAssessments
    enableAscForSql: enableAscForSql
    enableAscForAppServices: enableAscForAppServices
    enableAscForStorage: enableAscForStorage
    enableAscForContainers: enableAscForContainers
    enableAscForKeyVault: enableAscForKeyVault
    enableAscForSqlOnVm: enableAscForSqlOnVm
    enableAscForArm: enableAscForArm
    enableAscForCspm: enableAscForCspm
    enableAscForOssDb: enableAscForOssDb
    enableAscForCosmosDbs: enableAscForCosmosDbs
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    esLiteDeploymentNames_monitoringLiteDeployment
  ]
}

module deploymentNames_atpOssDbPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').atpOssDbPolicyInitiative]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableAsc == 'Yes') && (environment().resourceManager == 'https://management.azure.com/')) {
  name: deploymentNames.atpOssDbPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableAscForOssDb == 'DeployIfNotExists') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
  ]
}

module deploymentNames_atpSqlDbPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').atpSqlDbPolicyInitiative]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableAsc == 'Yes') && (environment().resourceManager == 'https://management.azure.com/')) {
  name: deploymentNames.atpSqlDbPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableAscForSql == 'DeployIfNotExists') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
  ]
}

module deploymentNames_mdEndpointsDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').mdEndpointsPolicyInitiative]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableAsc == 'Yes') && (environment().resourceManager == 'https://management.azure.com/')) {
  name: deploymentNames.mdEndpointsDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableMDEndpoints == 'DeployIfNotExists') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
  ]
}

module deploymentNames_mdEndpointsAMADeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').mdEndpointsAMAPolicyInitiative]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableAsc == 'Yes') && (environment().resourceManager == 'https://management.azure.com/')) {
  name: deploymentNames.mdEndpointsAMADeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableMDEndpoints == 'DeployIfNotExists') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
  ]
}

module deploymentNames_denyClassicResourcePolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').classicResourcesPolicyAssignment]*/ = if (((!empty(singlePlatformSubscriptionId)) || (!empty(managementSubscriptionId))) && (denyClassicResources != 'No')) {
  name: deploymentNames.denyClassicResourcePolicyDeploymentName
  params: {
    enforcementMode: 'Default'
    policyEffect: ((denyClassicResources == 'Yes') ? 'Deny' : 'Audit')
  }
  dependsOn: [
    deploymentNames_mgmtGroupDeployment
    esLiteDeploymentNames_mgmtGroupLiteDeployment
  ]
}

module deploymentNames_denyVMUnmanagedDiskPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').VMUnmanagedDiskPolicyAssignment]*/ = if (((!empty(singlePlatformSubscriptionId)) || (!empty(managementSubscriptionId))) && (denyVMUnmanagedDisk != 'No')) {
  name: deploymentNames.denyVMUnmanagedDiskPolicyDeploymentName
  params: {
    enforcementMode: ((denyVMUnmanagedDisk == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_ascGovPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').govMdfcPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableAsc == 'Yes') && (environment().resourceManager == 'https://management.usgovcloudapi.net')) {
  name: deploymentNames.ascGovPolicyDeploymentName
  params: {
    logAnalyticsResourceId: platformResourceIds.logAnalyticsResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    emailContactAsc: emailContactAsc
    enableAscForServers: enableAscForServers
    enableAscForSql: enableAscForSql
    enableAscForStorage: enableAscForStorage
    enableAscForContainers: enableAscForContainers
    enableAscForArm: enableAscForArm
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    esLiteDeploymentNames_monitoringLiteDeployment
  ]
}

module deploymentNames_denyActionDeleteUAMIAMAPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').denyActionDeleteUAMIAMAPolicyAssignment]*/ = if (((!empty(singlePlatformSubscriptionId)) || (!empty(managementSubscriptionId))) && (enableLogAnalytics == 'Yes')) {
  name: deploymentNames.denyActionDeleteUAMIAMAPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    resourceName: platformResourceNames.userAssignedIdentity
    resourceType: 'Microsoft.ManagedIdentity/userAssignedIdentities'
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_ddosRgDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').resourceGroup]*/ = if ((enableDdoS == 'Yes') && (!empty(connectivitySubscriptionId))) {
  name: deploymentNames.ddosRgDeploymentName
  scope: subscription(connectivitySubscriptionId)
  params: {
    rgName: platformRgNames.ddosRg
    location: connectivityLocation
  }
  dependsOn: [
    deploymentNames_connectivitySubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
  ]
}

module deploymentNames_ddosDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').ddosProtection]*/ = if ((enableDdoS == 'Yes') && (!empty(connectivitySubscriptionId))) {
  name: deploymentNames.ddosDeploymentName
  scope: resourceGroup(connectivitySubscriptionId, platformRgNames.ddosRg)
  params: {
    ddosName: platformResourceNames.ddosName
    location: connectivityLocation
  }
  dependsOn: [
    deploymentNames_ddosRgDeployment
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
  ]
}

module deploymentNames_ddosHubPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').ddosPolicyAssignment]*/ = if (((enableDdoS == 'Yes') || (enableDdoS == 'Audit')) && (!empty(connectivitySubscriptionId))) {
  name: deploymentNames.ddosHubPolicyDeploymentName
  params: {
    ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
    topLevelManagementGroupPrefix: deterministicRoleAssignmentGuids.ddosForConnectivity
    enforcementMode: ((enableDdoS == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    deploymentNames_ddosDeployment
  ]
}

module deploymentNames_vnetConnectivityHubDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').vnetConnectivityHub]*/ = if ((!empty(connectivitySubscriptionId)) && (enableHub == 'vhub')) {
  name: deploymentNames.vnetConnectivityHubDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
    enableHub: enableHub
    enableAzFw: enableAzFw
    addressPrefix: addressPrefix
    enableVpnGw: enableVpnGw
    enableErGw: enableErGw
    enableDdoS: enableDdoS
    location: connectivityLocation
    connectivitySubscriptionId: connectivitySubscriptionId
    subnetMaskForAzFw: subnetMaskForAzFw
    subnetMaskForAzFwMgmt: subnetMaskForAzFwMgmt
    subnetMaskForGw: subnetMaskForGw
    firewallSku: firewallSku
    firewallZones: firewallZones
    enableAzFwDnsProxy: enableAzFwDnsProxy
    enableVpnActiveActive: enableVpnActiveActive
    gwRegionalOrAz: gwRegionalOrAz
    gwAzSku: gwAzSku
    gwRegionalSku: gwRegionalSku
    erRegionalOrAz: erRegionalOrAz
    erAzSku: erAzSku
    erRegionalSku: erRegionalSku
  }
  dependsOn: [
    deploymentNames_connectivitySubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_ddosDeployment
  ]
}

module deploymentNames_nvaConnectivityHubDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').nvaConnectivityHub]*/ = if ((!empty(connectivitySubscriptionId)) && (enableHub == 'nva')) {
  name: deploymentNames.nvaConnectivityHubDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
    enableHub: enableHub
    addressPrefix: addressPrefix
    enableVpnGw: enableVpnGw
    enableErGw: enableErGw
    enableDdoS: enableDdoS
    location: connectivityLocation
    connectivitySubscriptionId: connectivitySubscriptionId
    subnetMaskForGw: subnetMaskForGw
    enableVpnActiveActive: enableVpnActiveActive
    gwRegionalOrAz: gwRegionalOrAz
    gwAzSku: gwAzSku
    gwRegionalSku: gwRegionalSku
    erRegionalOrAz: erRegionalOrAz
    erAzSku: erAzSku
    erRegionalSku: erRegionalSku
  }
  dependsOn: [
    deploymentNames_connectivitySubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_ddosDeployment
    deploymentNames_vnetConnectivityHubDeployment
  ]
}

module deploymentNames_vwanConnectivityHubDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').vwanConnectivityHub]*/ = if ((!empty(connectivitySubscriptionId)) && (enableHub == 'vwan')) {
  name: deploymentNames.vwanConnectivityHubDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enableHub: enableHub
    enableAzFw: enableAzFw
    firewallSku: firewallSku
    firewallZones: firewallZones
    enableAzFwDnsProxy: enableAzFwDnsProxy
    addressPrefix: addressPrefix
    enableVpnGw: enableVpnGw
    enableErGw: enableErGw
    location: connectivityLocation
    connectivitySubscriptionId: connectivitySubscriptionId
    expressRouteScaleUnit: expressRouteScaleUnit
    vpnGateWayScaleUnit: vpnGateWayScaleUnit
    enableVWANRoutingIntent: enableVWANRoutingIntent
    internetTrafficRoutingPolicy: internetTrafficRoutingPolicy
    privateTrafficRoutingPolicy: privateTrafficRoutingPolicy
    vWANHubRoutingPreference: vWANHubRoutingPreference
    vWanHubCapacity: vWANHubCapacity
    enableHubSecondary: enableSecondaryRegion
    enableAzFwSecondary: enableAzFwSecondary
    firewallSkuSecondary: firewallSkuSecondary
    firewallZonesSecondary: firewallZonesSecondary
    enableAzFwDnsProxySecondary: enableAzFwDnsProxySecondary
    addressPrefixSecondary: addressPrefixSecondary
    enableVpnGwSecondary: enableVpnGwSecondary
    enableErGwSecondary: enableErGwSecondary
    locationSecondary: connectivityLocationSecondary
    expressRouteScaleUnitSecondary: expressRouteScaleUnitSecondary
    vpnGateWayScaleUnitSecondary: vpnGateWayScaleUnitSecondary
    enableVWANRoutingIntentSecondary: enableVWANRoutingIntentSecondary
    internetTrafficRoutingPolicySecondary: internetTrafficRoutingPolicySecondary
    privateTrafficRoutingPolicySecondary: privateTrafficRoutingPolicySecondary
    vWANHubRoutingPreferenceSecondary: vWANHubRoutingPreferenceSecondary
    vWANHubCapacitySecondary: vWANHubCapacitySecondary
  }
  dependsOn: [
    deploymentNames_connectivitySubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_ddosDeployment
  ]
}

module deploymentNames_avnmConnectivityHubDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').avnmConnectivityHub]*/ = if (deployAVNM && ((enableHub == 'vhub') || (enableHub == 'nva')) && (!empty(connectivitySubscriptionId))) {
  name: deploymentNames.avnmConnectivityHubDeploymentName
  scope: subscription(connectivitySubscriptionId)
  params: {
    location: connectivityLocation
    locationSecondary: connectivityLocationSecondary
    managementGroupScope: scopes.eslzRootManagementGroup
    connectivitySubscriptionId: connectivitySubscriptionId
    enableSecondaryRegion: enableSecondaryRegion
  }
  dependsOn: [
    deploymentNames_connectivitySubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_ddosDeployment
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module esLiteDeploymentNames_avnmLiteConnectivityHubDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').avnmConnectivityHub]*/ = if (deployAVNM && ((enableHub == 'vhub') || (enableHub == 'nva')) && (!empty(singlePlatformSubscriptionId))) {
  name: esLiteDeploymentNames.avnmLiteConnectivityHubDeploymentName
  scope: subscription(singlePlatformSubscriptionId)
  params: {
    location: connectivityLocation
    locationSecondary: connectivityLocationSecondary
    managementGroupScope: scopes.eslzRootManagementGroup
    connectivitySubscriptionId: singlePlatformSubscriptionId
    enableSecondaryRegion: enableSecondaryRegion
  }
  dependsOn: [
    deploymentNames_mgmtGroupDeployment
    esLiteDeploymentNames_mgmtGroupLiteDeployment
    deploymentNames_privateDnsZones2Deployment
    esLitedeploymentNames_privateDnsZonesLite2Deployment
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_avnmPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').avnmPolicy]*/ = if (deployAVNM && ((enableHub == 'vhub') || (enableHub == 'nva')) && (!empty(connectivitySubscriptionId))) {
  name: deploymentNames.avnmPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    connectivitySubscriptionId: connectivitySubscriptionId
    locationSecondary: connectivityLocationSecondary
    enableSecondaryRegion: enableSecondaryRegion
  }
  dependsOn: [
    deploymentNames_avnmConnectivityHubDeployment
  ]
}

module esLiteDeploymentNames_avnmLitePolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').avnmPolicy]*/ = if (deployAVNM && ((enableHub == 'vhub') || (enableHub == 'nva')) && (!empty(singlePlatformSubscriptionId))) {
  name: esLiteDeploymentNames.avnmLitePolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    connectivitySubscriptionId: singlePlatformSubscriptionId
    locationSecondary: connectivityLocationSecondary
    enableSecondaryRegion: enableSecondaryRegion
    dedicatedSubscription: false
  }
  dependsOn: [
    esLiteDeploymentNames_avnmLiteConnectivityHubDeployment
  ]
}

module deploymentNames_privateDnsZoneRgDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').resourceGroup]*/ = if ((enablePrivateDnsZones == 'Yes') && (!empty(connectivitySubscriptionId))) {
  name: deploymentNames.privateDnsZoneRgDeploymentName
  scope: subscription(connectivitySubscriptionId)
  params: {
    rgName: platformRgNames.privateDnsRg
    location: connectivityLocation
  }
  dependsOn: [
    deploymentNames_connectivitySubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_vnetConnectivityHubDeployment
    deploymentNames_vwanConnectivityHubDeployment
    deploymentNames_nvaConnectivityHubDeployment
  ]
}

module deploymentNames_privateDnsZonesDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').privateDnsZones]*/ = [
  for (item, i) in privateDnsZonesMergedWithBackupPlaceholderRemoved: {
    name: concat(deploymentNames.privateDnsZonesDeploymentName, i)
    scope: resourceGroup(connectivitySubscriptionId, platformRgNames.privateDnsRg)
    params: {
      privateDnsZoneName: concat(item)
      connectivityHubResourceId: platformResourceIds.vNetHubResourceId
      connectivityHubResourceIdSecondary: platformResourceIds.vNetHubResourceIdSecondary
      enablePrivateDnsZonesSecondary: enablePrivateDnsZonesSecondary
      enableHubSecondary: enableSecondaryRegion
    }
    dependsOn: [
      deploymentNames_privateDnsZoneRgDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_vnetConnectivityHub2Deployment
      deploymentNames_nvaConnectivityHub2Deployment
    ]
  }
]

module deploymentNames_privateDnsZoneRg2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').resourceGroup]*/ = if ((enablePrivateDnsZonesSecondary == 'Yes') && (!empty(connectivitySubscriptionId))) {
  name: deploymentNames.privateDnsZoneRg2DeploymentName
  scope: subscription(connectivitySubscriptionId)
  params: {
    rgName: platformRgNames.privateDnsRg2
    location: connectivityLocationSecondary
  }
  dependsOn: [
    deploymentNames_connectivitySubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_vnetConnectivityHub2Deployment
    deploymentNames_vwanConnectivityHubDeployment
    deploymentNames_nvaConnectivityHub2Deployment
  ]
}

module deploymentNames_privateDnsZones2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').privateDnsZones]*/ = [
  for (item, i) in privateDnsZonesMergedWithBackupPlaceholderRemoved: {
    name: concat(deploymentNames.privateDnsZones2DeploymentName, i)
    scope: resourceGroup(connectivitySubscriptionId, platformRgNames.privateDnsRg2)
    params: {
      privateDnsZoneName: concat(item)
      connectivityHubResourceId: platformResourceIds.vNetHubResourceIdSecondary
      connectivityHubResourceIdSecondary: 'placeholder'
      enablePrivateDnsZonesSecondary: enablePrivateDnsZonesSecondary
      enableHubSecondary: 'No'
    }
    dependsOn: [
      deploymentNames_privateDnsZoneRg2Deployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      deploymentNames_vnetConnectivityHub2Deployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHub2Deployment
    ]
  }
]

module deploymentNames_vnetConnectivityHub2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').vnetConnectivityHub]*/ = if ((!empty(connectivitySubscriptionId)) && (enableSecondaryRegion == 'Yes') && (enableHubSecondary == 'vhub')) {
  name: deploymentNames.vnetConnectivityHub2DeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
    enableHub: enableHubSecondary
    enableAzFw: enableAzFwSecondary
    addressPrefix: addressPrefixSecondary
    enableVpnGw: enableVpnGwSecondary
    enableErGw: enableErGwSecondary
    enableDdoS: enableDdoS
    location: connectivityLocationSecondary
    connectivitySubscriptionId: connectivitySubscriptionId
    subnetMaskForAzFw: subnetMaskForAzFwSecondary
    subnetMaskForAzFwMgmt: subnetMaskForAzFwMgmtSecondary
    subnetMaskForGw: subnetMaskForGwSecondary
    firewallSku: firewallSkuSecondary
    firewallZones: firewallZonesSecondary
    enableAzFwDnsProxy: enableAzFwDnsProxySecondary
    enableVpnActiveActive: enableVpnActiveActiveSecondary
    gwRegionalOrAz: gwRegionalOrAzSecondary
    gwAzSku: gwAzSkuSecondary
    gwRegionalSku: gwRegionalSkuSecondary
    erRegionalOrAz: erRegionalOrAzSecondary
    erAzSku: erAzSkuSecondary
    erRegionalSku: erRegionalSkuSecondary
  }
  dependsOn: [
    deploymentNames_connectivitySubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_ddosDeployment
  ]
}

module deploymentNames_nvaConnectivityHub2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').nvaConnectivityHub]*/ = if ((!empty(connectivitySubscriptionId)) && (enableSecondaryRegion == 'Yes') && (enableHubSecondary == 'nva')) {
  name: deploymentNames.nvaConnectivityHub2DeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
    enableHub: enableHubSecondary
    addressPrefix: addressPrefixSecondary
    enableVpnGw: enableVpnGwSecondary
    enableErGw: enableErGwSecondary
    enableDdoS: enableDdoS
    location: connectivityLocationSecondary
    connectivitySubscriptionId: connectivitySubscriptionId
    subnetMaskForGw: subnetMaskForGwSecondary
    enableVpnActiveActive: enableVpnActiveActiveSecondary
    gwRegionalOrAz: gwRegionalOrAzSecondary
    gwAzSku: gwAzSkuSecondary
    gwRegionalSku: gwRegionalSkuSecondary
    erRegionalOrAz: erRegionalOrAzSecondary
    erAzSku: erAzSkuSecondary
    erRegionalSku: erRegionalSkuSecondary
  }
  dependsOn: [
    deploymentNames_connectivitySubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_ddosDeployment
  ]
}

module deploymentNames_hubPeeringDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').hubVnetPeering]*/ = if ((!empty(connectivitySubscriptionId)) && ((enableHub == 'nva') || (enableHub == 'vhub')) && ((enableHubSecondary == 'nva') || (enableHubSecondary == 'vhub')) && (enableSecondaryRegion == 'Yes')) {
  name: deploymentNames.hubPeeringDeploymentName
  scope: subscription(connectivitySubscriptionId)
  params: {
    hubResourceId: platformResourceIds.vNetHubResourceId
    hubResourceIdSecondary: platformResourceIds.vNetHubResourceIdSecondary
    hubLocation: connectivityLocation
    hubLocationSecondary: connectivityLocationSecondary
    hubRgName: '${enterpriseScaleCompanyPrefix}-vnethub-${connectivityLocation}'
    hubRgNameSecondary: '${enterpriseScaleCompanyPrefix}-vnethub-${connectivityLocationSecondary}'
  }
  dependsOn: [
    deploymentNames_vnetConnectivityHubDeployment
    deploymentNames_vwanConnectivityHubDeployment
    deploymentNames_nvaConnectivityHubDeployment
    deploymentNames_ddosLzPolicyDeployment
    deploymentNames_policyDeployment
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_identityPeeringDeployment
    deploymentNames_identityPeering2Deployment
  ]
}

module deploymentNames_vnetConnectivityRouteTableDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').hubVnetRouting]*/ = if ((!empty(connectivitySubscriptionId)) && (enableHub == 'vhub') && (enableAzFw == 'Yes') && (enableAzFwSecondary == 'Yes')) {
  name: deploymentNames.vnetConnectivityRouteTableDeploymentName
  scope: resourceGroup(connectivitySubscriptionId, platformRgNames.connectivityRg)
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    connectivityHubResourceId: platformResourceIds.vNetHubResourceId
    subnetName: 'AzureFirewallSubnet'
    cidrRange: addressPrefixSecondary
    targetFWSubnetCidr: subnetMaskForAzFwSecondary
    sourceFWSubnetCidr: subnetMaskForAzFw
    hubLocation: connectivityLocation
  }
  dependsOn: [
    deploymentNames_privateDnsZoneRgDeployment
    deploymentNames_vnetConnectivityHubDeployment
    deploymentNames_nvaConnectivityHubDeployment
    deploymentNames_vnetConnectivityHub2Deployment
    deploymentNames_nvaConnectivityHub2Deployment
    deploymentNames_hubPeeringDeployment
  ]
}

module deploymentNames_vnetConnectivityRouteTable2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').hubVnetRouting]*/ = if ((!empty(connectivitySubscriptionId)) && (enableHub == 'vhub') && (enableAzFw == 'Yes') && (enableAzFwSecondary == 'Yes')) {
  name: deploymentNames.vnetConnectivityRouteTable2DeploymentName
  scope: resourceGroup(connectivitySubscriptionId, platformRgNames.connectivityRgSecondary)
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    connectivityHubResourceId: platformResourceIds.vNetHubResourceIdSecondary
    subnetName: 'AzureFirewallSubnet'
    cidrRange: addressPrefix
    targetFWSubnetCidr: subnetMaskForAzFw
    sourceFWSubnetCidr: subnetMaskForAzFwSecondary
    hubLocation: connectivityLocationSecondary
  }
  dependsOn: [
    deploymentNames_privateDnsZoneRgDeployment
    deploymentNames_vnetConnectivityHubDeployment
    deploymentNames_nvaConnectivityHubDeployment
    deploymentNames_vnetConnectivityHub2Deployment
    deploymentNames_nvaConnectivityHub2Deployment
    deploymentNames_hubPeeringDeployment
  ]
}

module deploymentNames_privateDnsPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').privateDnsZonePolicyAssignment]*/ = if ((enablePrivateDnsZonesForLzs == 'Yes') || (enablePrivateDnsZonesForLzs == 'Audit')) {
  name: deploymentNames.privateDnsPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    location: connectivityLocation
    dnsZoneResourceGroupId: platformResourceIds.privateDnsRgResourceId
    enforcementMode: ((enablePrivateDnsZonesForLzs == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    deploymentNames_mgmtGroupDeployment
    esLiteDeploymentNames_mgmtGroupLiteDeployment
    deploymentNames_privateDnsZones2Deployment
    esLitedeploymentNames_privateDnsZonesLite2Deployment
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_dnsZoneRoleAssignmentDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').roleAssignments]*/ = if (enablePrivateDnsZonesForLzs == 'Yes') {
  name: deploymentNames.dnsZoneRoleAssignmentDeploymentName
  scope: subscription(singleVsDedicatedConnectivitySub)
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    principalId: ((enablePrivateDnsZonesForLzs == 'Yes')
      ? deploymentNames_privateDnsPolicyDeployment.properties.outputs.principalId.value
      : 'na')
    roleDefinitionId: roleDefinitions.networkContributor
  }
}

module Microsoft_Resources_deployments_deploymentNames_azVmMonitorPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').azVmMonitorPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && ((enableVmMonitoring == 'Yes') || (enableVmMonitoring == 'Audit')) && (enableVmInsights == 'Yes')) {
  name: deploymentNames.azVmMonitorPolicyDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleVmInsightsResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    userAssignedIdentityResourceId: platformResourceIds.userAssignedIdentityResourceId
    scope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleVmInsightsDeployment
    deploymentNames_userAssignedIdentityDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_azVmMonitorPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').azVmMonitorPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && ((enableVmMonitoring == 'Yes') || (enableVmMonitoring == 'Audit')) && (enableVmInsights == 'Yes')) {
  name: deploymentNames.azVmMonitorPolicyDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleVmInsightsResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    userAssignedIdentityResourceId: platformResourceIds.userAssignedIdentityResourceId
    scope: scopes.lzsManagementGroup
    platformScope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleVmInsightsDeployment
    deploymentNames_userAssignedIdentityDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_azVmssMonitorPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').azVmssMonitorPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && ((enableVmssMonitoring == 'Yes') || (enableVmssMonitoring == 'Audit')) && (enableVmInsights == 'Yes')) {
  name: deploymentNames.azVmssMonitorPolicyDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleVmInsightsResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    userAssignedIdentityResourceId: platformResourceIds.userAssignedIdentityResourceId
    scope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleVmInsightsDeployment
    deploymentNames_userAssignedIdentityDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_azVmssMonitorPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').azVmssMonitorPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && ((enableVmssMonitoring == 'Yes') || (enableVmssMonitoring == 'Audit')) && (enableVmInsights == 'Yes')) {
  name: deploymentNames.azVmssMonitorPolicyDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleVmInsightsResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    userAssignedIdentityResourceId: platformResourceIds.userAssignedIdentityResourceId
    scope: scopes.lzsManagementGroup
    platformScope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleVmInsightsDeployment
    deploymentNames_userAssignedIdentityDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_azVmHybridMonitorPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').azVmHybridMonitorPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && ((enableVmHybridMonitoring == 'Yes') || (enableVmHybridMonitoring == 'Audit')) && (enableVmInsights == 'Yes')) {
  name: deploymentNames.azVmHybridMonitorPolicyDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleVmInsightsResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmHybridMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    scope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleVmInsightsDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_azVmHybridMonitorPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').azVmHybridMonitorPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && ((enableVmHybridMonitoring == 'Yes') || (enableVmHybridMonitoring == 'Audit')) && (enableVmInsights == 'Yes')) {
  name: deploymentNames.azVmHybridMonitorPolicyDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleVmInsightsResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmHybridMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    scope: scopes.lzsManagementGroup
    platformScope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleVmInsightsDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_azureUpdateManagerPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').azureUpdateManagerPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && (enableUpdateMgmt == 'Yes')) {
  name: deploymentNames.azureUpdateManagerPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: 'Default'
    assessmentMode: 'AutomaticByPlatform'
    scope: scopes.platformManagementGroup
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module Microsoft_Resources_deployments_deploymentNames_azureUpdateManagerPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').azureUpdateManagerPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && (enableUpdateMgmt == 'Yes')) {
  name: deploymentNames.azureUpdateManagerPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: 'Default'
    assessmentMode: 'AutomaticByPlatform'
    scope: scopes.lzsManagementGroup
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module Microsoft_Resources_deployments_deploymentNames_ChangeTrackingVmDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').ChangeTrackingVmPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && (enableChangeTracking == 'Yes')) {
  name: deploymentNames.ChangeTrackingVmDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleChangeTrackingResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    userAssignedIdentityResourceId: platformResourceIds.userAssignedIdentityResourceId
    scope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleChangeTrackingDeployment
    deploymentNames_userAssignedIdentityDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_ChangeTrackingVmDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').ChangeTrackingVmPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && (enableChangeTracking == 'Yes')) {
  name: deploymentNames.ChangeTrackingVmDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleChangeTrackingResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    userAssignedIdentityResourceId: platformResourceIds.userAssignedIdentityResourceId
    scope: scopes.lzsManagementGroup
    platformScope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleChangeTrackingDeployment
    deploymentNames_userAssignedIdentityDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_ChangeTrackingVmssDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').ChangeTrackingVmssPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && (enableChangeTracking == 'Yes')) {
  name: deploymentNames.ChangeTrackingVmssDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleChangeTrackingResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    userAssignedIdentityResourceId: platformResourceIds.userAssignedIdentityResourceId
    scope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleChangeTrackingDeployment
    deploymentNames_userAssignedIdentityDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_ChangeTrackingVmssDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').ChangeTrackingVmssPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && (enableChangeTracking == 'Yes')) {
  name: deploymentNames.ChangeTrackingVmssDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleChangeTrackingResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    userAssignedIdentityResourceId: platformResourceIds.userAssignedIdentityResourceId
    scope: scopes.lzsManagementGroup
    platformScope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleChangeTrackingDeployment
    deploymentNames_userAssignedIdentityDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_ChangeTrackingVmArcDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').ChangeTrackingVmArcPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && (enableChangeTracking == 'Yes')) {
  name: deploymentNames.ChangeTrackingVmArcDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleChangeTrackingResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmHybridMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    scope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleChangeTrackingDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_ChangeTrackingVmArcDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').ChangeTrackingVmArcPolicyAssignment]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && (enableChangeTracking == 'Yes')) {
  name: deploymentNames.ChangeTrackingVmArcDeploymentName
  params: {
    dataCollectionRuleResourceId: platformResourceIds.dataCollectionRuleChangeTrackingResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmHybridMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    scope: scopes.lzsManagementGroup
    platformScope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_dataCollectionRuleChangeTrackingDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_MDFCDefenderSqlAmaDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').MDFCDefenderSqlAma]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && (enableAscForSqlOnVm == 'DeployIfNotExists')) {
  name: deploymentNames.MDFCDefenderSqlAmaDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    workspaceRegion: deployment().location
    userWorkspaceResourceId: platformResourceIds.logAnalyticsResourceId
    bringYourOwnDcr: true
    dcrResourceId: platformResourceIds.dataCollectionRuleMdfcDefenderSQLResourceId
    bringYourOwnUserAssignedManagedIdentity: true
    userAssignedIdentityResourceId: platformResourceIds.userAssignedIdentityResourceId
    scope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_userAssignedIdentityDeployment
  ]
}

module Microsoft_Resources_deployments_deploymentNames_MDFCDefenderSqlAmaDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').MDFCDefenderSqlAma]*/ = if (((!empty(managementSubscriptionId)) || (!empty(singlePlatformSubscriptionId))) && (enableLogAnalytics == 'Yes') && (enableAscForSqlOnVm == 'DeployIfNotExists')) {
  name: deploymentNames.MDFCDefenderSqlAmaDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmMonitoring == 'Yes') ? 'Default' : 'DoNotEnforce')
    workspaceRegion: deployment().location
    userWorkspaceResourceId: platformResourceIds.logAnalyticsResourceId
    bringYourOwnDcr: true
    dcrResourceId: platformResourceIds.dataCollectionRuleMdfcDefenderSQLResourceId
    bringYourOwnUserAssignedManagedIdentity: true
    userAssignedIdentityResourceId: platformResourceIds.userAssignedIdentityResourceId
    scope: scopes.lzsManagementGroup
    platformScope: scopes.platformManagementGroup
  }
  dependsOn: [
    deploymentNames_monitoringDeployment
    deploymentNames_userAssignedIdentityDeployment
  ]
}

module deploymentNames_azBackupLzPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').azVmBackupPolicyAssignment]*/ = if ((enableVmBackup == 'Yes') || (enableVmBackup == 'Audit')) {
  name: deploymentNames.azBackupLzPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableVmBackup == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_ddosLzPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').ddosPolicyAssignment]*/ = if (((enableLzDdoS == 'Yes') || (enableLzDdoS == 'Audit')) && (!empty(connectivitySubscriptionId))) {
  name: deploymentNames.ddosLzPolicyDeploymentName
  params: {
    ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableLzDdoS == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    deploymentNames_ddosDeployment
  ]
}

module deploymentNames_aksPrivEscalationPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').aksPrivEscalationPolicyAssignment]*/ = if ((denyAksPrivilegedEscalation == 'Yes') || (denyAksPrivilegedEscalation == 'Audit')) {
  name: deploymentNames.aksPrivEscalationPolicyDeploymentName
  params: {
    enforcementMode: ((denyAksPrivilegedEscalation == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_aksPrivilegedPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').aksPrivilegedPolicyAssignment]*/ = if ((denyAksPrivileged == 'Yes') || (denyAksPrivileged == 'Audit')) {
  name: deploymentNames.aksPrivilegedPolicyDeploymentName
  params: {
    enforcementMode: ((denyAksPrivileged == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_aksHttpsPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').aksHttpsPolicyAssignment]*/ = if ((denyHttpIngressForAks == 'Yes') || (denyHttpIngressForAks == 'Audit')) {
  name: deploymentNames.aksHttpsPolicyDeploymentName
  params: {
    enforcementMode: ((denyHttpIngressForAks == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_TlsSslPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').TlsSslPolicyAssignment]*/ = if ((enableEncryptionInTransit == 'Yes') || (enableEncryptionInTransit == 'Audit')) {
  name: deploymentNames.TlsSslPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableEncryptionInTransit == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_ipFwPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').ipFwdPolicyAssignment]*/ = if ((denyIpForwarding == 'Yes') || (denyIpForwarding == 'Audit')) {
  name: deploymentNames.ipFwPolicyDeploymentName
  params: {
    enforcementMode: ((denyIpForwarding == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_publicEndpointPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').publicEndpointPolicyAssignment]*/ = if ((denyPublicEndpoints == 'Yes') || (denyPublicEndpoints == 'Audit')) {
  name: deploymentNames.publicEndpointPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((denyPublicEndpoints == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_pipOnNicPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').pipOnNicPolicyAssignment]*/ = if ((denyPipOnNicForCorp == 'Yes') || (denyPipOnNicForCorp == 'Audit')) {
  name: deploymentNames.pipOnNicPolicyDeploymentName
  params: {
    enforcementMode: ((denyPipOnNicForCorp == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_mgmtFromInternetPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').mgmtFromInternetPolicyAssignment]*/ = if ((denyMgmtPorts == 'Yes') || (denyMgmtPorts == 'Audit')) {
  name: deploymentNames.mgmtFromInternetPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((denyMgmtPorts == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module Microsoft_Resources_deployments_deploymentNames_privateSubnetDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').privateSubnetPolicyAssignment]*/ = if ((enablePrivateSubnet == 'Yes') || (enablePrivateSubnet == 'Audit')) {
  name: deploymentNames.privateSubnetDeploymentName
  params: {
    enforcementMode: ((enablePrivateSubnet == 'Yes') ? 'Default' : 'DoNotEnforce')
    effect: ((enablePrivateSubnet == 'Yes') ? 'Deny' : 'Audit')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module Microsoft_Resources_deployments_deploymentNames_privateSubnetDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').privateSubnetPolicyAssignment]*/ = if ((enablePrivateSubnet == 'Yes') || (enablePrivateSubnet == 'Audit')) {
  name: deploymentNames.privateSubnetDeploymentName
  params: {
    enforcementMode: ((enablePrivateSubnet == 'Yes') ? 'Default' : 'DoNotEnforce')
    effect: ((enablePrivateSubnet == 'Yes') ? 'Deny' : 'Audit')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_storageHttpsPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').storageHttpsPolicyAssignment]*/ = if ((enableStorageHttps == 'Yes') || (enableStorageHttps == 'Audit')) {
  name: deploymentNames.storageHttpsPolicyDeploymentName
  params: {
    enforcementMode: ((enableStorageHttps == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_kvGuardrailsPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').kvGuardrailsPolicyAssignment]*/ = if ((enforceKvGuardrails == 'Yes') || (enforceKvGuardrails == 'Audit')) {
  name: deploymentNames.kvGuardrailsPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enforceKvGuardrails == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_kvGuardrailsPolicyPlatDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').kvGuardrailsPolicyAssignment]*/ = if ((enforceKvGuardrailsPlat == 'Yes') || (enforceKvGuardrailsPlat == 'Audit')) {
  name: deploymentNames.kvGuardrailsPolicyPlatDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enforceKvGuardrailsPlat == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_backupPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').backupPolicyAssignment]*/ = if ((enforceBackup == 'Yes') || (enforceBackup == 'Audit')) {
  name: deploymentNames.backupPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enforceBackup == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_backupPlatPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').backupPolicyAssignment]*/ = if ((enforceBackupPlat == 'Yes') || (enforceBackupPlat == 'Audit')) {
  name: deploymentNames.backupPlatPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enforceBackupPlat == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_denyHybridNetworkingPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').denyHybridNetworkingPolicyAssignment]*/ = if ((denyHybridNetworking == 'Yes') || (denyHybridNetworking == 'Audit')) {
  name: deploymentNames.denyHybridNetworkingPolicyDeploymentName
  params: {
    enforcementMode: ((denyHybridNetworking == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_auditPeDnsZonesPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').auditPeDnsZonesPolicyAssignment]*/ = if ((auditPeDnsZones == 'Yes') || (auditPeDnsZones == 'Audit')) {
  name: deploymentNames.auditPeDnsZonesPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    privateLinkDnsZones: privateDnsZonesMergedWithBackupPlaceholderRemoved
    enforcementMode: ((auditPeDnsZones == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_auditAppGWWafPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').auditAppGwWafPolicyAssignment]*/ = if ((auditAppGwWaf == 'Yes') || (auditAppGwWaf == 'Audit')) {
  name: deploymentNames.auditAppGwWafPolicyDeploymentName
  params: {
    enforcementMode: ((auditAppGwWaf == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_enforceACSBPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').enforceACSBPolicyAssignment]*/ = if ((enforceACSB == 'Yes') || (enforceACSB == 'Audit')) {
  name: deploymentNames.enforceACSBPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enforceACSB == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_subnetNsgPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').subnetNsgPolicyAssignment]*/ = if ((denySubnetWithoutNsg == 'Yes') || (denySubnetWithoutNsg == 'Audit')) {
  name: deploymentNames.subnetNsgPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((denySubnetWithoutNsg == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_sqlAuditPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').sqlAuditPolicyAssignment]*/ = if ((enableSqlAudit == 'Yes') || (enableSqlAudit == 'Audit')) {
  name: deploymentNames.sqlAuditPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    logAnalyticsResourceId: platformResourceIds.logAnalyticsResourceId
    enforcementMode: ((enableSqlAudit == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    deploymentNames_mgmtSubscriptionPlacement
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
    deploymentNames_monitoringDeployment
    esLiteDeploymentNames_monitoringLiteDeployment
  ]
}

module deploymentNames_sqlAuditRoleAssignmentDeployment1 '?' /*TODO: replace with correct path to [variables('deploymentUris').roleAssignments]*/ = if (enableSqlAudit == 'Yes') {
  name: deploymentNames.sqlAuditRoleAssignmentDeploymentName1
  scope: subscription(singleVsDedicatedMgmtSub)
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    principalId: ((enableSqlAudit == 'Yes')
      ? deploymentNames_sqlAuditPolicyDeployment.properties.outputs.principalId.value
      : 'na')
    roleDefinitionId: '92aaf0da-9dab-42b6-94a3-d43ce8d16293'
  }
}

module deploymentNames_sqlAuditRoleAssignmentDeployment2 '?' /*TODO: replace with correct path to [variables('deploymentUris').roleAssignments]*/ = if (enableSqlAudit == 'Yes') {
  name: deploymentNames.sqlAuditRoleAssignmentDeploymentName2
  scope: subscription(singleVsDedicatedMgmtSub)
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    principalId: ((enableSqlAudit == 'Yes')
      ? deploymentNames_sqlAuditPolicyDeployment.properties.outputs.principalId.value
      : 'na')
    roleDefinitionId: '056cd41c-7e88-42e1-933e-88ba6a50c9c3'
  }
}

module deploymentNames_sqlEncryptionPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').sqlEncryptionPolicyAssignment]*/ = if ((enableSqlEncryption == 'Yes') || (enableSqlEncryption == 'Audit')) {
  name: deploymentNames.sqlEncryptionPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableSqlEncryption == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_sqlThreatPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').sqlThreatPolicyAssignment]*/ = if ((enableSqlThreat == 'Yes') || (enableSqlThreat == 'Audit')) {
  name: deploymentNames.sqlThreatPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableSqlThreat == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_decommissionPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').decommissionPolicyAssignment]*/ = if ((enableDecommissioned == 'Yes') || (enableDecommissioned == 'Audit')) {
  name: deploymentNames.decommissionPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableDecommissioned == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_sandboxPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').sandboxPolicyAssignment]*/ = if ((enableSandbox == 'Yes') || (enableSandbox == 'Audit')) {
  name: deploymentNames.sandboxPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: ((enableSandbox == 'Yes') ? 'Default' : 'DoNotEnforce')
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_azBackupIdentityPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').azVmBackupPolicyAssignment]*/ = if ((enableVmBackupForIdentity == 'Yes') && (!empty(identitySubscriptionId))) {
  name: deploymentNames.azBackupIdentityPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: deterministicRoleAssignmentGuids.backupForIdentity
    enforcementMode: 'Default'
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module deploymentNames_pipPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').pipPolicyAssignment]*/ = if ((denyPipForIdentity == 'Yes') && (!empty(identitySubscriptionId))) {
  name: deploymentNames.pipPolicyDeploymentName
  params: {
    enforcementMode: 'Default'
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
    deploymentNames_identitySubscriptionPlacement
  ]
}

module deploymentNames_subnetNsgIdentityPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').subnetNsgPolicyAssignment]*/ = if ((denySubnetWithoutNsgForIdentity == 'Yes') && (!empty(identitySubscriptionId))) {
  name: deploymentNames.subnetNsgIdentityPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: 'Default'
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
    deploymentNames_identitySubscriptionPlacement
  ]
}

module deploymentNames_mgmtFromInternetIdentityPolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').mgmtFromInternetPolicyAssignment]*/ = if ((denyMgmtPortsForIdentity == 'Yes') && (!empty(identitySubscriptionId))) {
  name: deploymentNames.mgmtFromInternetIdentityPolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: 'Default'
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
    deploymentNames_identitySubscriptionPlacement
  ]
}

module deploymentNames_identityPeeringDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').corpVnetPeering]*/ = if (((enableHub == 'nva') || (enableHub == 'vhub')) && (!empty(identityAddressPrefix))) {
  name: deploymentNames.identityPeeringDeploymentName
  scope: subscription(identitySubscriptionId)
  params: {
    vNetRgName: platformRgNames.identityVnetRg
    vNetName: take('${platformResourceNames.identityVnet}-${uniqueString(identitySubscriptionId)}', 64)
    vNetLocation: connectivityLocation
    vNetCidrRange: identityAddressPrefix
    hubResourceId: platformResourceIds.vNetHubResourceId
    azureFirewallResourceId: ((enableAzFwDnsProxy == 'Yes') ? platformResourceIds.azFirewallResourceId : '')
  }
  dependsOn: [
    deploymentNames_vnetConnectivityHubDeployment
    deploymentNames_vwanConnectivityHubDeployment
    deploymentNames_nvaConnectivityHubDeployment
    deploymentNames_policyDeployment
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_identitySubscriptionPlacement
  ]
}

module deploymentNames_identityPeering2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').corpVnetPeering]*/ = if (((enableHubSecondary == 'nva') || (enableHub == 'vhub')) && (!empty(identityAddressPrefixSecondary))) {
  name: deploymentNames.identityPeering2DeploymentName
  scope: subscription(identitySubscriptionId)
  params: {
    vNetRgName: platformRgNames.identityVnetRgSecondary
    vNetName: take('${platformResourceNames.identityVnetSecondary}-${uniqueString(identitySubscriptionId)}', 64)
    vNetLocation: connectivityLocationSecondary
    vNetCidrRange: identityAddressPrefixSecondary
    hubResourceId: platformResourceIds.vNetHubResourceIdSecondary
    azureFirewallResourceId: ((enableAzFwDnsProxySecondary == 'Yes')
      ? platformResourceIds.azFirewallResourceIdSecondary
      : '')
  }
  dependsOn: [
    deploymentNames_vnetConnectivityHub2Deployment
    deploymentNames_vwanConnectivityHubDeployment
    deploymentNames_nvaConnectivityHub2Deployment
    deploymentNames_policyDeployment
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_identitySubscriptionPlacement
  ]
}

module deploymentNames_identityVwanPeeringDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').corpVwanPeering]*/ = if ((enableHub == 'vwan') && (!empty(identityAddressPrefix))) {
  name: deploymentNames.identityVwanPeeringDeploymentName
  scope: subscription(identitySubscriptionId)
  params: {
    vNetRgName: platformRgNames.identityVnetRg
    vNetName: take('${platformResourceNames.identityVnet}-${uniqueString(identitySubscriptionId)}', 64)
    vNetLocation: connectivityLocation
    vNetCidrRange: identityAddressPrefix
    vWanHubResourceId: platformResourceIds.vWanHubResourceId
    azureFirewallResourceId: ((enableAzFwDnsProxy == 'Yes') ? platformResourceIds.azFirewallResourceId : '')
  }
  dependsOn: [
    deploymentNames_vnetConnectivityHubDeployment
    deploymentNames_vwanConnectivityHubDeployment
    deploymentNames_nvaConnectivityHubDeployment
    deploymentNames_policyDeployment
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_identitySubscriptionPlacement
  ]
}

module deploymentNames_identityVwanPeering2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').corpVwanPeering]*/ = if ((enableHubSecondary == 'vwan') && (!empty(identityAddressPrefixSecondary))) {
  name: deploymentNames.identityVwanPeering2DeploymentName
  scope: subscription(identitySubscriptionId)
  params: {
    vNetRgName: platformRgNames.identityVnetRgSecondary
    vNetName: take('${platformResourceNames.identityVnetSecondary}-${uniqueString(identitySubscriptionId)}', 64)
    vNetLocation: connectivityLocationSecondary
    vNetCidrRange: identityAddressPrefixSecondary
    vWanHubResourceId: platformResourceIds.vWanHubResourceIdSecondary
    azureFirewallResourceId: ((enableAzFwDnsProxySecondary == 'Yes')
      ? platformResourceIds.azFirewallResourceIdSecondaryVwan
      : '')
  }
  dependsOn: [
    deploymentNames_vnetConnectivityHub2Deployment
    deploymentNames_vwanConnectivityHubDeployment
    deploymentNames_nvaConnectivityHub2Deployment
    deploymentNames_policyDeployment
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    deploymentNames_identitySubscriptionPlacement
  ]
}

module deploymentNames_onlineLzSubs '?' /*TODO: replace with correct path to [variables('deploymentUris').subscriptionPlacement]*/ = [
  for (item, i) in onlineLzSubscriptionId: {
    name: concat(deploymentNames.onlineLzSubs, i)
    params: {
      targetManagementGroupId: mgmtGroups.online
      subscriptionId: concat(item)
    }
    dependsOn: [
      deploymentNames_policyDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
    ]
  }
]

module deploymentNames_corpLzSubs '?' /*TODO: replace with correct path to [variables('deploymentUris').subscriptionPlacement]*/ = [
  for (item, i) in corpLzSubscriptionId: {
    name: concat(deploymentNames.corpLzSubs, i)
    params: {
      targetManagementGroupId: mgmtGroups.corp
      subscriptionId: concat(item)
    }
    dependsOn: [
      deploymentNames_policyDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
    ]
  }
]

module deploymentNames_corpConnectedMoveLzSubs '?' /*TODO: replace with correct path to [variables('deploymentUris').subscriptionPlacement]*/ = [
  for (item, i) in corpConnectedLzSubscriptionId: {
    name: concat(deploymentNames.corpConnectedMoveLzSubs, i)
    params: {
      targetManagementGroupId: mgmtGroups.corp
      subscriptionId: item.subs
    }
    dependsOn: [
      deploymentNames_policyDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
    ]
  }
]

module deploymentNames_corpPeeringDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').corpVnetPeering]*/ = [
  for (item, i) in corpConnectedLzSubscriptionId: {
    name: concat(deploymentNames.corpPeeringDeploymentName, i)
    scope: subscription(((!empty(corpConnectedLzSubscriptionId)) ? item.subs : ''))
    params: {
      vNetRgName: platformRgNames.lzVnetRg
      vNetName: take('${platformResourceNames.lzVnet}-${item.subs}', 64)
      vNetLocation: connectivityLocation
      vNetCidrRange: item.addresses
      hubResourceId: platformResourceIds.vNetHubResourceId
      azureFirewallResourceId: ((enableAzFwDnsProxy == 'Yes') ? platformResourceIds.azFirewallResourceId : '')
    }
    dependsOn: [
      deploymentNames_vnetConnectivityHubDeployment
      deploymentNames_vwanConnectivityHubDeployment
      deploymentNames_nvaConnectivityHubDeployment
      deploymentNames_ddosLzPolicyDeployment
      deploymentNames_policyDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_ascPolicyDeployment
      deploymentNames_ascGovPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      deploymentNames_corpConnectedMoveLzSubs
    ]
  }
]

module esLiteDeploymentNames_mgmtGroupLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').managementGroupsLite]*/ = if (!empty(singlePlatformSubscriptionId)) {
  name: esLiteDeploymentNames.mgmtGroupLiteDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
  }
}

module esLiteDeploymentNames_platformLiteSubscriptionPlacement '?' /*TODO: replace with correct path to [variables('deploymentUris').subscriptionPlacement]*/ = if (!empty(singlePlatformSubscriptionId)) {
  name: esLiteDeploymentNames.platformLiteSubscriptionPlacement
  params: {
    targetManagementGroupId: mgmtGroups.platform
    subscriptionId: singlePlatformSubscriptionId
  }
  dependsOn: [
    esLiteDeploymentNames_mgmtGroupLiteDeployment
  ]
}

module esLiteDeploymentNames_monitoringLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').monitoring]*/ = if ((enableLogAnalytics == 'Yes') && (!empty(singlePlatformSubscriptionId))) {
  name: esLiteDeploymentNames.monitoringLiteDeploymentName
  scope: subscription(singlePlatformSubscriptionId)
  params: {
    rgName: platformRgNames.mgmtRg
    workspaceName: platformResourceNames.logAnalyticsWorkspace
    workspaceRegion: deployment().location
    retentionInDays: retentionInDays
    enableSentinel: enableSentinel
  }
  dependsOn: [
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
    Microsoft_Resources_deployments_alz_prerequisites
  ]
}

module esLiteDeploymentNames_userAssignedIdentityLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').userAssignedIdentity]*/ = if ((enableLogAnalytics == 'Yes') && (!empty(singlePlatformSubscriptionId))) {
  name: esLiteDeploymentNames.userAssignedIdentityLiteDeploymentName
  scope: subscription(singlePlatformSubscriptionId)
  params: {
    location: deployment().location
    userAssignedIdentityName: platformResourceNames.userAssignedIdentity
    userAssignedIdentityResourceGroup: platformRgNames.mgmtRg
  }
  dependsOn: [
    esLiteDeploymentNames_monitoringLiteDeployment
  ]
}

module esLiteDeploymentNames_ddosRgLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').resourceGroup]*/ = if ((enableDdoS == 'Yes') && (!empty(singlePlatformSubscriptionId))) {
  name: esLiteDeploymentNames.ddosRgLiteDeploymentName
  scope: subscription(singlePlatformSubscriptionId)
  params: {
    rgName: platformRgNames.ddosRg
    location: connectivityLocation
  }
  dependsOn: [
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
  ]
}

module esLiteDeploymentNames_ddosLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').ddosProtection]*/ = if ((enableDdoS == 'Yes') && (!empty(singlePlatformSubscriptionId))) {
  name: esLiteDeploymentNames.ddosLiteDeploymentName
  scope: resourceGroup(singlePlatformSubscriptionId, platformRgNames.ddosRg)
  params: {
    ddosName: platformResourceNames.ddosName
    location: connectivityLocation
  }
  dependsOn: [
    esLiteDeploymentNames_ddosRgLiteDeployment
  ]
}

module esLitedeploymentNames_privateDnsZoneRgLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').resourceGroup]*/ = if ((enablePrivateDnsZones == 'Yes') && (!empty(singlePlatformSubscriptionId))) {
  name: esLiteDeploymentNames.privateDnsZoneRgLiteDeploymentName
  scope: subscription(singlePlatformSubscriptionId)
  params: {
    rgName: platformRgNames.privateDnsRg
    location: connectivityLocation
  }
  dependsOn: [
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    esLitedeploymentNames_vnetConnectivityHubLiteDeployment
    esLitedeploymentNames_vwanConnectivityHubLiteDeployment
    esLitedeploymentNames_nvaConnectivityHubLiteDeployment
  ]
}

module esLitedeploymentNames_privateDnsZoneRgLite2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').resourceGroup]*/ = if ((enablePrivateDnsZonesSecondary == 'Yes') && (!empty(singlePlatformSubscriptionId))) {
  name: esLiteDeploymentNames.privateDnsZoneRgLite2DeploymentName
  scope: subscription(singlePlatformSubscriptionId)
  params: {
    rgName: platformRgNames.privateDnsRg2
    location: connectivityLocationSecondary
  }
  dependsOn: [
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    esLitedeploymentNames_vnetConnectivityHubLite2Deployment
    esLitedeploymentNames_nvaConnectivityHubLite2Deployment
  ]
}

module esLitedeploymentNames_privateDnsZonesLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').privateDnsZones]*/ = [
  for (item, i) in privateDnsZonesMergedWithBackupPlaceholderRemoved: {
    name: concat(esLiteDeploymentNames.privateDnsZonesLiteDeploymentName, i)
    scope: resourceGroup(singlePlatformSubscriptionId, platformRgNames.privateDnsRg)
    params: {
      privateDnsZoneName: concat(item)
      connectivityHubResourceId: platformResourceIds.vNetHubResourceId
      connectivityHubResourceIdSecondary: platformResourceIds.vNetHubResourceIdSecondary
      enablePrivateDnsZonesSecondary: enablePrivateDnsZonesSecondary
      enableHubSecondary: enableSecondaryRegion
    }
    dependsOn: [
      esLitedeploymentNames_privateDnsZoneRgLiteDeployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vnetConnectivityHubLiteDeployment
      esLitedeploymentNames_vwanConnectivityHubLiteDeployment
      esLitedeploymentNames_nvaConnectivityHubLiteDeployment
      esLitedeploymentNames_vnetConnectivityHubLite2Deployment
      esLitedeploymentNames_nvaConnectivityHubLite2Deployment
    ]
  }
]

module esLitedeploymentNames_privateDnsZonesLite2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').privateDnsZones]*/ = [
  for (item, i) in privateDnsZonesMergedWithBackupPlaceholderRemoved: {
    name: concat(esLiteDeploymentNames.privateDnsZonesLite2DeploymentName, i)
    scope: resourceGroup(singlePlatformSubscriptionId, platformRgNames.privateDnsRg2)
    params: {
      privateDnsZoneName: concat(item)
      connectivityHubResourceId: platformResourceIds.vNetHubResourceIdSecondary
      connectivityHubResourceIdSecondary: 'placeholder'
      enablePrivateDnsZonesSecondary: enablePrivateDnsZonesSecondary
      enableHubSecondary: 'No'
    }
    dependsOn: [
      esLitedeploymentNames_privateDnsZoneRgLite2Deployment
      deploymentNames_activityDiagnosticsPolicyDeployment
      deploymentNames_resourceDiagnosticsPolicyDeployment
      esLitedeploymentNames_vnetConnectivityHubLite2Deployment
      esLitedeploymentNames_nvaConnectivityHubLite2Deployment
    ]
  }
]

module esLiteDeploymentNames_ddosHubLitePolicyDeployment '?' /*TODO: replace with correct path to [variables('esLiteDeploymentNames').ddosHubLitePolicyDeploymentName]*/ = if (((enableDdoS == 'Yes') && (enableHub == 'vhub')) && (!empty(singlePlatformSubscriptionId)) && (enableHub == 'Yes')) {
  name: esLiteDeploymentNames.ddosHubLitePolicyDeploymentName
  params: {
    ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
    topLevelManagementGroupPrefix: deterministicRoleAssignmentGuids.ddosForConnectivity
    enforcementMode: 'Default'
  }
  dependsOn: [
    esLiteDeploymentNames_ddosLiteDeployment
  ]
}

module esLitedeploymentNames_vnetConnectivityHubLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').vnetConnectivityHub]*/ = if ((!empty(singlePlatformSubscriptionId)) && (enableHub == 'vhub')) {
  name: esLiteDeploymentNames.vnetConnectivityHubLiteDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
    enableHub: enableHub
    enableAzFw: enableAzFw
    addressPrefix: addressPrefix
    enableVpnGw: enableVpnGw
    enableErGw: enableErGw
    enableDdoS: enableDdoS
    location: connectivityLocation
    connectivitySubscriptionId: singlePlatformSubscriptionId
    subnetMaskForAzFw: subnetMaskForAzFw
    subnetMaskForAzFwMgmt: subnetMaskForAzFwMgmt
    subnetMaskForGw: subnetMaskForGw
    firewallSku: firewallSku
    firewallZones: firewallZones
    enableAzFwDnsProxy: enableAzFwDnsProxy
    enableVpnActiveActive: enableVpnActiveActive
    gwRegionalOrAz: gwRegionalOrAz
    gwAzSku: gwAzSku
    gwRegionalSku: gwRegionalSku
    erRegionalOrAz: erRegionalOrAz
    erAzSku: erAzSku
    erRegionalSku: erRegionalSku
  }
  dependsOn: [
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    esLiteDeploymentNames_ddosHubLitePolicyDeployment
  ]
}

module esLitedeploymentNames_nvaConnectivityHubLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').nvaConnectivityHub]*/ = if ((!empty(singlePlatformSubscriptionId)) && (enableHub == 'nva')) {
  name: esLiteDeploymentNames.nvaConnectivityHubLiteDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
    enableHub: enableHub
    addressPrefix: addressPrefix
    enableVpnGw: enableVpnGw
    enableErGw: enableErGw
    enableDdoS: enableDdoS
    location: connectivityLocation
    connectivitySubscriptionId: singlePlatformSubscriptionId
    subnetMaskForGw: subnetMaskForGw
    enableVpnActiveActive: enableVpnActiveActive
    gwRegionalOrAz: gwRegionalOrAz
    gwAzSku: gwAzSku
    gwRegionalSku: gwRegionalSku
    erRegionalOrAz: erRegionalOrAz
    erAzSku: erAzSku
    erRegionalSku: erRegionalSku
  }
  dependsOn: [
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    esLiteDeploymentNames_ddosHubLitePolicyDeployment
  ]
}

module esLitedeploymentNames_vwanConnectivityHubLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').vwanConnectivityHub]*/ = if ((!empty(singlePlatformSubscriptionId)) && (enableHub == 'vwan')) {
  name: esLiteDeploymentNames.vwanConnectivityHubLiteDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enableHub: enableHub
    enableAzFw: enableAzFw
    firewallSku: firewallSku
    firewallZones: firewallZones
    addressPrefix: addressPrefix
    enableVpnGw: enableVpnGw
    enableErGw: enableErGw
    location: connectivityLocation
    connectivitySubscriptionId: singlePlatformSubscriptionId
    expressRouteScaleUnit: expressRouteScaleUnit
    vpnGateWayScaleUnit: vpnGateWayScaleUnit
    enableVWANRoutingIntent: enableVWANRoutingIntent
    internetTrafficRoutingPolicy: internetTrafficRoutingPolicy
    privateTrafficRoutingPolicy: privateTrafficRoutingPolicy
    vWANHubRoutingPreference: vWANHubRoutingPreference
    vWanHubCapacity: vWANHubCapacity
    enableHubSecondary: enableHubSecondary
    enableAzFwSecondary: enableAzFwSecondary
    firewallSkuSecondary: firewallSkuSecondary
    firewallZonesSecondary: firewallZonesSecondary
    enableAzFwDnsProxySecondary: enableAzFwDnsProxySecondary
    addressPrefixSecondary: addressPrefixSecondary
    enableVpnGwSecondary: enableVpnGwSecondary
    enableErGwSecondary: enableErGwSecondary
    locationSecondary: connectivityLocationSecondary
    expressRouteScaleUnitSecondary: expressRouteScaleUnitSecondary
    vpnGateWayScaleUnitSecondary: vpnGateWayScaleUnitSecondary
    enableVWANRoutingIntentSecondary: enableVWANRoutingIntentSecondary
    internetTrafficRoutingPolicySecondary: internetTrafficRoutingPolicySecondary
    privateTrafficRoutingPolicySecondary: privateTrafficRoutingPolicySecondary
    vWANHubRoutingPreferenceSecondary: vWANHubRoutingPreferenceSecondary
    vWANHubCapacitySecondary: vWANHubCapacitySecondary
  }
  dependsOn: [
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    esLiteDeploymentNames_ddosHubLitePolicyDeployment
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
  ]
}

module esLitedeploymentNames_vnetConnectivityHubLite2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').vnetConnectivityHub]*/ = if ((!empty(singlePlatformSubscriptionId)) && (enableSecondaryRegion == 'Yes') && (enableHubSecondary == 'vhub')) {
  name: esLiteDeploymentNames.vnetConnectivityHubLite2DeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
    enableHub: enableHubSecondary
    enableAzFw: enableAzFwSecondary
    addressPrefix: addressPrefixSecondary
    enableVpnGw: enableVpnGwSecondary
    enableErGw: enableErGwSecondary
    enableDdoS: enableDdoS
    location: connectivityLocationSecondary
    connectivitySubscriptionId: singlePlatformSubscriptionId
    subnetMaskForAzFw: subnetMaskForAzFwSecondary
    subnetMaskForAzFwMgmt: subnetMaskForAzFwMgmtSecondary
    subnetMaskForGw: subnetMaskForGwSecondary
    firewallSku: firewallSkuSecondary
    firewallZones: firewallZonesSecondary
    enableAzFwDnsProxy: enableAzFwDnsProxySecondary
    enableVpnActiveActive: enableVpnActiveActiveSecondary
    gwRegionalOrAz: gwRegionalOrAzSecondary
    gwAzSku: gwAzSkuSecondary
    gwRegionalSku: gwRegionalSkuSecondary
    erRegionalOrAz: erRegionalOrAzSecondary
    erAzSku: erAzSkuSecondary
    erRegionalSku: erRegionalSkuSecondary
  }
  dependsOn: [
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    esLiteDeploymentNames_ddosHubLitePolicyDeployment
  ]
}

module esLitedeploymentNames_nvaConnectivityHubLite2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').nvaConnectivityHub]*/ = if ((!empty(singlePlatformSubscriptionId)) && (enableSecondaryRegion == 'Yes') && (enableHubSecondary == 'nva')) {
  name: esLiteDeploymentNames.nvaConnectivityHubLite2DeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    ddosPlanResourceId: platformResourceIds.ddosProtectionResourceId
    enableHub: enableHubSecondary
    addressPrefix: addressPrefixSecondary
    enableVpnGw: enableVpnGwSecondary
    enableErGw: enableErGwSecondary
    enableDdoS: enableDdoS
    location: connectivityLocationSecondary
    connectivitySubscriptionId: singlePlatformSubscriptionId
    subnetMaskForGw: subnetMaskForGwSecondary
    enableVpnActiveActive: enableVpnActiveActiveSecondary
    gwRegionalOrAz: gwRegionalOrAzSecondary
    gwAzSku: gwAzSkuSecondary
    gwRegionalSku: gwRegionalSkuSecondary
    erRegionalOrAz: erRegionalOrAzSecondary
    erAzSku: erAzSkuSecondary
    erRegionalSku: erRegionalSkuSecondary
  }
  dependsOn: [
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
    deploymentNames_asbPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    esLiteDeploymentNames_ddosHubLitePolicyDeployment
  ]
}

module esLitedeploymentNames_hubPeeringDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').hubVnetPeering]*/ = if ((!empty(singlePlatformSubscriptionId)) && ((enableHub == 'nva') || (enableHub == 'vhub')) && ((enableHubSecondary == 'nva') || (enableHubSecondary == 'vhub')) && (enableSecondaryRegion == 'Yes')) {
  name: esLiteDeploymentNames.hubPeeringDeploymentName
  scope: subscription(singlePlatformSubscriptionId)
  params: {
    hubResourceId: platformResourceIds.vNetHubResourceId
    hubResourceIdSecondary: platformResourceIds.vNetHubResourceIdSecondary
    hubLocation: connectivityLocation
    hubLocationSecondary: connectivityLocationSecondary
    hubRgName: '${enterpriseScaleCompanyPrefix}-vnethub-${connectivityLocation}'
    hubRgNameSecondary: '${enterpriseScaleCompanyPrefix}-vnethub-${connectivityLocationSecondary}'
  }
  dependsOn: [
    deploymentNames_vnetConnectivityHubDeployment
    deploymentNames_vwanConnectivityHubDeployment
    deploymentNames_nvaConnectivityHubDeployment
    deploymentNames_ddosLzPolicyDeployment
    deploymentNames_policyDeployment
    deploymentNames_activityDiagnosticsPolicyDeployment
    deploymentNames_ascPolicyDeployment
    deploymentNames_ascGovPolicyDeployment
    deploymentNames_resourceDiagnosticsPolicyDeployment
    esLitedeploymentNames_vwanConnectivityHubLiteDeployment
    esLitedeploymentNames_vnetConnectivityHubLiteDeployment
    esLitedeploymentNames_nvaConnectivityHubLiteDeployment
    esLitedeploymentNames_vnetConnectivityHubLite2Deployment
    esLitedeploymentNames_nvaConnectivityHubLite2Deployment
    deploymentNames_corpConnectedMoveLzSubs
  ]
}

module esLitedeploymentNames_vnetConnectivityRouteTableDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').hubVnetRouting]*/ = if ((!empty(singlePlatformSubscriptionId)) && (enableHub == 'vhub') && (enableAzFw == 'Yes') && (enableAzFwSecondary == 'Yes')) {
  name: esLiteDeploymentNames.vnetConnectivityRouteTableDeploymentName
  scope: resourceGroup(singlePlatformSubscriptionId, platformRgNames.connectivityRg)
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    connectivityHubResourceId: platformResourceIds.vNetHubResourceId
    subnetName: 'AzureFirewallSubnet'
    cidrRange: addressPrefixSecondary
    targetFWSubnetCidr: subnetMaskForAzFwSecondary
    sourceFWSubnetCidr: subnetMaskForAzFw
    hubLocation: connectivityLocation
  }
  dependsOn: [
    esLitedeploymentNames_privateDnsZoneRgLiteDeployment
    esLitedeploymentNames_vnetConnectivityHubLiteDeployment
    esLitedeploymentNames_nvaConnectivityHubLiteDeployment
    esLitedeploymentNames_vnetConnectivityHubLite2Deployment
    esLitedeploymentNames_nvaConnectivityHubLite2Deployment
    esLitedeploymentNames_hubPeeringDeployment
  ]
}

module esLitedeploymentNames_vnetConnectivityRouteTable2Deployment '?' /*TODO: replace with correct path to [variables('deploymentUris').hubVnetRouting]*/ = if ((!empty(singlePlatformSubscriptionId)) && (enableHub == 'vhub') && (enableAzFw == 'Yes') && (enableAzFwSecondary == 'Yes')) {
  name: esLiteDeploymentNames.vnetConnectivityRouteTable2DeploymentName
  scope: resourceGroup(singlePlatformSubscriptionId, platformRgNames.connectivityRgSecondary)
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    connectivityHubResourceId: platformResourceIds.vNetHubResourceIdSecondary
    subnetName: 'AzureFirewallSubnet'
    cidrRange: addressPrefix
    targetFWSubnetCidr: subnetMaskForAzFw
    sourceFWSubnetCidr: subnetMaskForAzFwSecondary
    hubLocation: connectivityLocationSecondary
  }
  dependsOn: [
    esLitedeploymentNames_privateDnsZoneRgLiteDeployment
    esLitedeploymentNames_vnetConnectivityHubLiteDeployment
    esLitedeploymentNames_nvaConnectivityHubLiteDeployment
    esLitedeploymentNames_vnetConnectivityHubLite2Deployment
    esLitedeploymentNames_nvaConnectivityHubLite2Deployment
    esLitedeploymentNames_hubPeeringDeployment
  ]
}

module esLiteDeploymentNames_dataCollectionRuleVmInsightsLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').dataCollectionRuleVmInsights]*/ = if ((!empty(singlePlatformSubscriptionId)) && (enableLogAnalytics == 'Yes') && (enableVmInsights == 'Yes')) {
  name: esLiteDeploymentNames.dataCollectionRuleVmInsightsLiteDeploymentName
  scope: subscription(singlePlatformSubscriptionId)
  params: {
    WorkspaceResourceId: platformResourceIds.logAnalyticsResourceId
    WorkspaceLocation: deployment().location
    userGivenDcrName: platformResourceNames.dataCollectionRuleVmInsights
  }
  dependsOn: [
    esLiteDeploymentNames_monitoringLiteDeployment
  ]
}

module esLiteDeploymentNames_dataCollectionRuleChangeTrackingLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').dataCollectionRuleChangeTracking]*/ = if ((!empty(singlePlatformSubscriptionId)) && (enableLogAnalytics == 'Yes') && (enableChangeTracking == 'Yes')) {
  name: esLiteDeploymentNames.dataCollectionRuleChangeTrackingLiteDeploymentName
  scope: subscription(singlePlatformSubscriptionId)
  params: {
    WorkspaceResourceId: platformResourceIds.logAnalyticsResourceId
    WorkspaceLocation: deployment().location
    dataCollectionRuleName: platformResourceNames.dataCollectionRuleChangeTracking
  }
  dependsOn: [
    esLiteDeploymentNames_monitoringLiteDeployment
  ]
}

module esLiteDeploymentNames_dataCollectionRuleMdfcDefenderSQLLiteDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').dataCollectionRuleMdfcDefenderSQL]*/ = if ((!empty(singlePlatformSubscriptionId)) && (enableLogAnalytics == 'Yes') && (enableAscForSqlOnVm == 'DeployIfNotExists')) {
  name: esLiteDeploymentNames.dataCollectionRuleMdfcDefenderSQLLiteDeploymentName
  scope: subscription(singlePlatformSubscriptionId)
  params: {
    WorkspaceResourceId: platformResourceIds.logAnalyticsResourceId
    WorkspaceLocation: deployment().location
    userGivenDcrName: platformResourceNames.dataCollectionRuleMdfcDefenderSql
  }
  dependsOn: [
    esLiteDeploymentNames_monitoringLiteDeployment
  ]
}

module esLitedeploymentNames_azBackupIdentityLitePolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').azVmBackupPolicyAssignment]*/ = if ((enableVmBackupForIdentity == 'Yes') && (!empty(singlePlatformSubscriptionId))) {
  name: esLiteDeploymentNames.azBackupIdentityLitePolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: deterministicRoleAssignmentGuids.backupForIdentity
    enforcementMode: 'Default'
  }
  dependsOn: [
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
  ]
}

module esLitedeploymentNames_subnetNsgIdentityLitePolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').subnetNsgPolicyAssignment]*/ = if ((denySubnetWithoutNsgForIdentity == 'Yes') && (!empty(singlePlatformSubscriptionId))) {
  name: esLiteDeploymentNames.subnetNsgIdentityLitePolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: 'Default'
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
  ]
}

module esLitedeploymentNames_mgmtFromInternetIdentityLitePolicyDeployment '?' /*TODO: replace with correct path to [variables('deploymentUris').mgmtFromInternetPolicyAssignment]*/ = if ((denyMgmtPortsForIdentity == 'Yes') && (!empty(singlePlatformSubscriptionId))) {
  name: esLiteDeploymentNames.mgmtFromInternetIdentityLitePolicyDeploymentName
  params: {
    topLevelManagementGroupPrefix: enterpriseScaleCompanyPrefix
    enforcementMode: 'Default'
  }
  dependsOn: [
    Microsoft_Resources_deployments_alz_prerequisites
    esLiteDeploymentNames_platformLiteSubscriptionPlacement
  ]
}

module deploymentNames_pidCuaDeployment './nested_deploymentNames_pidCuaDeployment.bicep' = if (telemetryOptOut == 'No') {
  name: deploymentNames.pidCuaDeploymentName
  params: {}
}

module deploymentNames_pidCuaDeploymentNameSinglePlatformSub './nested_deploymentNames_pidCuaDeploymentNameSinglePlatformSub.bicep' = if ((telemetryOptOut == 'No') && (!empty(singlePlatformSubscriptionId))) {
  name: deploymentNames.pidCuaDeploymentNameSinglePlatformSub
  params: {}
}

module deploymentNames_pidCuaDeploymentNameMultiPlatformSubs './nested_deploymentNames_pidCuaDeploymentNameMultiPlatformSubs.bicep' = if ((telemetryOptOut == 'No') && empty(singlePlatformSubscriptionId)) {
  name: deploymentNames.pidCuaDeploymentNameMultiPlatformSubs
  params: {}
}

module deploymentNames_pidCuaDeploymentNameNetworkingNone './nested_deploymentNames_pidCuaDeploymentNameNetworkingNone.bicep' = if ((telemetryOptOut == 'No') && (enableHub == 'No')) {
  name: deploymentNames.pidCuaDeploymentNameNetworkingNone
  params: {}
}

module deploymentNames_pidCuaDeploymentNameNetworkingHubSpoke './nested_deploymentNames_pidCuaDeploymentNameNetworkingHubSpoke.bicep' = if ((telemetryOptOut == 'No') && ((enableHub == 'vhub') || (enableHub == 'nva'))) {
  name: deploymentNames.pidCuaDeploymentNameNetworkingHubSpoke
  params: {}
}

module deploymentNames_pidCuaDeploymentNameNetworkingVirtualWan './nested_deploymentNames_pidCuaDeploymentNameNetworkingVirtualWan.bicep' = if ((telemetryOptOut == 'No') && (enableHub == 'vwan')) {
  name: deploymentNames.pidCuaDeploymentNameNetworkingVirtualWan
  params: {}
}

module deploymentNames_ambaPortalPidCuaDeployment './nested_deploymentNames_ambaPortalPidCuaDeployment.bicep' = if ((telemetryOptOut == 'No') && (enableMonitorBaselines == 'Yes')) {
  name: deploymentNames.ambaPortalPidCuaDeploymentName
  params: {}
}

module deploymentNames_pidCuaDeploymentNameSecondaryRegion './nested_deploymentNames_pidCuaDeploymentNameSecondaryRegion.bicep' = if ((telemetryOptOut == 'No') && (enableSecondaryRegion == 'Yes')) {
  name: deploymentNames.pidCuaDeploymentNameSecondaryRegion
  params: {}
}

output deployment string = '${deployment().name} has successfully deployed. Welcome to Azure Landing Zones!'
