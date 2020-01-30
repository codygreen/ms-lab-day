provider "bigip" {
  address  = var.url
  username = var.username
  password = var.password
}

resource "bigip_do" "do-example" {
  do_json = templatefile(
    "do_example.tmpl", {}
  )
  config_name = var.config_name
}

resource "bigip_as3" "as3-demo1" {
  as3_json = templatefile(
    "as3_example.tmpl",
    {
      tenant_name = jsonencode(var.tenant_name)
  })
  config_name = var.config_name
}
