resource "aws_launch_template" "app" {
  name_prefix   = "${var.name_prefix}-lt"
  image_id      = "ami-1234567890abcdef0"
  instance_type = var.instance_type

  vpc_security_group_ids = [
    var.app_sg_id
  ]
}

resource "aws_autoscaling_group" "app" {
  name = "${var.name_prefix}-asg"

  min_size         = var.min_size
  max_size         = var.max_size
  desired_capacity = var.desired_capacity

  vpc_zone_identifier = var.private_subnet_ids

  target_group_arns = [
    var.target_group_arn
  ]

  launch_template {
    id      = aws_launch_template.app.id
    version = "$Latest"
  }
}
