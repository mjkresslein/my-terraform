# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "arn:aws:ecs:us-east-1:947132430921:task-definition/vc25-interactive-test:1"
# resource "aws_ecs_task_definition" "vc25_interactive_test" {
#   container_definitions = jsonencode([{
#     entryPoint       = ["npm", "run", "preview"]
#     environment      = []
#     environmentFiles = []
#     essential        = true
#     image            = "947132430921.dkr.ecr.us-east-1.amazonaws.com/vc25a-interactive-test:test"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#       secretOptions = []
#     }
#     mountPoints = []
#     name        = "vc25"
#     portMappings = [{
#       appProtocol   = "http"
#       containerPort = 4173
#       hostPort      = 4173
#       name          = "vc25-4173-tcp"
#       protocol      = "tcp"
#     }]
#     systemControls   = []
#     ulimits          = []
#     volumesFrom      = []
#     workingDirectory = "/app"
#   }])
#   cpu                      = "4096"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   family                   = "vc25-interactive-test"
#   ipc_mode                 = null
#   memory                   = "8192"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags                     = {}
#   tags_all                 = {}
#   task_role_arn            = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   track_latest             = false
#   runtime_platform {
#     cpu_architecture        = "X86_64"
#     operating_system_family = "LINUX"
#   }
# }

# # __generated__ by Terraform from "arn:aws:ecs:us-east-1:947132430921:task-definition/vc-25a:36"
# resource "aws_ecs_task_definition" "vc_25a" {
#   container_definitions = jsonencode([{
#     environment = []
#     essential   = true
#     image       = "947132430921.dkr.ecr.us-east-1.amazonaws.com/vc-25a-interactive:20241108-1"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/vc-25a"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#       secretOptions = []
#     }
#     mountPoints = []
#     name        = "vc-25a-interactive"
#     portMappings = [{
#       appProtocol   = "http"
#       containerPort = 8000
#       hostPort      = 8000
#       name          = "vc-25a-interactive-80-tcp"
#       protocol      = "tcp"
#     }]
#     systemControls   = []
#     volumesFrom      = []
#     workingDirectory = "/app"
#   }])
#   cpu                      = "1024"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   family                   = "vc-25a"
#   ipc_mode                 = null
#   memory                   = "2048"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags                     = {}
#   tags_all                 = {}
#   task_role_arn            = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   track_latest             = false
# }
