Building a nupkg for the snet utilty so it can be installed via Chocolatey.

https://github.com/mkinney/snet

See session.txt for a session where these commands are run.

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

