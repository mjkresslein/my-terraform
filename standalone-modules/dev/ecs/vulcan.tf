# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "arn:aws:ecs:us-east-1:947132430921:task-definition/bah-vulcan6:1"
# resource "aws_ecs_task_definition" "bah_vulcan6" {
#   container_definitions = jsonencode([{
#     environment = []
#     essential   = true
#     image       = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-vulcan"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/vulcan"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#     }
#     mountPoints  = []
#     name         = "bah-vulcan"
#     portMappings = []
#     volumesFrom  = []
#   }])
#   cpu                      = "512"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   family                   = "bah-vulcan6"
#   ipc_mode                 = null
#   memory                   = "1024"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags                     = {}
#   tags_all                 = {}
#   task_role_arn            = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   track_latest             = false
# }

# # __generated__ by Terraform from "arn:aws:ecs:us-east-1:947132430921:task-definition/bah-vulcan-demo-ec2:5"
# resource "aws_ecs_task_definition" "bah_vulcan_demo_ec2" {
#   container_definitions = jsonencode([{
#     cpu         = 512
#     environment = []
#     essential   = false
#     image       = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-vulcan-db"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/bah-vulcan-demo"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#       secretOptions = []
#     }
#     memory            = 1024
#     memoryReservation = 1024
#     mountPoints = [{
#       containerPath = "/tmp"
#       readOnly      = false
#       sourceVolume  = "vulcan-data"
#     }]
#     name = "bah-vulcan-db"
#     portMappings = [{
#       containerPort = 27017
#       hostPort      = 27017
#       name          = "bah-vulcan-db-27017-tcp"
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     volumesFrom    = []
#     }, {
#     cpu = 512
#     dependsOn = [{
#       condition     = "START"
#       containerName = "fastapi"
#     }]
#     environment = [{
#       name  = "API_URL"
#       value = "http://localhost:8080"
#     }]
#     essential = true
#     image     = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-vulcan-ui"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/bah-vulcan-demo"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#       secretOptions = []
#     }
#     memory            = 1024
#     memoryReservation = 1024
#     mountPoints       = []
#     name              = "bah-vulcan-ui"
#     portMappings = [{
#       containerPort = 80
#       hostPort      = 80
#       name          = "bah-vulcan-ui-80-tcp"
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     volumesFrom    = []
#     }, {
#     cpu = 512
#     dependsOn = [{
#       condition     = "START"
#       containerName = "bah-vulcan-db"
#     }]
#     environment = []
#     essential   = true
#     image       = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-vulcan-api"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/bah-vulcan-demo"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#       secretOptions = []
#     }
#     memory            = 1024
#     memoryReservation = 1024
#     mountPoints       = []
#     name              = "fastapi"
#     portMappings = [{
#       containerPort = 8080
#       hostPort      = 8080
#       name          = "fastapi-8080-tcp"
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     volumesFrom    = []
#   }])
#   cpu                      = "2048"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   family                   = "bah-vulcan-demo-ec2"
#   ipc_mode                 = null
#   memory                   = "4096"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["EC2"]
#   skip_destroy             = null
#   tags                     = {}
#   tags_all                 = {}
#   task_role_arn            = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   track_latest             = false
#   runtime_platform {
#     cpu_architecture        = "X86_64"
#     operating_system_family = "LINUX"
#   }
#   volume {
#     configure_at_launch = true
#     host_path           = null
#     name                = "vulcan-data"
#   }
# }

