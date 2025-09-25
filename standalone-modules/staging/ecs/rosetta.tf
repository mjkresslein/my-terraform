# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "arn:aws-us-gov:ecs:us-gov-west-1:482556331625:task-definition/amac-rosetta:3"
# resource "aws_ecs_task_definition" "amac_rosetta" {
#   container_definitions = jsonencode([{
#     environment = [{
#       name  = "NAME"
#       value = "Rosetta"
#     }]
#     environmentFiles = []
#     essential        = true
#     image            = "482556331625.dkr.ecr.us-gov-west-1.amazonaws.com/amac-rosetta:latest"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/amac-rosetta"
#         awslogs-region        = "us-gov-west-1"
#         awslogs-stream-prefix = "ecs"
#         max-buffer-size       = "25m"
#         mode                  = "non-blocking"
#       }
#       secretOptions = []
#     }
#     mountPoints = []
#     name        = "rosetta"
#     portMappings = [{
#       containerPort = 8080
#       hostPort      = 8080
#       protocol      = "tcp"
#     }]
#     systemControls   = []
#     ulimits          = []
#     volumesFrom      = []
#     workingDirectory = "/app"
#   }])
#   cpu                      = "4096"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   family                   = "amac-rosetta"
#   ipc_mode                 = null
#   memory                   = "16384"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags                     = {}
#   tags_all                 = {}
#   task_role_arn            = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   track_latest             = false
#   runtime_platform {
#     cpu_architecture        = "X86_64"
#     operating_system_family = "LINUX"
#   }
# }

# # __generated__ by Terraform from "LCMP/amac-rosetta-service"
# resource "aws_ecs_service" "amac_rosetta_service" {
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
#   name                               = "amac-rosetta-service"
#   platform_version                   = "LATEST"
#   propagate_tags                     = "NONE"
#   scheduling_strategy                = "REPLICA"
#   tags                               = {}
#   tags_all                           = {}
#   task_definition                    = "amac-rosetta:3"
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
#     container_name   = "rosetta"
#     container_port   = 8080
#     elb_name         = null
#     target_group_arn = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:482556331625:targetgroup/ecs-LCMP-amac-rosetta-service/f3692df5c03b431a"
#   }
#   network_configuration {
#     assign_public_ip = false
#     security_groups  = ["sg-00fd097c560c03d80"]
#     subnets          = ["subnet-00e39f9e4fcc468b0"]
#   }
# }
