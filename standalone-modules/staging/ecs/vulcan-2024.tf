# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "arn:aws-us-gov:ecs:us-gov-west-1:482556331625:task-definition/vulcan-2024:6"
# resource "aws_ecs_task_definition" "vulcan_2024" {
#   container_definitions = jsonencode([{
#     cpu         = 1024
#     environment = []
#     essential   = true
#     image       = "482556331625.dkr.ecr.us-gov-west-1.amazonaws.com/vulcan-2024-api:latest"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/vulcan-2024-api"
#         awslogs-region        = "us-gov-west-1"
#         awslogs-stream-prefix = "ecs"
#         max-buffer-size       = "25m"
#         mode                  = "non-blocking"
#       }
#       secretOptions = []
#     }
#     memory            = 2048
#     memoryReservation = 1024
#     mountPoints       = []
#     name              = "api"
#     portMappings      = []
#     systemControls    = []
#     volumesFrom       = []
#     }, {
#     cpu = 1024
#     dependsOn = [{
#       condition     = "START"
#       containerName = "api"
#     }]
#     environment = []
#     essential   = true
#     image       = "482556331625.dkr.ecr.us-gov-west-1.amazonaws.com/vulcan-2024-ui:latest"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/vulcan-2024-ui"
#         awslogs-region        = "us-gov-west-1"
#         awslogs-stream-prefix = "ecs"
#         max-buffer-size       = "25m"
#         mode                  = "non-blocking"
#       }
#       secretOptions = []
#     }
#     memory            = 2048
#     memoryReservation = 1024
#     mountPoints       = []
#     name              = "ui"
#     portMappings = [{
#       appProtocol   = "http"
#       containerPort = 8888
#       hostPort      = 8888
#       name          = "vulcan-2024-ui-8888-tcp"
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     volumesFrom    = []
#   }])
#   cpu                      = "4096"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   family                   = "vulcan-2024"
#   ipc_mode                 = null
#   memory                   = "8192"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags                     = {}
#   tags_all                 = {}
#   task_role_arn            = "arn:aws-us-gov:iam::482556331625:role/Vulcan-2024-v3-ecs-task-role"
#   track_latest             = false
#   runtime_platform {
#     cpu_architecture        = "X86_64"
#     operating_system_family = "LINUX"
#   }
# }

# # __generated__ by Terraform from "LCMP/vulcan-2024-stage-v3"
# resource "aws_ecs_service" "vulcan_2024_stage_v3" {
#   availability_zone_rebalancing      = "ENABLED"
#   cluster                            = "arn:aws-us-gov:ecs:us-gov-west-1:482556331625:cluster/LCMP"
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
#   name                               = "vulcan-2024-stage-v3"
#   platform_version                   = "1.4.0"
#   propagate_tags                     = "NONE"
#   scheduling_strategy                = "REPLICA"
#   tags                               = {}
#   tags_all                           = {}
#   task_definition                    = "vulcan-2024:6"
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
#     container_name   = "ui"
#     container_port   = 8888
#     elb_name         = null
#     target_group_arn = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:482556331625:targetgroup/ecs-LCMP-vulcan-2024-stage-v3/d070eef246cc4e8d"
#   }
#   network_configuration {
#     assign_public_ip = false
#     security_groups  = ["sg-01b4318bd98d32a24"]
#     subnets          = ["subnet-00e39f9e4fcc468b0"]
#   }
# }
