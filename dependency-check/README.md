# Integrate OWASP Dependency Check

Execute OWASP Dependency Check for `dependency-check/target` and link to Vuls.

```powershell
# Prepare Data Dir(only do it once)
.\init.ps1

# Execute OWASP Dependency Check
.\check.ps1
```

And then, edit `servers.hostname.owaspDCXMLPath`.

```config.toml
[servers]

[servers.sample]
host            = "192.168.1.2"
port            = "22"
user            = "admin"
sshConfigPath   = "/root/.ssh/config"
keyPath         = "/root/.ssh/id_rsa"
scanMode        = ["fast"]
# path to OWASP Dependency Check Report in docker
owaspDCXMLPath  ="/vuls/dependency-check/odc-reports/dependency-check-report.xml"
```
