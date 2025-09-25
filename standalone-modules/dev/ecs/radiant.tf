# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "arn:aws:ecs:us-east-1:947132430921:task-definition/bah-radiant-task:85"
# resource "aws_ecs_task_definition" "bah_radiant_task_def" {
#   container_definitions = jsonencode([{
#     command = ["npm", "run", "deploy"]
#     dependsOn = [{
#       condition     = "START"
#       containerName = "sqlserver"
#     }]
#     environment = [{
#       name  = "CERT_FLAG"
#       value = "disabled"
#       }, {
#       name  = "CIPHERS"
#       value = "tls_ciphers.txt"
#       }, {
#       name  = "DB_DATABASE"
#       value = "smcr"
#       }, {
#       name  = "DB_HOST"
#       value = "localhost"
#       }, {
#       name  = "DB_PASSWORD"
#       value = "MssqlPass123"
#       }, {
#       name  = "DB_PORT"
#       value = "1433"
#       }, {
#       name  = "DB_USERNAME"
#       value = "sa"
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
#       name  = "MYSQL_PASS"
#       value = "ByjGDmfSVjDjoPLo"
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
#     essential = true
#     image     = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-smcr-backend:0.0.22"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/bah-radiant-task"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#     }
#     mountPoints = []
#     name        = "smc-radiant-backend"
#     portMappings = [{
#       containerPort = 443
#       hostPort      = 443
#       protocol      = "tcp"
#     }]
#     volumesFrom      = []
#     workingDirectory = "/home/node/app"
#     }, {
#     command = ["/bin/bash", "./entrypoint.sh"]
#     environment = [{
#       name  = "ACCEPT_EULA"
#       value = "Y"
#       }, {
#       name  = "MSSQL_AGENT_ENABLED"
#       value = "true"
#       }, {
#       name  = "SA_PASSWORD"
#       value = "MssqlPass123"
#     }]
#     essential = false
#     image     = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-smcr-db:0.0.14"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/bah-radiant-task"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#     }
#     mountPoints = [{
#       containerPath = "/var/lib/sql/"
#       readOnly      = false
#       sourceVolume  = "radiant-volume"
#     }]
#     name = "sqlserver"
#     portMappings = [{
#       containerPort = 1433
#       hostPort      = 1433
#       protocol      = "tcp"
#     }]
#     readonlyRootFilesystem = false
#     volumesFrom            = []
#   }])
#   cpu                      = "2048"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   family                   = "bah-radiant-task"
#   ipc_mode                 = null
#   memory                   = "4096"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags                     = {}
#   tags_all                 = {}
#   task_role_arn            = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   track_latest             = false
#   runtime_platform {
#     cpu_architecture        = null
#     operating_system_family = "LINUX"
#   }
#   volume {
#     configure_at_launch = false
#     host_path           = null
#     name                = "radiant-volume"
#   }
# }

# # __generated__ by Terraform from "arn:aws:ecs:us-east-1:947132430921:task-definition/radiant-nginx-test:1"
# resource "aws_ecs_task_definition" "radiant_nginx_test_task_def" {
#   container_definitions = jsonencode([{
#     environment = [{
#       name  = "API_HOST"
#       value = "127.0.0.1"
#       }, {
#       name  = "API_PORT"
#       value = "5000"
#     }]
#     essential = true
#     image     = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-smcr-nginx:0.0.5"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/bah-radiant-task"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#     }
#     mountPoints = []
#     name        = "radiant-nginx"
#     portMappings = [{
#       containerPort = 443
#       hostPort      = 443
#       protocol      = "tcp"
#     }]
#     volumesFrom = []
#   }])
#   cpu                      = "2048"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   family                   = "radiant-nginx-test"
#   ipc_mode                 = null
#   memory                   = "4096"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags                     = {}
#   tags_all                 = {}
#   task_role_arn            = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   track_latest             = false
#   runtime_platform {
#     cpu_architecture        = null
#     operating_system_family = "LINUX"
#   }
#   volume {
#     configure_at_launch = false
#     host_path           = null
#     name                = "radiant-volume"
#   }
# }
