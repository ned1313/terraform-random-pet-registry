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

variable "adoption_cost" {
  type        = number
  description = "Optional adoption cost for each generated pet."
  default     = null

  validation {
    condition     = var.adoption_cost == null || var.adoption_cost >= 0
    error_message = "The adoption_cost value must be null or greater than or equal to zero."
  }
}