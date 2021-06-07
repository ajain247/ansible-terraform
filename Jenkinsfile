

 pipeline {

     agent {
         node{
             label 'master'
         }
     }
    
        parameters{
            choice(choices: ['Plan_and_Apply', 'Apply_Plan'], name: 'Type_of_execution')
            string(defaultValue: './plan', description: 'Please include the plan file relative path from the terraform-config folder. recommended file name "plan"', name: 'plan_path')
        }
    
     stages {

         stage('Checkout') {
             steps {
                 echo 'Checking out git branch'
                 checkout scm
             }
         }
         stage('terraform-plan') {
             when{
                 expression { params.Type_of_execution=="Plan_and_Apply"}
             }
             steps {
                 
                 script{
                     
                  sh'''
                     cd ${WORKSPACE}
                     #ansible-playbook terraform-play.yml --check
                     '''
                     
                 }
             }
         }

         stage('Approval') {
             when{
                 expression { params.Type_of_execution=="Plan_and_Apply"}
             }
             steps {
                 input(id: 'Approve', message: "Do you want to apply the plan")
             }
         }

         stage('terraform plan & apply'){
             when{
                 expression { params.Type_of_execution=="Plan_and_Apply"}
             }
             steps{
                 sh'''
                     cd ${WORKSPACE}
                     #ansible-playbook terraform-play.yml
                     '''
              
            }
         }
      
        stage('Execute a plan'){
            when{
                 expression { params.Type_of_execution=="Apply_Plan"}
             }
            steps{
             script{
                  env.plan_path=params.plan_path
                  echo "${env.plan_path}"
                  sh'''
                      echo "executed plan"
                  '''
             }
        
            }
       
        }
      
     }
 }
