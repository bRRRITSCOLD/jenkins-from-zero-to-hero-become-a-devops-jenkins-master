# jenkins-from-zero-to-hero-become-a-devops-jenkins-master

1. docker cp centos7/remote-key jenkins:/tmp/remote-key
2. ssh -i /tmp/remote-key remote_user@remote_host
3. mysqldump -u root -h db -p testdb > /tmp/db.sql
4. set aws creds on remote host via env vars - export AWS_ACCESS_KEY_ID - export AWS_SECRET_ACCESS_KEY
5. aws s3 cp /tmp/db.sql s3://bucket-name/db.sql
6. docker cp copy.sh remote-host:/tmp/copy.sh
7. in remote-host "chmod -x tmp/script.sh"