# __generated__ by Terraform from "arn:aws:ecs:us-east-1:947132430921:task-definition/bah-vulcan-demo:18"
resource "aws_ecs_task_definition" "bah_vulcan_demo" {
  container_definitions = jsonencode([{
    cpu              = 1024
    environment      = []
    environmentFiles = []
    essential        = true
    image            = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-vulcan-db"
    logConfiguration = {
      logDriver = "awslogs"
      options = {
        awslogs-create-group  = "true"
        awslogs-group         = "/ecs/bah-vulcan-demo"
        awslogs-region        = "us-east-1"
        awslogs-stream-prefix = "ecs"
      }
      secretOptions = []
    }
    memory            = 2048
    memoryReservation = 1024
    # mountPoints = [{
    #   containerPath = "/mnt/ecs/ebs/"
    #   readOnly      = false
    #   sourceVolume  = "Vulcan-fargate"
    # }]
    name = "bah-vulcan-db"
    portMappings = [{
      appProtocol   = "http"
      containerPort = 27017
      hostPort      = 27017
      name          = "bah-vulcan-db-27017-tcp"
      protocol      = "tcp"
    }]
    systemControls = []
    volumesFrom    = []
    }, {
    cpu = 1024
    dependsOn = [{
      condition     = "START"
      containerName = "fastapi"
    }]
    environment      = []
    environmentFiles = []
    essential        = true
    image            = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-vulcan-ui"
    logConfiguration = {
      logDriver = "awslogs"
      options = {
        awslogs-create-group  = "true"
        awslogs-group         = "/ecs/bah-vulcan-demo"
        awslogs-region        = "us-east-1"
        awslogs-stream-prefix = "ecs"
      }
      secretOptions = []
    }
    memory            = 2048
    memoryReservation = 1024
    mountPoints       = []
    name              = "bah-vulcan-ui"
    portMappings = [{
      appProtocol   = "http"
      containerPort = 80
      hostPort      = 80
      name          = "bah-vulcan-ui-80-tcp"
      protocol      = "tcp"
    }]
    startTimeout   = 120
    systemControls = []
    volumesFrom    = []
    }, {
    cpu = 1024
    dependsOn = [{
      condition     = "START"
      containerName = "bah-vulcan-db"
    }]
    environment      = []
    environmentFiles = []
    essential        = true
    image            = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-vulcan-api"
    logConfiguration = {
      logDriver = "awslogs"
      options = {
        awslogs-create-group  = "true"
        awslogs-group         = "/ecs/bah-vulcan-demo"
        awslogs-region        = "us-east-1"
        awslogs-stream-prefix = "ecs"
      }
      secretOptions = []
    }
    memory            = 2048
    memoryReservation = 1024
    mountPoints       = []
    name              = "fastapi"
    portMappings      = []
    systemControls    = []
    ulimits           = []
    volumesFrom       = []
  }])
  cpu                      = "4096"
  enable_fault_injection   = false
  execution_role_arn       = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
  family                   = "bah-vulcan-demo"
  ipc_mode                 = null
  memory                   = "8192"
  network_mode             = "awsvpc"
  pid_mode                 = null
  requires_compatibilities = ["FARGATE"]
  skip_destroy             = null
  tags                     = {}
  tags_all                 = {}
  task_role_arn            = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
  track_latest             = false
  ephemeral_storage {
    size_in_gib = 75
  }
  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }
  # volume {
  #   configure_at_launch = true
  #   host_path           = null
  #   name                = "Vulcan-fargate"
  # }
}

# # __generated__ by Terraform from "arn:aws:ecs:us-east-1:947132430921:task-definition/vulcan:1"
# resource "aws_ecs_task_definition" "vulcan" {
#   container_definitions = jsonencode([{
#     environment = []
#     essential   = true
#     image       = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-vulcan"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/vulcan"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#     }
#     mountPoints  = []
#     name         = "bah-vulcan"
#     portMappings = []
#     volumesFrom  = []
#   }])
#   cpu                      = "1024"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   family                   = "vulcan"
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

# # __generated__ by Terraform from "arn:aws:ecs:us-east-1:947132430921:task-definition/bah-nfpc-vulcan:1"
# resource "aws_ecs_task_definition" "bah_nfpc_vulcan" {
#   container_definitions = jsonencode([{
#     environment = []
#     essential   = true
#     image       = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-nfpc-vulcan:0.0.1"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/bah-nfpc-vulcan"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#     }
#     mountPoints = []
#     name        = "nfpc-vulcan"
#     portMappings = [{
#       containerPort = 80
#       hostPort      = 80
#       protocol      = "tcp"
#     }]
#     volumesFrom = []
#   }])
#   cpu                      = "512"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   family                   = "bah-nfpc-vulcan"
#   ipc_mode                 = null
#   memory                   = "1024"
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
# }

