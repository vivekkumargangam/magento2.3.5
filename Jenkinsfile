@Library('libraries')_
pipeline
{
    agent any
        stages
        {
             stage('continuous download')
            {
                steps
                {
                    script
                    {
                        cicd.newgit("alpine-magento2.3.5","https://github.com/vivekkumargangam/magento2.3.5.git")
                    }
                }
            }
            stage('copying the file to root directory')
            {
                steps
                {
                    script
                    {
                        cicd.copy("/var/lib/jenkins/workspace/sharedlibraries","/root")
                    }
                }
            }
            stage('bulding the docker image')
            {
                steps
                {
                    script
                    {
                        cicd.imagebuilding("jalm-2.3.5","/root/sharedlibraries/")
                    }
                }
            }
            stage('bulding the docker container')
            {
                steps
                {
                    script
                    {
                     try
                     {
                         cicd.runcontainer("ja1","jalm-2.3.5")
                     }
                     catch(Exception e1)
                     {
                        input message: 'remove the container', submitter: 'srikanth'
                        cicd.deletecontainer("ja1")
                        cicd.runcontainer("ja1","jalm-2.3.5")
                     }
                    }
                }    
            }
}            
