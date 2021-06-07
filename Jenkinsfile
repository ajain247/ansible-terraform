
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
                     ansible-playbook terraform-play.yml --check
                     '''

                 }
             }
         }
         stage('Deploy') {
             steps {
                 echo 'Deploying....'
             }
         }
     }
 }
