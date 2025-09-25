# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "arn:aws-us-gov:ecs:us-gov-west-1:779607147673:task-definition/vc25-interactive-task:6"
# resource "aws_ecs_task_definition" "vc25_interactive_task" {
#   container_definitions = jsonencode([{
#     environment = []
#     essential   = true
#     image       = "779607147673.dkr.ecr.us-gov-west-1.amazonaws.com/vc25-interactive:20241216-2"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/vc25-interactive-task"
#         awslogs-region        = "us-gov-west-1"
#         awslogs-stream-prefix = "ecs"
#       }
#       secretOptions = []
#     }
#     mountPoints = []
#     name        = "vc25-interactive"
#     portMappings = [{
#       containerPort = 8000
#       hostPort      = 8000
#       protocol      = "tcp"
#     }]
#     systemControls   = []
#     volumesFrom      = []
#     workingDirectory = "/app"
#   }])
#   cpu                      = "2048"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws-us-gov:iam::779607147673:role/ecsTaskExecutionRole"
#   family                   = "vc25-interactive-task"
#   ipc_mode                 = null
#   memory                   = "8192"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags = {
#     Client      = "VC25"
#     Environment = "Production"
#     Name        = "vc25-interactive app"
#   }
#   tags_all = {
#     Client      = "VC25"
#     Environment = "Production"
#     Name        = "vc25-interactive app"
#   }
#   task_role_arn = "arn:aws-us-gov:iam::779607147673:role/ecsTaskExecutionRole"
#   track_latest  = false
# }

# # __generated__ by Terraform from "lcmp/vc25a-interactive-service-port-8000-new"
# resource "aws_ecs_service" "vc25a_new" {
#   availability_zone_rebalancing      = "ENABLED"
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
#   name                               = "vc25a-interactive-service-port-8000-new"
#   platform_version                   = "LATEST"
#   propagate_tags                     = "SERVICE"
#   scheduling_strategy                = "REPLICA"
#   tags = {
#     Name = "vc25a-interactive"
#   }
#   tags_all = {
#     Name = "vc25a-interactive"
#   }
#   task_definition       = "vc25-interactive-task:6"
#   triggers              = {}
#   wait_for_steady_state = null
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
#     container_name   = "vc25-interactive"
#     container_port   = 8000
#     elb_name         = null
#     target_group_arn = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:779607147673:targetgroup/ecs-lcmp-vc25-interactive-8000/c5b4a13baca80fae"
#   }
#   network_configuration {
#     assign_public_ip = false
#     security_groups  = ["sg-04a3d1bda2fcf96a2", "sg-456bbf20", "sg-666bbf03", "sg-6b6abe0e", "sg-b66abed3"]
#     subnets          = ["subnet-1a01f27f"]
#   }
# }

# # __generated__ by Terraform from "lcmp/vc25a-interactive-service-port-8000-alb"
# resource "aws_ecs_service" "vc25a_alb" {
#   availability_zone_rebalancing      = "ENABLED"
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
#   name                               = "vc25a-interactive-service-port-8000-alb"
#   platform_version                   = "LATEST"
#   propagate_tags                     = "SERVICE"
#   scheduling_strategy                = "REPLICA"
#   tags = {
#     Name = "VC25a-Interactive-8000"
#   }
#   tags_all = {
#     Name = "VC25a-Interactive-8000"
#   }
#   task_definition       = "vc25-interactive-task:6"
#   triggers              = {}
#   wait_for_steady_state = null
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
#     container_name   = "vc25-interactive"
#     container_port   = 8000
#     elb_name         = null
#     target_group_arn = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:779607147673:targetgroup/ecs-lcmp-vc25a-8000/1813af197f2b1bb0"
#   }
#   network_configuration {
#     assign_public_ip = false
#     security_groups  = ["sg-04a3d1bda2fcf96a2", "sg-456bbf20", "sg-666bbf03", "sg-6b6abe0e", "sg-b66abed3"]
#     subnets          = ["subnet-1a01f27f"]
#   }
# }

# # __generated__ by Terraform
# resource "aws_lb" "vc25a_nlb" {
#   client_keep_alive                                            = null
#   customer_owned_ipv4_pool                                     = null
#   desync_mitigation_mode                                       = null
#   dns_record_client_routing_policy                             = null
#   drop_invalid_header_fields                                   = null
#   enable_cross_zone_load_balancing                             = false
#   enable_deletion_protection                                   = false
#   enable_http2                                                 = null
#   enable_tls_version_and_cipher_suite_headers                  = null
#   enable_waf_fail_open                                         = null
#   enable_xff_client_port                                       = null
#   enable_zonal_shift                                           = false
#   enforce_security_group_inbound_rules_on_private_link_traffic = null
#   idle_timeout                                                 = null
#   internal                                                     = true
#   ip_address_type                                              = "ipv4"
#   load_balancer_type                                           = "network"
#   name                                                         = "vc25a-interactive-nlb"
#   name_prefix                                                  = null
#   preserve_host_header                                         = null
#   security_groups                                              = ["sg-04a3d1bda2fcf96a2", "sg-0cc2a2b6fab8df1a8", "sg-456bbf20", "sg-6b6abe0e", "sg-b66abed3"]
#   subnets                                                      = ["subnet-1a01f27f"]
#   tags = {
#     Enviroment = "Prod"
#     Name       = "vc25a-interactive-nlb"
#   }
#   tags_all = {
#     Enviroment = "Prod"
#     Name       = "vc25a-interactive-nlb"
#   }
#   xff_header_processing_mode = null
#   access_logs {
#     bucket  = ""
#     enabled = false
#     prefix  = null
#   }
# }
