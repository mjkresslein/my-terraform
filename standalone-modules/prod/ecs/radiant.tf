# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "arn:aws-us-gov:ecs:us-gov-west-1:779607147673:task-definition/radiant-task:44"
# resource "aws_ecs_task_definition" "bah_radiant_task_def" {
#   container_definitions = jsonencode([{
#     environment = [{
#       name  = "API_HOST"
#       value = "127.0.0.1"
#       }, {
#       name  = "API_PORT"
#       value = "5000"
#     }]
#     essential = true
#     image     = "779607147673.dkr.ecr.us-gov-west-1.amazonaws.com/bah-smcr-nginx:1.12.17"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/radiant-task"
#         awslogs-region        = "us-gov-west-1"
#         awslogs-stream-prefix = "ecs"
#       }
#       secretOptions = []
#     }
#     mountPoints = []
#     name        = "radiant-nginx"
#     portMappings = [{
#       containerPort = 443
#       hostPort      = 443
#       name          = "radiant-nginx-443-tcp"
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     volumesFrom    = []
#     }, {
#     environment = [{
#       name  = "CERT_FLAG"
#       value = "disabled"
#       }, {
#       name  = "CIPHERS"
#       value = "tls_ciphers.txt"
#       }, {
#       name  = "DB_DATABASE"
#       value = "sscr"
#       }, {
#       name  = "DB_HOST"
#       value = "10.0.10.163"
#       }, {
#       name  = "DB_PORT"
#       value = "1433"
#       }, {
#       name  = "HTTPS_CERT_FILE"
#       value = "/certs/cert.pem"
#       }, {
#       name  = "MYSQL_DB"
#       value = "SMCRadiant"
#       }, {
#       name  = "MYSQL_HOST"
#       value = "localhost"
#       }, {
#       name  = "MYSQL_PORT"
#       value = "3306"
#       }, {
#       name  = "MYSQL_USER"
#       value = "admin"
#       }, {
#       name  = "NODE_ENV"
#       value = "production"
#       }, {
#       name  = "NODE_OPTIONS"
#       value = "--max_old_space_size=8192"
#       }, {
#       name  = "SAML_CALLBACK_URL"
#       value = "http://localhost/api/saml/SSO"
#       }, {
#       name  = "SAML_CERT_FILE"
#       value = "/certs/cert.pem"
#       }, {
#       name  = "SAML_DISABLE_REQAUTHCONTEXT"
#       value = "true Key SAML_DISABLE_REQAUTHCONTEXT Value type  Value Value"
#       }, {
#       name  = "SAML_ENTRYPOINT"
#       value = "http://localhost:8080/simplesaml/saml2/idp/SSOService.php"
#       }, {
#       name  = "SAML_ISSUER"
#       value = "saml-poc"
#       }, {
#       name  = "SAML_KEY_FILE"
#       value = "/certs/key.pem"
#       }, {
#       name  = "SAML_NAMEID_FORMAT"
#       value = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
#       }, {
#       name  = "SAML_SIGNATURE_ALGORITHM"
#       value = "sha256"
#       }, {
#       name  = "SAML_VALIDATE_RESPONSETO"
#       value = "false"
#       }, {
#       name  = "SERVER_ENV"
#       value = "lcmp"
#       }, {
#       name  = "SYNDEIA_API"
#       value = "http://10.194.75.87"
#       }, {
#       name  = "TZ"
#       value = "America/Los Angeles"
#       }, {
#       name  = "VIEWER_ENV"
#       value = "prod"
#     }]
#     secrets = [
#       {
#         name      = "DB_CONNECTION_STRING"
#         valueFrom = "arn:aws-us-gov:secretsmanager:us-gov-west-1:779607147673:secret:strata-prod/ssc/radiant-yJLG5n:DB_CONNECTION_STRING::"
#       },
#       {
#         name      = "MYSQL_PASS"
#         valueFrom = "arn:aws-us-gov:secretsmanager:us-gov-west-1:779607147673:secret:strata-prod/ssc/radiant-yJLG5n:MYSQL_PASS::"
#       }
#     ]
#     essential = true
#     image     = "779607147673.dkr.ecr.us-gov-west-1.amazonaws.com/bah-smcr-backend:1.12.17"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/radiant-task"
#         awslogs-region        = "us-gov-west-1"
#         awslogs-stream-prefix = "ecs"
#       }
#       secretOptions = []
#     }
#     mountPoints = [{
#       containerPath = "/home/node/app/uploads/"
#       readOnly      = false
#       sourceVolume  = "efs_radiant"
#     }]
#     name = "smcr-radiant-backend"
#     portMappings = [{
#       containerPort = 5000
#       hostPort      = 5000
#       name          = "smcr-radiant-backend-5000-tcp"
#       protocol      = "tcp"
#       }, {
#       containerPort = 2049
#       hostPort      = 2049
#       name          = "smcr-radiant-backend-2049-tcp"
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     volumesFrom    = []
#   }])
#   cpu                      = "4096"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws-us-gov:iam::779607147673:role/ecsTaskExecutionRole"
#   family                   = "radiant-task"
#   ipc_mode                 = null
#   memory                   = "16384"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags = {
#     "ecs:taskDefinition:createdFrom" = "ecs-console-v2"
#   }
#   tags_all = {
#     "ecs:taskDefinition:createdFrom" = "ecs-console-v2"
#   }
#   task_role_arn = "arn:aws-us-gov:iam::779607147673:role/ecsTaskExecutionRole"
#   track_latest  = false
#   volume {
#     configure_at_launch = false
#     host_path           = null
#     name                = "efs_radiant"
#     efs_volume_configuration {
#       file_system_id          = "fs-03c22c4fb49654bce"
#       root_directory          = "/"
#       transit_encryption      = "ENABLED"
#       transit_encryption_port = 0
#       authorization_config {
#         access_point_id = null
#         iam             = "ENABLED"
#       }
#     }
#   }
# }

