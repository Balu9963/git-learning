#!/bin/bash/
#Author: Balu_DevOps_Team
#Date: 0-0-26
#Version: V1
#
# This is jenkinsfile for CI/CD
#
#
pipeline{
   agent any
   stages{
        stage('checkout'){
         step{
	    git 'https://github.com/balu9963/jenkinfile/org.'
    }
}

         stage('Build'){
	 step{
	 sh mvn clean,compile,test,install
    }
 }

         stage('scan'){
	 steps{
	   'sonar-Scan>>Bugs,code quality,before go CI'
     }
 }


         stage('Docker Build'){
	 step{
	 sh 'docker build -t my-app'
     }
  }


         stage('Deploy'){
	 step{
	 echo "deploying application"
     
       }
     }
   }
 }

     
