pipeline{
    agent any
    tools {
      terraform 'terraform'
    }


  environment {
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    AWS_SESSION_TOKEN     = credentials('AWS_SESSION_TOKEN')
   }
  stages{
        stage("git checkout"){
            steps{
            git branch: 'suraj', url: 'https://github.com/Suraj-kaul/fresher-trainee-S3_bucket.git'
            }
            //  steps{
            // git branch: 'suraj', url: 'https://github.com/Suraj-kaul/fresher-trainee-S3_bucket.git'
            // }
            }
        stage("Terraform init"){
            steps{
            sh '''terraform --version
                  terraform -chdir=example/ init -reconfigure'''
            }
        }
        stage("Terraform plan"){
             when {
                // Execute this stage only when a pull request is raised
                expression { currentBuild.changeSets[0].kind == 'REPOSITORY' }
            }
            steps{
            sh "terraform -chdir=example/ plan --auto-approve"
            }
        }
        stage("Terraform apply"){
             when {
                // Execute this stage only when a pull request is raised
                expression { currentBuild.changeSets[0].kind == 'MERGE' }
            }
            steps{
            sh "terraform -chdir=example/ apply --auto-approve"
            }
            
        }
        // stage("Terraform destroy"){
        //     steps{
        //     sh "terraform -chdir=example/ destroy --auto-approve"
        //           }
        // }
    }
}
