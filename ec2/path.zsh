# Setup Amazon EC2 Command-Line Tools
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export AWS_ELB_HOME=~/.elb
export PATH=$PATH:$AWS_ELB_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
export AWS_IAM_HOME=~/.iam
export PATH=$AWS_IAM_HOME/bin:$PATH
export AWS_CREDENTIAL_FILE=~/.iam/fci-credentials
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
