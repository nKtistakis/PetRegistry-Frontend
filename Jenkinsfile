pipeline {
        agent any
        stages {            
            stage("Running main playbook for ansible deployment"){
                steps {
                    sshagent (credentials: ['ssh-machinedevops'] ){ 
                        sh '''
                        ansible-playbook /var/lib/jenkins/workspace/AnsibleJob/ansible-deploy/playbooks/mainPlaybook.yaml -i /var/lib/jenkins/workspace/AnsibleJob/ansible-deploy/hosts -e targetMachine=51.120.2.16
                        '''
                    }
                }
            }
            
        }
}
//ss