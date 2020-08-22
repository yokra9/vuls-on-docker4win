# vuls-on-docker4win

Execute [future-architect/vuls](https://github.com/future-architect/vuls) on Docker Desktop for Windows.

```powershell
# Prepare Log Dir and vuln-list repository(only do it once)
.\init.ps1

# Fetch Security Information
.\fetch.ps1

# Prepare Custom Docker Image
docker build -t vuls .

# Execute vuls
.\vuls.ps1 configtest -config="/vuls/config.toml"
.\vuls.ps1 scan -config="/vuls/config.toml"

```
