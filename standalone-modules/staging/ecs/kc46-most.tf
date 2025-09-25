# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "LCMP/kc46-most-service"
# resource "aws_ecs_service" "kc46_most_service" {
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
#   name                               = "kc46-most-service"
#   platform_version                   = "LATEST"
#   propagate_tags                     = "NONE"
#   scheduling_strategy                = "REPLICA"
#   tags                               = {}
#   tags_all                           = {}
#   task_definition                    = "k46-most-test:1"
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
#     container_name   = "most"
#     container_port   = 8501
#     elb_name         = null
#     target_group_arn = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:482556331625:targetgroup/ecs-LCMP-kc46-most-service/dfa3c00fbee11d62"
#   }
#   network_configuration {
#     assign_public_ip = false
#     security_groups  = ["sg-020640302aad289ca"]
#     subnets          = ["subnet-00e39f9e4fcc468b0"]
#   }
# }

# # __generated__ by Terraform from "arn:aws-us-gov:ecs:us-gov-west-1:482556331625:task-definition/k46-most:6"
# resource "aws_ecs_task_definition" "k46_most" {
#   container_definitions = jsonencode([{
#     command          = ["--server.baseUrlPath=/most"]
#     environment      = []
#     environmentFiles = []
#     essential        = true
#     image            = "482556331625.dkr.ecr.us-gov-west-1.amazonaws.com/bah-kc46-most:0.0.2"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/k46-most"
#         awslogs-region        = "us-gov-west-1"
#         awslogs-stream-prefix = "ecs"
#         max-buffer-size       = "25m"
#         mode                  = "non-blocking"
#       }
#       secretOptions = []
#     }
#     mountPoints = []
#     name        = "most"
#     portMappings = [{
#       containerPort = 8501
#       hostPort      = 8501
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     ulimits        = []
#     volumesFrom    = []
#   }])
#   cpu                      = "2048"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   family                   = "k46-most"
#   ipc_mode                 = null
#   memory                   = "8192"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags = {
#     Name = "kc46-bigdata-most-taskdefinition"
#   }
#   tags_all = {
#     Name = "kc46-bigdata-most-taskdefinition"
#   }
#   task_role_arn = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   track_latest  = false
#   runtime_platform {
#     cpu_architecture        = "X86_64"
#     operating_system_family = "LINUX"
#   }
# }

# # __generated__ by Terraform from "arn:aws-us-gov:ecs:us-gov-west-1:482556331625:task-definition/k46-most-test:1"
# resource "aws_ecs_task_definition" "k46_most_test" {
#   container_definitions = jsonencode([{
#     command          = ["--server.baseUrlPath=/most"]
#     environment      = []
#     environmentFiles = []
#     essential        = true
#     image            = "482556331625.dkr.ecr.us-gov-west-1.amazonaws.com/bah-kc46-most:test"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/k46-most"
#         awslogs-region        = "us-gov-west-1"
#         awslogs-stream-prefix = "ecs"
#         max-buffer-size       = "25m"
#         mode                  = "non-blocking"
#       }
#       secretOptions = []
#     }
#     mountPoints = []
#     name        = "most"
#     portMappings = [{
#       containerPort = 8501
#       hostPort      = 8501
#       name          = "most-8501-tcp"
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     ulimits        = []
#     volumesFrom    = []
#   }])
#   cpu                      = "2048"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   family                   = "k46-most-test"
#   ipc_mode                 = null
#   memory                   = "8192"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags = {
#     Name = "kc46-bigdata-most-taskdefinition"
#   }
#   tags_all = {
#     Name = "kc46-bigdata-most-taskdefinition"
#   }
#   task_role_arn = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   track_latest  = false
#   runtime_platform {
#     cpu_architecture        = "X86_64"
#     operating_system_family = "LINUX"
#   }
# }
