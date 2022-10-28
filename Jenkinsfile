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
                    sh 'sudo -S cp -r /var/lib/jenkins/workspace/pipeline/ /root'
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
                    sh 'sudo -S docker run --name ja1 -itd jalm-2.3.5'
                }
            }
        }
}          
