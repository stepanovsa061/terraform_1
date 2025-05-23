output "id" {
 value = yandex_vpc_network.vpc.id
}

output "subnet_ids" {
  value =  yandex_vpc_subnet.public.id
}
output "private_subnet_ids" {
  value =  yandex_vpc_subnet.private.id
}
output "zone" {
  value = var.default_zone
}
