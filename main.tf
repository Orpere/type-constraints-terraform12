terraform {
  required_version = "<= 0.12.16"
}

variable "vaultSsl" {
  description = "SSL Certificate served by the Vault server."
  type        = map(string)
  default = {
    # Paths
    ssl_key = "./certs/server.key"
    ssl_cert = "./certs/server.pem"
    #ssl_chain { path = "" }
    # Self Signed = {
    source       = "self-signed"
    common_name  = "vault"
    country      = "nl"
    city         = "rotterdam"
    organization = "test"
  }
  }