# terraform-data-combine-map

A data-only module that accepts a list of nested maps and merges the maps and combines content rather than taking the last instance.

<!-- BEGIN_TF_DOCS -->


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_list_map"></a> [list\_map](#input\_list\_map) | Takes an input list of nested maps and combines on common keys. | `list(map(map(any)))` | <pre>[<br>  {<br>    "keyA": {<br>      "subkey1": "value1"<br>    }<br>  },<br>  {<br>    "keyA": {<br>      "subkey2": "value2"<br>    }<br>  },<br>  {<br>    "keyB": {<br>      "subkey3": "value3"<br>    }<br>  }<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_combine_map"></a> [combine\_map](#output\_combine\_map) | n/a |
<!-- END_TF_DOCS -->