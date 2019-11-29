# Using AWS CloudFront to super charge your application performance

Example code to use w/ the article `Using AWS CloudFront to super charge your application performance` from [https://blog.davidjeddy.com](https://blog.davidjeddy.com).

## Requirements

- [Linux](https://www.linux.org/)
- [CLI Terminal](https://en.wikipedia.org/wiki/Terminal#Software)
- [Terraform 0.12.x](https://www.terraform.io/downloads.html)
- AWS account
  - [API credentials provisioned](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html)
  - [PEM key provisioned](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
- Static Website
  - [I used Nissa from colorlib](https://colorlib.com/wp/template/nissa/), save to ./web_assets
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)
- [Gatling](https://gatling.io/) for load testing
  - [Gatling documentation 3.3 Cheat-Sheet](https://gatling.io/docs/current/cheat-sheet/)
- A domain name under your control.

## Usage

### Start

```sh
git clone ...
export AWS_ACCESS_KEY_ID=YOUR_API_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=YOUR_API_SECRET_KEY
terraform init
terraform plan -out plan.out
terraform apply plan.out
```

#### without CDN

```sh
```

#### with CDN

```sh
```

### Stop

```sh
terraformn destroy
# provide pem key name when prompted
# type `yes` and press [enter] when asked for confirmation
```

## Note

- This project is a supliment for [Using AWS CloudFront to super charge your application performance]().
- This is NOT production grade code, please do not use it as such.
- Terraform logic assumes us-east-1 and default VPC for simplicity.
