#/bin/bash 
# install new OpenSSL
brew install openssl

# generate private key and enter pass phrase

openssl genrsa -des3 -out server.key 1024

openssl req -new -sha256 -key server.key -out server.csr

openssl req -x509 -sha256 -days 365 -key server.key -in server.csr -out server.pem

# validate the certificate
openssl req -in server.csr -text -noout | grep -i "Signature.*SHA256" && echo "All is well" || echo "This certificate doesn't work in 2017! You must update OpenSSL to generate a widely-compatible certificate"
 
