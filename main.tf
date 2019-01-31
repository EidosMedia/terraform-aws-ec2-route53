resource "aws_route53_record" "internal" {
  count   = "${var.count}"
  zone_id = "${var.zone_id}"
  name    = "${element(var.internal_ips["hostname"],count.index)}.${var.domain}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"
  records = ["${element(var.internal_ips["private_ip_dns"],count.index)}"]
}