region = "us-east-2"
nlb_name = "my-nlb"
internal_nlb = false
security_groups = ["sg-06ac155edea432fbc"]
subnets = ["subnet-061b0dd145e444875", "subnet-0c821a62cb75f25be", "subnet-03113ab7dc2eae892"]
enable_deletion_protection = false
listener_port = 3306
target_group_name = "my-target-group"
target_port = 3306
vpc_id = "vpc-0b46d8b7746118a42"