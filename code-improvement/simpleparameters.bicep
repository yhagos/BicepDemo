param clusterName string = 'akacluster-001'
@minValue(1)
@maxValue(50)
param agentCount int = 3
param agentVMSize string = 'Standard_D2s_v3'
param sshRSPublicKey string
