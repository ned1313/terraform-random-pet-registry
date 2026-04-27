output "pets" {
  description = "A list of generated pet registry records."

  value = [
    for index in range(var.quantity) : {
      name            = random_pet.this[index].id
      type            = var.pet_type
      id              = random_id.this[index].hex
      age             = random_integer.age[index].result
      adoption_status = random_shuffle.adoption_status[index].result[0]
    }
  ]
}