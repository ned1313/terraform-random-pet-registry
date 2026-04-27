variable "pet_type" {
  type        = string
  description = "The type of pet to register, such as dog, cat, mouse, or iguana."

  validation {
    condition     = length(trimspace(var.pet_type)) > 0
    error_message = "The pet_type value cannot be empty."
  }
}

variable "quantity" {
  type        = number
  description = "The number of pets to create."

  validation {
    condition     = var.quantity > 0
    error_message = "The quantity value must be greater than zero."
  }
}