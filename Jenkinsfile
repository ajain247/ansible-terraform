   
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
            stage('ansible-test') {
                steps {
                    script{    
                        sh'''
                        cd ${WORKSPACE}
                        ansible-playbook terraform-play.yml -vvvv
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
}
