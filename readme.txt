Building a nupkg for the snet utilty so it can be installed via Chocolatey.

https://github.com/mkinney/snet

See session.txt for a session where these commands are run.

For using:
# install chocolatey, downloading the nupkg, and installing it
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Invoke-WebRequest -OutFile snet.0.4.0.nupkg -Uri https://github.com/mkinney/snet_win/releases/download/0.4.0/snet.0.4.0.nupkg
choco install snet --version="0.4.0" --source="."


For building:

# make sure "snet" is not installed
choco list

# build snet.0.4.0.nupkg
choco pack

# install that nupkg
choco install snet --version="0.4.0" --source="."

# make sure "snet" is installed
choco list

# run
snet --help

# uninstall
choco uninstall snet