# # __generated__ by Terraform from "arn:aws:ecs:us-east-1:947132430921:task-definition/bah-vulcan4:14"
# resource "aws_ecs_task_definition" "bah_vulcan4" {
#   container_definitions = jsonencode([{
#     command               = []
#     dnsSearchDomains      = []
#     dnsServers            = []
#     dockerSecurityOptions = []
#     entryPoint            = []
#     environment           = []
#     essential             = true
#     image                 = "947132430921.dkr.ecr.us-east-1.amazonaws.com/bah-vulcan:0.0.14"
#     links                 = []
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-group         = "/ecs/bah-vulcan4"
#         awslogs-region        = "us-east-1"
#         awslogs-stream-prefix = "ecs"
#       }
#     }
#     mountPoints = []
#     name        = "bah-vulcan2"
#     portMappings = [{
#       containerPort = 443
#       hostPort      = 443
#       protocol      = "tcp"
#     }]
#     systemControls = []
#     volumesFrom    = []
#   }])
#   cpu                      = "512"
#   enable_fault_injection   = false
#   execution_role_arn       = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   family                   = "bah-vulcan4"
#   ipc_mode                 = null
#   memory                   = "1024"
#   network_mode             = "awsvpc"
#   pid_mode                 = null
#   requires_compatibilities = ["FARGATE"]
#   skip_destroy             = null
#   tags = {
#     "ecs:taskDefinition:createdFrom" = "ecs-console-v2"
#     "ecs:taskDefinition:stackId"     = "arn:aws:cloudformation:us-east-1:947132430921:stack/ECS-Console-V2-TaskDefinition-7f8514f0-9110-43fd-80f6-49061174b88a/c06ba370-dadd-11ec-ba14-124cd25e3283"
#   }
#   tags_all = {
#     "ecs:taskDefinition:createdFrom" = "ecs-console-v2"
#     "ecs:taskDefinition:stackId"     = "arn:aws:cloudformation:us-east-1:947132430921:stack/ECS-Console-V2-TaskDefinition-7f8514f0-9110-43fd-80f6-49061174b88a/c06ba370-dadd-11ec-ba14-124cd25e3283"
#   }
#   task_role_arn = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   track_latest  = false
# }

# # __generated__ by Terraform from "arn:aws:ecs:us-east-1:947132430921:task-definition/vulcan-2024:6"
# resource "aws_ecs_task_definition" "vulcan_2024" {
#   container_definitions = jsonencode([{
#     cpu              = 1024
#     environment      = []
#     environmentFiles = []
#     essential        = true
#     image            = "947132430921.dkr.ecr.us-east-1.amazonaws.com/vulcan-2024-api:latest"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/vulcan-2024-api"
#         awslogs-region        = "us-east-1"
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
#     ulimits           = []
#     volumesFrom       = []
#     }, {
#     cpu = 1024
#     dependsOn = [{
#       condition     = "START"
#       containerName = "api"
#     }]
#     environment      = []
#     environmentFiles = []
#     essential        = true
#     image            = "947132430921.dkr.ecr.us-east-1.amazonaws.com/vulcan-2024-ui:latest"
#     logConfiguration = {
#       logDriver = "awslogs"
#       options = {
#         awslogs-create-group  = "true"
#         awslogs-group         = "/ecs/vulcan-2024-ui"
#         awslogs-region        = "us-east-1"
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
#   execution_role_arn       = "arn:aws:iam::947132430921:role/ecsTaskExecutionRole"
#   family                   = "vulcan-2024"
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

# __generated__ by Terraform from "lcmp/bah-vulcan-demo-no-public-ip"
resource "aws_ecs_service" "bah_vulcan_demo_no_public_ip" {
  availability_zone_rebalancing      = "DISABLED"
  cluster                            = "arn:aws:ecs:us-east-1:947132430921:cluster/lcmp"
  deployment_maximum_percent         = 200
  deployment_minimum_healthy_percent = 100
  desired_count                      = 1
  enable_ecs_managed_tags            = true
  enable_execute_command             = false
  force_delete                       = null
  force_new_deployment               = null
  health_check_grace_period_seconds  = 0
  # iam_role                           = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
  launch_type                        = "FARGATE"
  name                               = "bah-vulcan-demo-no-public-ip"
  platform_version                   = "1.4.0"
  propagate_tags                     = "NONE"
  scheduling_strategy                = "REPLICA"
  tags                               = {}
  tags_all                           = {}
  task_definition                    = "bah-vulcan-demo:20"
  triggers                           = {}
  wait_for_steady_state              = null
  deployment_circuit_breaker {
    enable   = true
    rollback = true
  }
  deployment_controller {
    type = "ECS"
  }
  load_balancer {
    container_name   = "bah-vulcan-ui"
    container_port   = 80
    elb_name         = null
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:947132430921:targetgroup/bah-vulcan-demo-priv-grp/4b5d15642e09fcdc"
  }
  network_configuration {
    assign_public_ip = false
    security_groups  = ["sg-822f3bf8"]
    subnets          = ["subnet-b174f1f8"]
  }
}
