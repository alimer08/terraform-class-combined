resource "aws_route53_record" "blog" {
  zone_id = "Z32OHGRMBVZ9LR"
  name    = "blog.acirrustech.com"
  type    = "A"
  ttl     = "60"
  records = [
      aws_instance.web[0].public_ip,
      aws_instance.web[1].public_ip,
      aws_instance.web[2].public_ip,
      ]
}