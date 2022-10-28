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
        }
}          
