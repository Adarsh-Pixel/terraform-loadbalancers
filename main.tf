module "alb-public" {
    source                          = "./vendor/modules/alb"
    ENV                             = var.ENV
}

module "alb-private" {
    source                          = "./vendor/modules/alb"
    ENV                             = var.ENV
}

# We cannot parameterize anything that is added in the source

# To limit that, we can use a tool called as Terrafile. All it does is clones the remote code from the specified branch and make it locally available. 