pipeline {
    agent {dockerfile true}
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master', url: 'https://github.com/bala547/schemasnow.git'
            }
        }

        stage('Run schemachange') {
            steps {
                sh "pip install schemachange --break-system-packages"
                sh "schemachange -f migrations -a ${SNOWFLAKE_ACCOUNT} -u ${SNOWFLAKE_USERNAME} -r ${SNOWFLAKE_ROLE} -w ${SNOWFLAKE_WAREHOUSE} -d ${SNOWFLAKE_DATABASE} -c ${SNOWFLAKE_DATABASE}.SCHEMACHANGE.CHANGE_HISTORY --create-change-history-table"
            }
        }
    }
}