resource "aws_instance" "desafio" {
  count = "1"
  subnet_id = "${var.subnet}"
  instance_type = "${var.type}"
  ami = "${var.ami}"
  key_name = "desafio"
  security_groups = [
    "${var.sg}"]
  associate_public_ip_address = true

  root_block_device {
    volume_size = "${var.size}"
  }

  tags {
    Name = "${var.tag}"
  }

}
