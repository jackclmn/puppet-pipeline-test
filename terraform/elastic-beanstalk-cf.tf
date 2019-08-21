resource "aws_elastic_beanstalk_application" "elastic-bean-app" {
  name        = "${var.app}"
  description = ""
}

resource "aws_elastic_beanstalk_environment" "elastic-bean-env" {
  name                = "${var.env}"
  application         = "${aws_elastic_beanstalk_application.elastic-bean-app.name}"
  solution_stack_name = "${var.node_type}"
}
