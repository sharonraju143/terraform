resource "aws_elastic_beanstalk_environment" "project-app-env" {
  name                = "project-app-env"
  application         = aws_elastic_beanstalk_application.project-app.name
  solution_stack_name = "64bit Amazon Linux 2 v4.1.1 running Tomcat 8.5 Corretto 11"
  cname_prefix        = "project-bean-domain"
  setting {
    name      = "VPCId"
    namespace = "aws:ec2:vpc"
    value     = aws_vpc.demo-vpc.id

  }
}

