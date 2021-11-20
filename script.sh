ssh -i temp-copy/test3.cer -o StrictHostKeyChecking=no ec2-user@ec2-3-8-85-161.eu-west-2.compute.amazonaws.com bash <<EOF
   ls -ltr
EOF
