resource "random_password" "rdspassword" {
    length  = 16
    special = true
}
resource "aws_secretsmanager_secret" "rds_secret" {
    name = "my-rds-secret"
}
resource "aws_secretsmanager_secret_version" "rds_secret_version" {
    secret_id = aws_secretsmanager_secret.rds_secret.id
    secret_string = jsonencode({
        username = "mydbuser"
        password = random_password.rdspassword.result
    })
}
