# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "arn:aws-us-gov:ecs:us-gov-west-1:482556331625:task-definition/bah-vulcan-task:16"
# resource "aws_ecs_task_definition" "bah_vulcan_task" {
#   container_definitions = jsonencode([{
#     environment = []
#     essential   = true
#     image       = "482556331625.dkr.ecr.us-gov-west-1.amazonaws.com/bah-vulcan:0.3.6"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/bah-vulcan-task"
#         awslogs-region        = "us-gov-west-1"
#         awslogs-stream-prefix = "ecs"
#       }
#       secretOptions = []
#     }
#     mountPoints = []
#     name        = "bah-vulcan"
#     portMappings = [{
#       containerPort = 8080
#       hostPort      = 8080
#       name          = "bah-vulcan-8080-tcp"
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     volumesFrom    = []
#   }])
#   cpu                      = "4096"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   family                   = "bah-vulcan-task"
#   ipc_mode                 = null
#   memory                   = "8192"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags                     = {}
#   tags_all                 = {}
#   task_role_arn            = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   track_latest             = false
# }

# # __generated__ by Terraform from "LCMP/kc46-vulcan-service"
# resource "aws_ecs_service" "kc46_vulcan_service" {
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
#   name                               = "kc46-vulcan-service"
#   platform_version                   = "LATEST"
#   propagate_tags                     = "NONE"
#   scheduling_strategy                = "REPLICA"
#   tags                               = {}
#   tags_all                           = {}
#   task_definition                    = "bah-vulcan-task:16"
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
#     container_port   = 8080
#     elb_name         = null
#     target_group_arn = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:482556331625:targetgroup/ecs-LCMP-kc46-vulcan-service/3f110911687cf40d"
#   }
#   network_configuration {
#     assign_public_ip = false
#     security_groups  = ["sg-0c8d1a0de7cfedd10"]
#     subnets          = ["subnet-00e39f9e4fcc468b0"]
#   }
# }

# # __generated__ by Terraform
# resource "aws_lb" "vulcan_nlb" {
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
#   name                                                         = "vulcan-nlb"
#   name_prefix                                                  = null
#   preserve_host_header                                         = null
#   security_groups                                              = ["sg-02705a56165fae56f", "sg-0de9ba70c9999fd65", "sg-0e465bd8bb56692bd", "sg-0ffff6d17550b691e"]
#   subnets                                                      = ["subnet-00e39f9e4fcc468b0"]
#   tags = {
#     Enviroment = "Stag"
#     Name       = "vulcan_nlb"
#   }
#   tags_all = {
#     Enviroment = "Stag"
#     Name       = "vulcan_nlb"
#   }
#   xff_header_processing_mode = null
#   access_logs {
#     bucket  = ""
#     enabled = false
#     prefix  = null
#   }
# }
