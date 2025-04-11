resource "yandex_compute_instance" "public" {
  name        = var.yandex_compute_instance_public[0].vm_name
  allow_stopping_for_update = true
  platform_id = var.yandex_compute_instance_public[0].platform_id
  hostname = var.yandex_compute_instance_public[0].hostname

  resources {
    cores         = var.yandex_compute_instance_public[0].cores
    memory        = var.yandex_compute_instance_public[0].memory
    core_fraction = var.yandex_compute_instance_public[0].core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = var.boot_disk_public[0].image_id
      type     = var.boot_disk_public[0].type
      size     = var.boot_disk_public[0].size
    }
  }

  metadata = {
    ssh-keys = "sergey:${var.ssh-keys}"
    serial-port-enable = "1"
  }

  network_interface {
    subnet_id  = var.subnet_id
    nat        = true
  }
  scheduling_policy {
    preemptible = true
  }
}
