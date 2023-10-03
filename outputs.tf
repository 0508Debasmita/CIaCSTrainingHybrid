#output "website_address" {
#  description = "The Hostname associated with the App Service"
#  value       = format("https://%s/", azurerm_linux_web_app.webapp.default_hostname)
#}

output "websiterul" {
  value = format("%s%s", aws_instance.hybrid.public_ip, "/IMS")
}

#output "db_hostname" {
#  value       = aws_db_instance.rds_instance.address
#  description = "Connect to the database at this endpoint"
#}

#output "port" {
#  value       = aws_db_instance.rds_instance.port
#  description = "The port the database is listening on"
#}
