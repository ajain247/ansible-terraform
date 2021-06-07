
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
                     input(id: 'Approve', message: "Do you want to apply the plan")
                 }
             }
         }
         stage('terraform-apply') {
             steps {
                 echo 'Deploying....'
             }
         }
     }
 }
