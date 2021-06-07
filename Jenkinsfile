
 pipeline {

     agent {
         node{
             label 'master'
         }
     }

     stages {
         stage('Checkout') {
             steps {
                 echo 'Checking out git branch'
                 checkout scm
             }
         }
         stage('terraform-plan') {
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
             steps {
                 input(id: 'Approve', message: "Do you want to apply the plan")
             }
         }
         stage('terraform plan & apply'){
             steps{
                 sh'''
                     cd ${WORKSPACE}
                     #ansible-playbook terraform-play.yml
                     '''
              
             }
       
         }
      
      stage('execute a plan'){
       steps{
         sh'''
             echo "executed plan"
         ''''
        
       }
       
      }
      
     }
 }
