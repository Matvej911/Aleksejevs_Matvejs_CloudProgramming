resource "aws_lb" "myelasticloadbalancer" {
  client_keep_alive                           = 3600
  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = false
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                  = false
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  idle_timeout                                = 60
  internal                                    = false
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "loadbalancerweb"
  preserve_host_header                        = false
  security_groups                             = [aws_security_group.mysecuritygr.id]
  subnets                                     = var.subnets

  xff_header_processing_mode = "append"



}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.myelasticloadbalancer.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.mytarget_group.arn
  }
}
