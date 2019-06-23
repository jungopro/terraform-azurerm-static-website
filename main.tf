resource "azurerm_storage_account" "storage_account" {
  name                     = "${substr(format("%ssa", lower(replace("${var.resource_group_name}", "/[[:^alnum:]]/", ""))),0,24)}"
  resource_group_name      = "${var.resource_group_name}"
  location                 = "${var.location}"
  account_kind             = "StorageV2"
  account_tier             = "${var.account_tier}"
  account_replication_type = "${var.account_replication_type}"
  tags                     = "${var.tags}"

  provisioner "local-exec" {
    command = "az login --service-principal -u ${var.client_id} -p ${var.client_secret} -t ${var.tenant_id} | az storage blob service-properties update --account-name ${azurerm_storage_account.storage_account.name} --static-website --index-document index.html --404-document 404.html"
  }
}
