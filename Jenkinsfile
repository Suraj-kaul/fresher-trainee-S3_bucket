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
            git branch: 'master', url: 'https://github.com/Suraj-kaul/fresher-trainee-S3_bucket.git'
            }
            }
        stage("Terraform init"){
            steps{
            sh '''terraform --version
                  terraform -chdir=example/init'''
            }
        }
        stage("Terraform apply"){
            steps{
            sh "terraform -chdir=example/apply --auto-approve"
            }
        }
        stage("Terraform destroy"){
            steps{
            sh "terraform -chdir=example/destroy --auto-approve"
                  }
        }
    }
}
