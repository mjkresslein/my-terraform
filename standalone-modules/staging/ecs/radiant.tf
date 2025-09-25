# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "arn:aws-us-gov:ecs:us-gov-west-1:482556331625:task-definition/bah-radiant-task:46"
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
#     image     = "482556331625.dkr.ecr.us-gov-west-1.amazonaws.com/bah-smcr-nginx:1.12.17"
#     # image = "482556331625.dkr.ecr.us-gov-west-1.amazonaws.com/radiant-ui:20250503-5"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/bah-radiant-task"
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
#       value = "LCMP-WN19-DB1-A"
#       }, {
#       name  = "DB_PORT"
#       value = "1433"
#       }, {
#       name  = "DB_USERNAME"
#       value = "radiant"
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
#       value = "true"
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
#         valueFrom = "arn:aws-us-gov:secretsmanager:us-gov-west-1:482556331625:secret:strata-stage/ssc/radiant-O15uUN:DB_CONNECTION_STRING::"
#       },
#       {
#         name      = "DB_PASSWORD"
#         valueFrom = "arn:aws-us-gov:secretsmanager:us-gov-west-1:482556331625:secret:strata-stage/ssc/radiant-O15uUN:ECS_DB_PASSWORD::"
#       },
#       {
#         name      = "MYSQL_PASS"
#         valueFrom = "arn:aws-us-gov:secretsmanager:us-gov-west-1:482556331625:secret:strata-stage/ssc/radiant-O15uUN:MYSQL_PASS::"
#       }
#     ]
#     essential = true
#     image     = "482556331625.dkr.ecr.us-gov-west-1.amazonaws.com/bah-smcr-backend:1.12.17"
#     # image = "482556331625.dkr.ecr.us-gov-west-1.amazonaws.com/radiant-api:20250503-3"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/bah-radiant-task"
#         awslogs-region        = "us-gov-west-1"
#         awslogs-stream-prefix = "ecs"
#       }
#       secretOptions = []
#     }
#     mountPoints = [{
#       containerPath = "/home/node/app/uploads/"
#       sourceVolume  = "efs_radiant"
#     }]
#     name = "smc-radiant-backend"
#     portMappings = [{
#       containerPort = 5000
#       hostPort      = 5000
#       name          = "smc-radiant-backend-5000-tcp"
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     volumesFrom    = []
#   }])
#   cpu                      = "4096"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws-us-gov:iam::482556331625:role/ecsTaskExecutionRole"
#   family                   = "bah-radiant-task"
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
#   volume {
#     configure_at_launch = false
#     host_path           = null
#     name                = "efs_radiant"
#     efs_volume_configuration {
#       file_system_id          = "fs-047217267f747fd06"
#       root_directory          = "/"
#       transit_encryption      = "ENABLED"
#       transit_encryption_port = 0
#       authorization_config {
#         access_point_id = "fsap-06eaeede1bca4a48c"
#         iam             = "ENABLED"
#       }
#     }
#   }
# }

# # __generated__ by Terraform from "LCMP/radiant-service-tagged"
# resource "aws_ecs_service" "radiant_service_tagged" {
#   availability_zone_rebalancing      = "DISABLED"
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
#   launch_type                        = "FARGATE"
#   name                               = "radiant-service-tagged"
#   platform_version                   = "1.4.0"
#   propagate_tags                     = "SERVICE"
#   scheduling_strategy                = "REPLICA"
#   tags = {
#     Client = "SSC"
#     Name   = "Radiant Service Staging"
#   }
#   tags_all = {
#     Client      = "SSC"
#     Environment = "Staging"
#     Name        = "Radiant Service Staging"
#   }
#   # task_definition       = "bah-radiant-task:48"
#   task_definition = aws_ecs_task_definition.bah_radiant_task_def.arn
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
#     target_group_arn = "arn:aws-us-gov:elasticloadbalancing:us-gov-west-1:482556331625:targetgroup/radiant-tg/b33c8e34ac349a0b"
#   }
#   network_configuration {
#     assign_public_ip = false
#     security_groups  = ["sg-02169950b9644dca9", "sg-02705a56165fae56f", "sg-0de9ba70c9999fd65", "sg-0e465bd8bb56692bd", "sg-0ffff6d17550b691e"]
#     subnets          = ["subnet-00e39f9e4fcc468b0"]
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
#   name                                                         = "radiant-nlb"
#   name_prefix                                                  = null
#   preserve_host_header                                         = null
#   security_groups                                              = ["sg-02705a56165fae56f", "sg-0de9ba70c9999fd65", "sg-0e465bd8bb56692bd"]
#   subnets                                                      = ["subnet-00e39f9e4fcc468b0", "subnet-0e43d00b9cc92410f"]
#   tags = {
#     Enviroment = "Stag"
#     Name       = "radiant_nlb"
#   }
#   tags_all = {
#     Enviroment = "Stag"
#     Name       = "radiant_nlb"
#   }
#   xff_header_processing_mode = null
#   access_logs {
#     bucket  = ""
#     enabled = false
#     prefix  = null
#   }
# }
