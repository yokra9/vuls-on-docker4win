# Step0. Prepare Log Dir
mkdir "go-cve-dictionary-log", "goval-dictionary-log", "gost-log", "go-exploitdb-log", "go-msfdb-log"

# Step0.5 Prepare vuln-list repository
mkdir "vuln-list"
Set-Location "vuln-list"
git init
git config core.protectNTFS false
git config core.sparsecheckout true # for git 2.25 or later
git config core.longpaths true
git remote add origin "https://github.com/aquasecurity/vuln-list.git"
Copy-Item "..\sparse-checkout" ".git\info"
git pull origin master
Set-Location "..\"