# # __generated__ by Terraform from "lcmp/radiant-service-nlb-tagged"
# resource "aws_ecs_service" "radiant_service_nlb_tagged" {
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
#   launch_type                        = "FARGATE"
#   name                               = "radiant-service-nlb-tagged"
#   platform_version                   = "LATEST"
#   propagate_tags                     = "SERVICE"
#   scheduling_strategy                = "REPLICA"
#   tags = {
#     Client = "SSC"
#     Name   = "Radiant Service Production"
#   }
#   tags_all = {
#     Client      = "SSC"
#     Environment = "Production"
#     Name        = "Radiant Service Production"
#   }
#   task_definition       = "radiant-task:45"
#   triggers              = {}
#   wait_for_steady_state = null
#   alarms {
#     alarm_names = []
#     enable      = false
#     rollback    = false
#   }
#   deployment_circuit_breaker {
#     enable   = true
#     rollback = true
#   }
#   deployment_controller {
#     type = "ECS"
#   }
#   load_balancer {
#     container_name   = "radiant-nginx"
#     container_port   = 443
#     elb_name         = null
#     target_group_arn = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:779607147673:targetgroup/Radiant-TG/799022e3198336de"
#   }
#   network_configuration {
#     assign_public_ip = false
#     security_groups  = ["sg-0fa2c49871ff19732", "sg-456bbf20", "sg-6b6abe0e", "sg-b66abed3"]
#     subnets          = ["subnet-e501f280"]
#   }
# }

# # __generated__ by Terraform
# resource "aws_lb" "radiant_nlb" {
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
#   name                                                         = "Radiant-NLB"
#   name_prefix                                                  = null
#   preserve_host_header                                         = null
#   security_groups                                              = ["sg-0fa2c49871ff19732", "sg-456bbf20", "sg-666bbf03", "sg-6b6abe0e"]
#   subnets                                                      = ["subnet-1a01f27f", "subnet-4d667c39"]
#   tags = {
#     Enviroment = "Prod"
#     Name       = "Radiant-NLB"
#   }
#   tags_all = {
#     Enviroment = "Prod"
#     Name       = "Radiant-NLB"
#   }
#   xff_header_processing_mode = null
#   access_logs {
#     bucket  = ""
#     enabled = false
#     prefix  = null
#   }
# }
