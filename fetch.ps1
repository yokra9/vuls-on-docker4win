# Step1. Fetch NVD
2002..(Get-Date).Year | ForEach-Object {
    docker run --rm -it -v "${PWD}:/vuls" -v "${PWD}\go-cve-dictionary-log:/var/log/vuls" "vuls/go-cve-dictionary" fetchnvd -years $_; 
}

# Step1.5. Fetch JVN
2002..(Get-Date).Year | ForEach-Object {
    docker run --rm -it -v "${PWD}:/vuls" -v "${PWD}\go-cve-dictionary-log:/var/log/vuls" "vuls/go-cve-dictionary" fetchjvn -years $_; 
}

# Step2. Fetch OVAL for RedHat
docker run --rm -it -v "${PWD}:/vuls" -v "${PWD}/goval-dictionary-log:/var/log/vuls" "vuls/goval-dictionary" "fetch-redhat" 5 6 7

# Step3. Fetch Go Security Tracker for RedHat
docker run --rm -i -v "${PWD}:/vuls" -v "${PWD}/gost-log:/var/log/gost" "vuls/gost" fetch redhat

# Step3.5. Fetch go-exploitdb
docker run --rm -i -v "${PWD}:/vuls" -v "${PWD}/go-exploitdb-log:/var/log/go-exploitdb" "vuls/go-exploitdb" fetch exploitdb

# Step3.6. Fetch go-msfdb
docker run --rm -i -v "${PWD}:/vuls" -v "${PWD}/go-msfdb-log:/var/log/go-msfdb" "vuls/go-msfdb" fetch msfdb

