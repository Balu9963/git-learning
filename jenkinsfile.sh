#!/bin/bash/
#Authoe: balu_DevOps_Team
#Date: 0-0-26
#Version: V1
#jenkinfile for CI/CD
#
#
####################################################################################
#


pipeline {
   agentany
   stages{
       stage('checkout)'{
       step{
           git 'https://github.com/balu9963/jenkinsfile'
          }
       }


	 stage('Build'){
	 step{
	 sh 'mvn clean,compile,test,install'
         }
      }

	  stage('scan'){
	  step{
	       'sonarQube-scan'
        
       }
      }

          stage('Docker-Build'){
	  step{
	  sh 'docker build -t my-app .'

	  echo "deploy application"
	}
     }
   }
 }
}

