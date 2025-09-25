# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "arn:aws-us-gov:ecs:us-gov-west-1:779607147673:task-definition/vulcan-task-definition:3"
# resource "aws_ecs_task_definition" "vulcan_task_definition" {
#   container_definitions = jsonencode([{
#     environment = []
#     essential   = true
#     image       = "779607147673.dkr.ecr.us-gov-west-1.amazonaws.com/bah-vulcan:0.3.3"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/vulcan-task-definition"
#         awslogs-region        = "us-gov-west-1"
#         awslogs-stream-prefix = "ecs"
#       }
#       secretOptions = []
#     }
#     mountPoints = []
#     name        = "bah-vulcan"
#     portMappings = [{
#       containerPort = 443
#       hostPort      = 443
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     volumesFrom    = []
#   }])
#   cpu                      = "2048"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws-us-gov:iam::779607147673:role/ecsTaskExecutionRole"
#   family                   = "vulcan-task-definition"
#   ipc_mode                 = null
#   memory                   = "4096"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags                     = {}
#   tags_all                 = {}
#   task_role_arn            = "arn:aws-us-gov:iam::779607147673:role/ecsTaskExecutionRole"
#   track_latest             = false
# }

# # __generated__ by Terraform from "lcmp/vulcan-service-with-NLB"
# resource "aws_ecs_service" "vulcan_service_with_nlb" {
#   availability_zone_rebalancing      = "DISABLED"
#   cluster                            = "arn:aws-us-gov:ecs:us-gov-west-1:779607147673:cluster/lcmp"
#   deployment_maximum_percent         = 200
#   deployment_minimum_healthy_percent = 100
#   desired_count                      = 1
#   enable_ecs_managed_tags            = true
#   enable_execute_command             = false
#   force_delete                       = null
#   force_new_deployment               = null
#   health_check_grace_period_seconds  = 0
#   iam_role                           = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
#   launch_type                        = null
#   name                               = "vulcan-service-with-NLB"
#   platform_version                   = "LATEST"
#   propagate_tags                     = "NONE"
#   scheduling_strategy                = "REPLICA"
#   tags                               = {}
#   tags_all                           = {}
#   task_definition                    = "vulcan-task-definition:3"
#   triggers                           = {}
#   wait_for_steady_state              = null
#   alarms {
#     alarm_names = []
#     enable      = false
#     rollback    = false
#   }
#   capacity_provider_strategy {
#     base              = 0
#     capacity_provider = "FARGATE"
#     weight            = 1
#   }
#   deployment_circuit_breaker {
#     enable   = true
#     rollback = true
#   }
#   deployment_controller {
#     type = "ECS"
#   }
#   load_balancer {
#     container_name   = "bah-vulcan"
#     container_port   = 443
#     elb_name         = null
#     target_group_arn = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:779607147673:targetgroup/KC46-Vulcan-TLS-Group/80c1fb5b5fdf631d"
#   }
#   network_configuration {
#     assign_public_ip = false
#     security_groups  = ["sg-0f8401c5f78d4cd04", "sg-456bbf20", "sg-6b6abe0e", "sg-b66abed3"]
#     subnets          = ["subnet-1a01f27f"]
#   }
# }
