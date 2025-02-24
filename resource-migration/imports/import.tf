import {
  for_each = local.ado_instances
  to       = aws_instance.ado_instance[each.value.id]
  id       = each.value.id
}

import {
  for_each = local.bu_instances
  to       = aws_instance.bu_instance[each.value.id]
  id       = each.value.id
}

import {
  for_each = local.cr_instances
  to       = aws_instance.cr_instance[each.value.id]
  id       = each.value.id
}

import {
  to = aws_instance.sp_instance
  id = data.aws_instance.sp_instance.id
}

import {
  to = aws_instance.eml_instance
  id = data.aws_instance.eml_instance.id
}

import {
  to = aws_instance.db_instance
  id = data.aws_instance.db_instance.id
}

import {
  to = aws_instance.gitlab_instance
  id = data.aws_instance.gitlab_instance.id
}

import {
  to = aws_instance.ds_instance
  id = data.aws_instance.ds_instance.id
}
