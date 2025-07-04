# 🚀 Déploiement d'une Infrastructure AWS avec Terraform

## 📖 Description

Ce projet déploie une infrastructure AWS complète avec **Terraform** :
- Un réseau (VPC, Subnet, Internet Gateway, Route Table, NACL)
- Une instance **EC2** publique avec un serveur web
- Sécurité via **Security Group** et **IAM**
- Supervision avec **CloudWatch Logs** et **Alarmes SNS**
- Toutes les ressources sont paramétrables via des variables

## 📁 Architecture

```
project-root/
│
├── 00-required.tf      # Version et provider AWS
├── 01-variables.tf     # Variables d'entrée
├── 10-data.tf          # Data sources AWS
├── 20-main.tf          # Définition des ressources principales
├── 02-defaults.tf      # (vide)
└── README.md
```

### Principales ressources créées

- **VPC** + **Subnet** + **Internet Gateway**
- **Route Table** + **NACL**
- **Security Group** pour EC2
- **Instance EC2** (Amazon Linux, HTTP installé)
- **CloudWatch Log Group** pour VPC Flow Logs
- **SNS Topic** + **Alarmes CloudWatch** (alertes sur trafic ICMP refusé)
- **IAM Role** pour les logs

## 🛠️ Prérequis

- [Terraform](https://www.terraform.io/downloads.html) (`>=1.0.0`)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) (`>=2.0.0`)
- Un compte AWS avec les permissions nécessaires

## 🚀 Déploiement

1️⃣ **Initialiser Terraform**
```sh
terraform init
```

2️⃣ **Configurer les variables**
- Modifie `01-variables.tf` ou crée un fichier `terraform.tfvars` pour personnaliser (VPC, subnet, instance, etc.)

3️⃣ **Vérifier le plan**
```sh
terraform plan
```

4️⃣ **Appliquer le déploiement**
```sh
terraform apply
```

## 🧹 Nettoyage

Pour détruire l'infrastructure :
```sh
terraform destroy
```

## 📝 Notes

- Les logs et alarmes sont configurés pour surveiller le trafic ICMP refusé (ex : ping bloqué).
- L'instance EC2 déploie automatiquement un serveur HTTP (voir user_data dans `20-main.tf`).
- Les identifiants AWS doivent être configurés (`aws configure` ou variables d'environnement).
