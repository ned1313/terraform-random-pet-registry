resource "random_pet" "this" {
  count = var.quantity

  prefix    = var.pet_type
  separator = "-"
  length    = 2
}

resource "random_id" "this" {
  count = var.quantity

  byte_length = 4
}

resource "random_integer" "age" {
  count = var.quantity

  min = 1
  max = 15
}

resource "random_shuffle" "adoption_status" {
  count = var.quantity

  input        = ["available", "pending", "adopted"]
  result_count = 1
}