resource "aws_elastic_beanstalk_environment" "vprofile-bean-prod" {
    name = "vprofile-bean-prod"
    application = aws_elastic_beanstalk_application.vprofile-prod
    

}