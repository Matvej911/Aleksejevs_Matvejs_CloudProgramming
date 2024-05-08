resource "aws_autoscaling_group" "autoscale_web" {

  availability_zones = [
    "${var.region}a",
    "${var.region}b",
    "${var.region}c",
  ]
  capacity_rebalance        = false
  default_cooldown          = 300
  default_instance_warmup   = 0
  desired_capacity          = 2
  enabled_metrics           = []
  health_check_grace_period = 300
  health_check_type         = "EC2"
  max_instance_lifetime     = 0
  max_size                  = 4
  metrics_granularity       = "1Minute"
  min_size                  = 2
  name                      = "autoscalegroupweb"
  protect_from_scale_in     = false
  suspended_processes       = []

  target_group_arns = [aws_lb_target_group.mytarget_group.arn]

  launch_template {
    id      = aws_launch_template.my_template.id
    version = "$Latest"
  }


}
