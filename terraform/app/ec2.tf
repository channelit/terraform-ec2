resource "aws_instance" "app_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"
  user_data     = <<EOF
        #!/bin/bash
        echo "Copying the SSH Key to the server"
        echo -e "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9LChJZrGHq2Ysy77l2CaFzj5XkWIPljH++I4vWS6i7h5gPI1NArfSw5l7uZxIsyIG4JYuGkH/AwN6yM/DVILAy1myi8fyxg+gJ/TXBoqQGBLKo5evj5/e9+KoZg3+BarPYi9wjNO11fgy+8FhEJFzmwJ81rBzh3Qb63qrdWCy8WJ7GzUAGrKp0ErdNem6rkh5RGQDs0v2uUVHX/TV1EdQ0yZsmALlNpKoQMUEshz7cyQ1t8lFmbrJa5EvUBDRE5LLiuVbXKW+17mcQz/Jctkh0WSWetDpHUW9D7Z37umhBhQok+ijVuxyphAwUnCkBJCViJZQTK06cDWPLUuCacSgDkljymyRubhqyaadR6zV6dJnS5J2b6twtzoDavHUdRnKQVj2SQwe6xF6XMXgqlFJ6i5YaAZpVST807lWtrfta6tnInTjw9I4VC/MXVGBVsIqhF7+uFTZ61b0hnuHxU7+VStuQR24xbQV5g6gNylYlcXkztiOZ3mslhK96gzjXzMNU1LlhqEW7Ky0hyvphWDbRH/WB1n8hqgf9ijCj7cc6YAKyOv2GDmpVbFNKH5o84UPMBbQBJdkRWhT9VhwaUHeroztqmDfLE/7yZR5CRSTuOxjWC1JCYqjWtKYhSCHV+Yh0PgS2BTKSXY2pSkHt7htwvBYLEv8Ct8Zhx07B0vqMQ== hardikpatel@hardiks-air.lan" >> /home/ubuntu/.ssh/authorized_keys
        EOF
}