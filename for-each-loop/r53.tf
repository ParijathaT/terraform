resource "aws_route53_record" "expense" {
  for-each = aws_instance.this 
  zone_id = var.zone_id
  name    = each.key=="frontend" ?var.domai_name:${each.key}".${var.domain_name}"
  type    = "A"
  ttl     = 1terraform/count/r53.tf
  records = each.key=="frontend" ?[each.value.public_ip]:[each.value.private_ip]
  allow_overwrite = true
}

/*resource "aws_route53_record" "frontend"{ 

  zone_id = var.zone_id
  name    = "${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.value.public_key]
  allow_overwrite = true
}*/