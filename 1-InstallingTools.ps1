# Installing tools
# assume choco, the required Powershell Azure modules, Azure CLi and Visual STudio Code are installed
# If not do it as below
# download and install chocolatey 
# (on windows shell -- using administrative privileges)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
# Install vscode
choco install vscode -y 
choco install azure-cli -y
#install powershell azure modules accounts and resources
Install-Module Az.Accounts
Install-Module Az.Resources

#Install the vscode Bicep Extenensions

#Bicep CLI &# Self contained for Az cli
az bicep install
az bicep upgrage 
az bicep version

# Manual for Powershell
bicep --version
choco install bicep -y
choco upgrade bicep -y
bicep --version


#install chocolatey, VScode, Powershell Modules, Bicep CLI Az accountsInstall the vscode Bicep Extenensions
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
# Install vscode
choco install vscode -y 
choco install azure-cli -y
#install powershell azure modules accounts and resources
Install-Module Az.Accounts
Install-Module Az.Resources
az bicep install
choco install bicep -y
choco upgrade bicep -y
bicep --version





