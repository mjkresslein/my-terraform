# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "arn:aws-us-gov:ecs:us-gov-west-1:482556331625:task-definition/vc25-interactive-task:23"
# resource "aws_ecs_task_definition" "vc25_interactive_task_def" {
#   container_definitions = jsonencode([{
#     environment = []
#     essential   = true
#     image       = "482556331625.dkr.ecr.us-gov-west-1.amazonaws.com/vc25-interactive:20241216-2"
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
#   execution_role_arn       = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   family                   = "vc25-interactive-task"
#   ipc_mode                 = null
#   memory                   = "8192"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags = {
#     Client = "VC25"
#     Name   = "vc25-interactive app"
#   }
#   tags_all = {
#     Client      = "VC25"
#     Environment = "Staging"
#     Name        = "vc25-interactive app"
#   }
#   task_role_arn = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   track_latest  = false
# }

# # __generated__ by Terraform from "LCMP/vc25a-interactive-service-port-8000"
# resource "aws_ecs_service" "vc25a_interactive" {
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
#   name                               = "vc25a-interactive-service-port-8000"
#   platform_version                   = "LATEST"
#   propagate_tags                     = "SERVICE"
#   scheduling_strategy                = "REPLICA"
#   tags = {
#     Name = "vc25a-interactive-8000"
#   }
#   tags_all = {
#     Name = "vc25a-interactive-8000"
#   }
#   task_definition       = "vc25-interactive-task:23"
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
#     target_group_arn = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:482556331625:targetgroup/LCMP-vc25a-interactive-8000/86a84e56bb35248f"
#   }
#   network_configuration {
#     assign_public_ip = false
#     security_groups  = ["sg-02705a56165fae56f", "sg-087d392eda286da42", "sg-0de9ba70c9999fd65", "sg-0e465bd8bb56692bd", "sg-0ffff6d17550b691e"]
#     subnets          = ["subnet-00e39f9e4fcc468b0"]
#   }
# }

# # __generated__ by Terraform
# resource "aws_lb" "vc25_interactive_8080_nlb" {
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
#   name                                                         = "vc25-interactive-8080-nlb"
#   name_prefix                                                  = null
#   preserve_host_header                                         = null
#   security_groups                                              = ["sg-02705a56165fae56f", "sg-065477856893e6079", "sg-087d392eda286da42", "sg-0e465bd8bb56692bd", "sg-0ffff6d17550b691e"]
#   subnets                                                      = ["subnet-0fe7a0eaa8a784421"]
#   tags = {
#     Name = "vc25-interactive-loadbalancer-8080"
#   }
#   tags_all = {
#     Name = "vc25-interactive-loadbalancer-8080"
#   }
#   xff_header_processing_mode = null
#   access_logs {
#     bucket  = ""
#     enabled = false
#     prefix  = null
#   }
# }

# # __generated__ by Terraform
# resource "aws_lb" "vc25_interactive_nlb" {
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
#   name                                                         = "vc25-interactive-nlb"
#   name_prefix                                                  = null
#   preserve_host_header                                         = null
#   security_groups                                              = ["sg-003024cb4b2cf3b76", "sg-02705a56165fae56f", "sg-0de9ba70c9999fd65", "sg-0e465bd8bb56692bd", "sg-0ffff6d17550b691e"]
#   subnets                                                      = ["subnet-00e39f9e4fcc468b0"]
#   tags = {
#     Environment = "Prod"
#     Name        = "vc25-interactive-nlb"
#   }
#   tags_all = {
#     Environment = "Prod"
#     Name        = "vc25-interactive-nlb"
#   }
#   xff_header_processing_mode = null
#   access_logs {
#     bucket  = ""
#     enabled = false
#     prefix  = null
#   }
# }

# # __generated__ by Terraform
# resource "aws_lb" "vc25a_vulcan_lb" {
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
#   name                                                         = "vc25a-vulcan-loadbalancer"
#   name_prefix                                                  = null
#   preserve_host_header                                         = null
#   security_groups                                              = ["sg-006fec9fa33ebbdd5", "sg-02705a56165fae56f", "sg-065477856893e6079", "sg-0ffff6d17550b691e"]
#   subnets                                                      = ["subnet-00e39f9e4fcc468b0"]
#   tags = {
#     Enviroment = "Stag"
#     Name       = "vc25a_vulcan_loadbalancer"
#   }
#   tags_all = {
#     Enviroment = "Stag"
#     Name       = "vc25a_vulcan_loadbalancer"
#   }
#   xff_header_processing_mode = null
#   access_logs {
#     bucket  = ""
#     enabled = false
#     prefix  = null
#   }
# }
