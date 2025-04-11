module "vpc"  {
  source     =  "./vpc"
  folder_id  = var.folder_id
  token      = var.token
  cloud_id   = var.cloud_id
}
module "nat"  {
  source     =  "./nat"
  folder_id  = var.folder_id
  token      = var.token
  cloud_id   = var.cloud_id
  subnet_id  = module.vpc.subnet_ids
  
}
module "public"  {
  source     =  "./public"
  folder_id  = var.folder_id
  token      = var.token
  cloud_id   = var.cloud_id
  subnet_id  = module.vpc.subnet_ids
  
}
module "private"  {
  source     =  "./private"
  folder_id  = var.folder_id
  token      = var.token
  cloud_id   = var.cloud_id
  private_subnet_id = module.vpc.private_subnet_ids
}
