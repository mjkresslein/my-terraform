import {
  to = aws_iam_role.ecs_task_execution_role
  id = "ecsTaskExecutionRole"
}

import {
  to = aws_iam_policy.bah_secretsmanagerssm_policy
  id = "arn:aws-us-gov:iam::482556331625:policy/BAH_SecretsManagerSSM_Policy"
}
