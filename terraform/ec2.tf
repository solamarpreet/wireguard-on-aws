resource "aws_key_pair" "mysshkey" {
  key_name   = "mysshkey"
  public_key = var.ssh_public_key
}

resource "aws_instance" "myvpnserver" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.mysshkey.id
  security_groups = tolist([aws_security_group.allow_traffic.name])
}