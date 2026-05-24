Following Tools Must Be Installed On The Ubuntu System.
1. Unzip
2. JQ
3. AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

4. AZ CLI
5. net-tools
6. tree

Env variables are mostly used by the applications to access the infromation which might be sesitive or non-sesitive.

Global Env Variable:
echo $HOME
echo $USER
echo $PWD

User Env Variable:
export AWS_ACCESS_KEY_ID=AKIA2QEFLENWELJ6LDLU
export AWS_SECRET_ACCESS_KEY=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

# Class 4:
1. Understanding special arguments such as $?, $#, $@, $*?
2. Understanding STDIN, STDOUT, STDERR?
STDIN - 0
STDOUT - 1
STDERR - 2

> - Redirect output to a file and existing data will be overwritten.
>> - Redirect output to a file and appended to existing data.
echo 'WELCOME TO DEVSECOPS B43 - ICONSTAR' | tee -a /tmp/tee1 #Append to existing data
echo 'WELCOME TO DEVSECOPS B43 - ICONSTAR' | tee  /tmp/tee1 #Overwrite existing data

# Class 5:
1. 2> 1> 2>&1
   bash 10.OutPut-Redirect.sh 1> /dev/null
   bash 10.OutPut-Redirect.sh 2> /dev/null

   #Redirect STDERR to STDOUT and Redirect both to /dev/null
   bash 10.OutPut-Redirect.sh > /dev/null 2>&1
   apt-get update >> /dev/null && apt install -y jq net-tools >> /dev/null
   docker run --rm -d --name app1 -p 8000:80 nginx:latest
   docker logs app1 > /tmp/nginx.log

2. Shell Data Operators
    Arithmetic Operators - +,-,/,*,%
    Relational Operators - > < >= <=
    Boolean Operators - True or False
    String Operators - "DEMO"
    File Test Operators - To check files and folders.
    https://tldp.org/LDP/abs/html/opprecedence.html

4. cat /etc/passwd | grep -i -w ubuntu
   cat /etc/passwd | grep -E -w 'ubuntu|ubuntu1'
   cat /tmp/event.log | grep -E -i 'error|denied'

3. CUT Command
   cat /etc/passwd | grep -i -w ubuntu | cut -d ':' -f 1

4. Basic User automation with shell scripting.

# Class 6:
1. How Regular Expressions Work?
2. Using RegEx to restrict usernames pattern?
3. Integrate with Slack.

# Class 7:
1. FIND, XARGS, DU
2. TR vs SED
3. AWK
cat /etc/passwd | grep -i ubuntu | awk -F":" '{print $2, $3, $1}'
cat /etc/passwd | grep -i ubuntu | awk -F":" '{print $1","$2}'

# Class 8:
1.Functions

# Class 9:
RealTime Scripts used.


