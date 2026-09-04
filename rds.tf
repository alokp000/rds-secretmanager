resource "aws_db_instance" "mydb" {
    identifier = "my-demo-rds"
    engine = "mysql"
    engine_version = "8.0"
    instance_class = "db.t3.micro"
    allocated_storage = 20
    db_name = "mydatabase"
    username = "mydbuser"
    password = random_password.rdspassword.result
    publicly_accessible = false
    skip_final_snapshot = true
}

