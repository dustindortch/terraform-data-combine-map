terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }
  }
}

module "defaults" {
  source = "../.."
}

locals {
  combine_map = {
    "keyA" = {
      "subkey1" = "value1"
      "subkey2" = "value2"
    }
    "keyB" = {
      "subkey3" = "value3"
    }
  }
}

resource "test_assertions" "defaults" {
  component = "defaults"

  equal "combine_map-output-meets-expectations" {
    description = "combine_map output meets expectations"
    got         = module.defaults.combine_map
    want        = local.combine_map
  }
}
