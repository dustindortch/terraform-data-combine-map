variable "list_map" {
  default = [
    {
      keyA = {
        subkey1 = "value1"
      }
    },
    {
      keyA = {
        subkey2 = "value2"
      }
    },
    {
      keyB = {
        subkey3 = "value3"
      }
    },
  ]
  description = "Takes an input list of nested maps and combines on common keys."
  type        = list(map(map(any)))
}
