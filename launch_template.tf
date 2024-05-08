resource "aws_launch_template" "my_template" {
  disable_api_stop        = false
  disable_api_termination = false
  image_id                = var.ami
  instance_type           = var.instance_type
  name                    = "launchtemplateweb"
  user_data               = filebase64("user_data.sh")
  vpc_security_group_ids  = [aws_security_group.mysecuritygr.id]

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
  }
}
