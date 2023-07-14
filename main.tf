locals {
  # local.pk_sk_map
  pk_sk_map = merge(flatten([
    for i in var.list_map : [
      for pk, pv in i : {
        for sk, sv in pv : join("_", [pk, sk]) => {
          pk = pk
          sk = sk
          v  = sv
        }
      }
    ]
  ])...)

  # local.pk_reduce
  pk_reduce = distinct(
    [
      for nk, nv in local.pk_sk_map : nv.pk
    ]
  )

  # local.merge_map
  combine_map = {
    for pk in local.pk_reduce : pk => {
      for nk, nv in local.pk_sk_map : nv.sk => nv.v
      if nv.pk == pk
    }
  }
}
