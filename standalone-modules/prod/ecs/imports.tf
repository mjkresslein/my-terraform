#### Radiant ####

# import {
#   to = aws_ecs_service.radiant_service_nlb_tagged
#   id = "lcmp/radiant-service-nlb-tagged"
# }

# import {
#   to = aws_ecs_task_definition.bah_radiant_task_def
#   id = "arn:aws-us-gov:ecs:us-gov-west-1:779607147673:task-definition/radiant-task:44"
# }

# import {
#   to = aws_lb.radiant_nlb
#   id = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:779607147673:loadbalancer/net/Radiant-NLB/9f315e1cf92ddc70"
# }

#### VC25A Interactive ####

# import {
#   to = aws_ecs_service.vc25a_new
#   id = "lcmp/vc25a-interactive-service-port-8000-new"
# }

# import {
#   to = aws_ecs_service.vc25a_alb
#   id = "lcmp/vc25a-interactive-service-port-8000-alb"
# }

# import {
#   to = aws_ecs_task_definition.vc25_interactive_task
#   id = "arn:aws-us-gov:ecs:us-gov-west-1:779607147673:task-definition/vc25-interactive-task:6"
# }

# import {
#   to = aws_lb.vc25a_nlb
#   id = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:779607147673:loadbalancer/net/vc25a-interactive-nlb/04fa33656e37eb5a"
# }

#### Vulcan KC46 ####

# import {
#   to = aws_ecs_service.vulcan_service_with_nlb
#   id = "lcmp/vulcan-service-with-NLB"
# }

# import {
#   to = aws_ecs_task_definition.vulcan_task_definition
#   id = "arn:aws-us-gov:ecs:us-gov-west-1:779607147673:task-definition/vulcan-task-definition:3"
# }
