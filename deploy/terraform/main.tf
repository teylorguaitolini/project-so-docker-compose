provider "aws" {
  region = "us-east-1"  # Substitua pela região desejada
}

# (Passo 1) Criação de uma Chave SSH (pode usar sua chave existente)
resource "tls_private_key" "my_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Criando um par de chaves na AWS com a chave pública gerada
resource "aws_key_pair" "deployer" {
  key_name   = "my_key_pair"
  public_key = tls_private_key.my_key.public_key_openssh
}

# Definindo um grupo de segurança que permite acesso SSH e às portas da aplicação
resource "aws_security_group" "allow_ssh_http" {
  name_prefix = "terraform-example-"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000  # Porta da API
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8501  # Porta do Frontend (Streamlit)
    to_port     = 8501
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Criando a instância EC2 e executando o script setup.sh
resource "aws_instance" "docker_host" {
  ami           = "ami-0e86e20dae9224db8"  # Amazon Ubuntu 24.04
  instance_type = "t2.medium"
  key_name      = aws_key_pair.deployer.key_name

  security_groups = [aws_security_group.allow_ssh_http.name]

  # Executa o setup.sh na inicialização da instância
  user_data = file("setup.sh")
}

# (Passo 3 - Opcional) Saída da chave privada, se gerada via Terraform
output "private_key_pem" {
  value     = tls_private_key.my_key.private_key_pem
  sensitive = true
}

# (Passo 3 - Opcional) Saída do nome da chave SSH
output "key_pair_name" {
  value = aws_key_pair.deployer.key_name
}

# IP público da instância para acessar a aplicação
output "instance_ip" {
  value = aws_instance.docker_host.public_ip
}
