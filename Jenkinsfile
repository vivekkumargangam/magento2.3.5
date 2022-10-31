pipeline
{
    agent any
        stages
        {
            stage('continuous download')
            {
                steps
                {
                    git branch: 'alpine-magento2.3.5', url: 'https://github.com/vivekkumargangam/magento2.3.5.git'
                }
            }
            stage('copying the file to root directory')
            {
                steps
                {
                    sh 'sudo -S cp -r /var/lib/jenkins/workspace/_multibranch_alpine-magento2.3.5/ /root'
                }
            }
            stage('bulding the docker image')
            {
                steps
                {
                    sh 'sudo -S docker build -t jalm-2.3.5 -f Dockerfile /root/pipeline/'
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
                         sh 'sudo -S docker run --name ja1 -itd jalm-2.3.5'
                     }
                     catch(Exception e1)
                     {
                        input message: 'remove the container', submitter: 'srikanth'
                        sh 'sudo -S docker rm -f ja1'
                        sh 'sudo -S docker run --name ja1 -itd jalm-2.3.5'
                     }
                    }
                }
            }
        }
}          
