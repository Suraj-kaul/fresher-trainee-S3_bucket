pipeline{
    agent any
    tools {
      terraform 'terraform'
    }


  environment {
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
   }
  stages{
        stage("git checkout"){
            steps{
            git branch: 'main', url: 'https://github.com/Suraj-kaul/fresher-trainee-S3_bucket.git'
            }
            }
        stage("Terraform init"){
            steps{
            sh '''terraform --version
                  terraform -chdir=module/init'''
            }
        }
        stage("Terraform apply"){
            steps{
            sh "terraform -chdir=module/apply --auto-approve"
            }
        }
        stage("Terraform destroy"){
            steps{
            sh "terraform -chdir=module/destroy --auto-approve"
                  }
        }
    }
}
