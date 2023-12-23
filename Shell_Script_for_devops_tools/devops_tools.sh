#!/bin/bash 
echo "Author: Anil Kumar Mannem."
#Version    : 1.0
#Email      : mannemanilkumar@hotmail.com.
#License    : Open Source.
#Released on: 07/12/2023.
sudo cat /etc/os-release | grep "Ubuntu" > /dev/null 2>&1
if [ $? -eq 0 ]
then
#echo $USER | grep "root" > /dev/null 2>&1
#if [ $? -eq 0 ]
#then
#tput bold
#echo "***Please execute this script as Normal user.***"
#tput sgr0
#else
echo "Below mentioned tool/Software can be installed individually as per your choice"
tput bold
echo "1) Git               8) Tomcat"
echo "2) Java              9) Ansible"
echo "3) Maven            10) Terraform"
echo "4) Grafana          11) SonarQube"
echo "5) Docker           12) Prometheus"
echo "6) Jenkins          13) Node_Exporter"
echo "7) Jfrog            14) Kubernetes"
tput sgr0  
bold=`tput bold`
nobold=`tput sgr0`
RED='\033[0;31m'
NC='\033[0m' # No Color 
echo "For installation of Git tool you can pass the inputs like - ${bold}git / Git / GIT / 1 $nobold(As per your convenience)"   
read -p "Now you can install any devops tools/softwares by entering their name(Not case-sensitive) or serial number from the above list:" tool 
my_system_ip()
{
  host myip.opendns.com resolver1.opendns.com | grep "myip.opendns.com has" | awk '{print $4}'
}
tomcat_version()
{
tomcat_port=`sudo cat /var/lib/tomcat*/conf/server.xml | grep port= | cut -d '=' -f 2 | cut -d '"' -f 2 | head -2 | tail -1` > /dev/null 2>&1
tomcat_ip=`my_system_ip`
tomcat_user=`sudo cat /var/lib/tomcat*/conf/tomcat-users.xml | grep "manager-gui" | grep "username=" | cut -d "=" -f 2 | cut -d '"' -f 2`
tomcat_password=`sudo cat /var/lib/tomcat*/conf/tomcat-users.xml | grep "manager-gui" | grep "password=" | cut -d "=" -f 2 | cut -d '"' -f 2`
version=`curl http://$tomcat_ip:$tomcat_port/manager/html -u ${tomcat_user}:${tomcat_password} | grep "Apache Tomcat" | cut -d ">" -f 3 | cut -d "<" -f 1 | cut -d " " -f 1,2`
echo "Tomcat Server Version is: $version"
}
docker_install()
{
 sudo apt-get update 
 sudo apt-get install ca-certificates curl gnupg -y
 sudo install -m 0755 -d /etc/apt/keyrings
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
 sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
}
kubernetes()
{
  sudo apt-get update
  sudo mkdir -p /etc/apt/keyrings
  sudo apt-get install -y apt-transport-https ca-certificates curl
  curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg
  echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
  sudo apt-get update
  sudo apt-get install -y kubelet kubeadm kubectl
}
jenkins_timer_130()
{
echo "Please wait process is going on.."
for (( i=1; i<=130; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
jenkins_timer_70()
{
echo "Please wait process is going on.."
for (( i=1; i<=70; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
jenkins_timer_10()
{
echo "Please wait process is going on.."
for (( i=1; i<=10; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
tomcat_timer_5()
{
echo "Please wait process is going on.."
for (( i=1; i<=5; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
tomcat_timer_6()
{
echo "Please wait process is going on.."
for (( i=1; i<=6; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
docker_timer_30()
{
echo "Please wait process is going on.."
for (( i=1; i<=30; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
docker_timer_20()
{
echo "Please wait process is going on.."
for (( i=1; i<=20; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
grafana_timer_10()
{
echo "Please wait process is going on.."
for (( i=1; i<=10; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
sonarqube_timer_30()
{
echo "Please wait process is going on.."
for (( i=1; i<=30; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
node_exporter_timer_5()
{
echo "Please wait process is going on.."
for (( i=1; i<=5; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
node_exporter_timer_40()
{
echo "Please wait process is going on.."
for (( i=1; i<=40; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
prometheus_timer_30()
{
echo "Please wait process is going on.."
for (( i=1; i<=30; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
prometheus_timer_40()
{
echo "Please wait process is going on.."
for (( i=1; i<=40; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
jfrog_timer_54()
{
echo "Please wait process is going on.."
for (( i=1; i<=54; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
jfrog_timer_55()
{
echo "Please wait process is going on.."
for (( i=1; i<=55; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}
kubernetes_timer_10()
{
echo "Please wait process is going on.."
for (( i=1; i<=10; i++ ))
do
        echo -n "#"
        sleep 1
done
tput cud1
}

case $tool in
    "tomcat"|"Tomcat"|"TOMCAT"|"8" )
           echo "You have entered tomcat"
	         service=`sudo ls /usr/lib/systemd/system | grep tomcat*`
           cd /var/lib/tomcat*/conf > /dev/null 2>&1
           if [ $? -eq 0 ]
           then
           echo "Tomcat-Server was available in your system"
	         sudo systemctl restart $service  
	         tomcat_ip=`my_system_ip`
           tomcat_port=`sudo cat server.xml | grep port= | cut -d '=' -f 2 | cut -d '"' -f 2 | head -2 | tail -1` > /dev/null 2>&1
	         tomcat_timer_6
           sudo curl --connect-timeout 2 http://$tomcat_ip:$tomcat_port | grep tomcat > /dev/null 2>&1 
             if [ $? -eq 0 ]
             then
             tput bold
             tomcat_version
             tput sgr0
             echo "Now you can open browser ${bold}http://$tomcat_ip:$tomcat_port $nobold"
	           echo "Your Tomcat-Server username is $bold'$tomcat_user'$nobold and password is $bold'$tomcat_password'$nobold"
             echo "Tomcat is working as expected"
             else 
	           tomcat_port=`sudo cat server.xml | grep port= | cut -d '=' -f 2 | cut -d '"' -f 2 | head -2 | tail -1` > /dev/null 2>&1
             alloted_port=`sudo cat /lib/systemd/system/jenkins.service | grep "JENKINS_PORT" | cut -d "=" -f 3 | cut -d '"' -f 1` 
               if [ $tomcat_port == $alloted_port ]
               then
               echo "$tomcat_port is using by jenkins, so automatically tomcat port will assign to another available port"
               sudo sed -i 's/8080/8084/g' /var/lib/tomcat9/conf/server.xml 2>&1
               sudo systemctl restart $service
	             tomcat_timer_6
               sudo curl --connect-timeout 2 http://$tomcat_ip:$tomcat_port | grep tomcat > /dev/null 2>&1
                 if [ $? -eq 0 ] 
                 then
                 tput bold
                 tomcat_version
                 tput sgr0
                 echo "Now you can open browser ${bold}http://$tomcat_ip:$tomcat_port$nobold"
                 else
                 echo "You need to allow the port number ${bold}$tomcat_port$nobold in security groups"
                 fi
               else
               echo "You need to allow the port number ${bold}$tomcat_port$nobold in security groups"
               fi
             fi
           else
           echo "Now tomcat will be installed"
           sudo apt-get update
           sudo apt-get install default-jdk -y
           sudo apt-get install tomcat9 tomcat9-admin -y
	         cd ~
           wget https://raw.githubusercontent.com/mannem302/download/master/tomcat-users.xml
           sudo mv ~/tomcat-users.xml /var/lib/tomcat9/conf/tomcat-users.xml
           echo "Tomcat was installed sucessfully and users was configured"
           tomcat_port=`sudo cat /var/lib/tomcat*/conf/server.xml | grep port= | cut -d '=' -f 2 | cut -d '"' -f 2 | head -2 | tail -1` > /dev/null 2>&1
           tomcat_ip=`my_system_ip`
           tomcat_user=`sudo cat /var/lib/tomcat*/conf/tomcat-users.xml | grep "manager-gui" | grep "username=" | cut -d "=" -f 2 | cut -d '"' -f 2`
           tomcat_password=`sudo cat /var/lib/tomcat*/conf/tomcat-users.xml | grep "manager-gui" | grep "password=" | cut -d "=" -f 2 | cut -d '"' -f 2`
           sudo curl --connect-timeout 2 http://$tomcat_ip:$tomcat_port | grep tomcat > /dev/null 2>&1
             if [ $? -eq 0 ]
             then
             echo "Now you can open browser using the URL ${bold}http://$tomcat_ip:$tomcat_port${nobold}"
             echo "Your Tomcat-Server username is $bold'$tomcat_user'$nobold and password is $bold'$tomcat_password'$nobold"
             else
             sudo curl --connect-timeout 2 http://$tomcat_ip:$tomcat_port | grep tomcat > /dev/null 2>&1
             if [ $? -ne 0 ]
             then
             #echo "You need to allow the port number ${bold}$tomcat_port$nobold in security groups"
             alloted_port=`sudo cat /lib/systemd/system/jenkins.service | grep "JENKINS_PORT" | cut -d "=" -f 3 | cut -d '"' -f 1`
               if [ $tomcat_port == $alloted_port ]
               then
               echo " $tomcat_port is using by jenkins, so automatically tomcat port will assign to another available port"
               sudo sed -i 's/8080/8084/g' /var/lib/tomcat*/conf/server.xml 2>&1
               sudo systemctl restart tomcat9.service 
	             tomcat_timer_6
	             tomcat_port=`expr $alloted_port + 4`
	             echo "$tomcat_port is now allocated to tomcat" 
               sudo curl --connect-timeout 4 http://$tomcat_ip:$tomcat_port | grep tomcat > /dev/null 2>&1
                 if [ $? -eq 0 ] 
                 then
                 tput bold
                 tomcat_version
                 tput sgr0
                 echo "Now you can open browser ${bold}http://$tomcat_ip:$tomcat_port$nobold"
		             echo "Your Tomcat-Server username is $bold'$tomcat_user'$nobold and password is $bold'$tomcat_password'$nobold"
                 else
                 echo "You need to allow the port number ${bold}$tomcat_port$nobold in security groups"
                 fi
               else
               echo "You need to allow the port number ${bold}$tomcat_port$nobold in security groups"
               fi
               fi
            fi
           fi
           ;;
    "maven"|"Maven"|"MAVEN"|"3")
                echo "You have entered maven "
                mvn --version > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                echo "Maven is available in your server and it's Version is:"
                tput bold
                mvn --version
                tput sgr0
                else
                echo "Now maven will be installed"
                sudo apt-get update
                sudo apt-get install maven -y
                echo "Maven was installed sucessfully and it's Version is:"
                tput bold
                mvn --version
                tput sgr0
                fi
                ;;
    "git"|"Git"|"GIT"|"1")
                echo "You have entered git" 
                git --version > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                echo "Git is available in your server and it's Version is:"
                tput bold
                git --version
                tput sgr0
                else
                echo "Now git will be installed"
                sudo apt-get update
                sudo apt-get install git -y
                echo "Git was installed sucessfully and it's Version is:"
                tput bold
                git --version
                tput sgr0
                fi
                ;;
    "java"|"Java"|"JAVA"|"2")
                echo "You have entered java " 
                java --version > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                echo "Java is available in your server and it's Version is:"
                tput bold
                java --version
                tput sgr0
                else
                echo "Now java will be installed"
                sudo apt-get update
                sudo apt-get install openjdk-17-jdk -y		
                echo "Java was installed sucessfully and it's Version is:"
                tput bold
                java --version
                tput sgr0
                fi
                ;;
    "jenkins"|"Jenkins"|"JENKINS"|"6")
                echo "You have entered jenkins " 
                jenkins --version > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                echo "Jenkins is available in your server and it's Version is:"
                tput bold
                jenkins --version
                tput sgr0
                jenkins_ip=`my_system_ip`
                jenkins_port=`sudo cat /lib/systemd/system/jenkins.service | grep "JENKINS_PORT" | cut -d "=" -f 3 | cut -d '"' -f 1`
                service=`sudo ls /usr/lib/systemd/system | grep jenkins`
                sudo systemctl restart $service
                jenkins_timer_70
                sudo curl --connect-timeout 2 http://$jenkins_ip:$jenkins_port  > /dev/null 2>&1
                  if [ $? -eq 0 ]
                  then
                  echo "Open your browser and Enter http://$jenkins_ip and port number is $jenkins_port"
                  echo "You have to execute like this in your browser ${bold}http://$jenkins_ip:$jenkins_port$nobold "
                  echo "Jenkins server is working as expected "
                  else
                  alloted_port=`sudo cat /var/lib/tomcat*/conf/server.xml | grep port= | cut -d '=' -f 2 | cut -d '"' -f 2 | head -2 | tail -1` > /dev/null 2>&1
                  jenkins_port=`sudo cat /lib/systemd/system/jenkins.service | grep "JENKINS_PORT" | cut -d "=" -f 3 | cut -d '"' -f 1` 
                    if [ $jenkins_port == $alloted_port ]
                    then
                    echo "$jenkins_port is using by tomcat, so automatically jenkins port will assign to another available port"
                    sudo sed -i 's/8080/8084/g' /lib/systemd/system/jenkins.service 2>&1
                    sudo systemctl daemon-reload
                    service=`sudo ls /usr/lib/systemd/system | grep jenkins`
                    echo "Now $service is restarting please wait.."
                    sudo systemctl restart $service
	                  jenkins_timer_130
                    jenkins_port=`sudo cat /lib/systemd/system/jenkins.service | grep "JENKINS_PORT" | cut -d "=" -f 3 | cut -d '"' -f 1`
                    sudo curl --connect-timeout 2 http://$jenkins_ip:$jenkins_port | grep jenkins > /dev/null 2>&1
                      if [ $? -eq 0 ] 
                      then
                      echo "Open your browser and Enter $jenkins_ip and port number is $jenkins_port"
                      echo "You have to execute like this in your browser ${bold}http://$jenkins_ip:$jenkins_port$nobold "
                      echo "Jenkins server is working as expected "
                      else
                      echo "You need to allow the port number ${bold}$jenkins_port$nobold in security groups"
                      fi
                    else
                    echo "You need to allow the port number ${bold}$jenkins_port$nobold in security groups"
                    fi
                  fi
                else
                echo "Now jenkins will be installed"
                sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
                echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
                sudo apt-get update
                sudo apt-get install openjdk-17-jdk -y
                sudo apt-get install jenkins -y
                echo "Jenkins was installed sucessfully and it's Version is:"
                tput bold
                jenkins --version
                tput sgr0
                jenkins_ip=`my_system_ip`
                jenkins_port=`sudo cat /lib/systemd/system/jenkins.service | grep "JENKINS_PORT" | cut -d "=" -f 3 | cut -d '"' -f 1` > /dev/null 2>&1
                alloted_port=`sudo cat /var/lib/tomcat*/conf/server.xml | grep port= | cut -d '=' -f 2 | cut -d '"' -f 2 | head -2 | tail -1` > /dev/null 2>&1
                jenkins_timer_10
                sudo curl --connect-timeout 2 http://$jenkins_ip:$jenkins_port | grep Authentication > /dev/null
                 if [ $? -ne 0 ] && [ $alloted_port == $jenkins_port ]
                 then
                 echo "$jenkins_port to be allowed in security groups or it is using by other services and now $jenkins_port will be changed"
                 sudo sed -i 's/8080/8084/g' /lib/systemd/system/jenkins.service 2>&1
                 sudo systemctl daemon-reload
                 service=`sudo ls /usr/lib/systemd/system | grep jenkins`
                 sudo systemctl restart $service
                 jenkins_port1=`expr $alloted_port + 4`
                 jenkins_port=`sudo cat /lib/systemd/system/jenkins.service | grep "JENKINS_PORT" | cut -d "=" -f 3 | cut -d '"' -f 1` > /dev/null 2>&1
                 jenkins_timer_130
                 sudo curl --connect-timeout 4 http://$jenkins_ip:$jenkins_port | grep Authentication > /dev/null 2>&1
                  if [ $? -eq 0 ]
                  then
                  echo "Open your browser and Enter $jenkins_ip and port number is $jenkins_port"
                  echo "You have to execute like this in your browser ${bold}http://$jenkins_ip:$jenkins_port$nobold "
                  echo "---------------------------------"
                  tput bold
                  sudo cat /var/lib/jenkins/secrets/initialAdminPassword
                  tput sgr0
                  echo "---------------------------------"
                  echo "Copy the above line and paste it in the 'Administrator password' field"
                  else
                  echo "You need to allow the port number ${bold}$jenkins_port$nobold in security groups"
                  fi
                 else
                 sudo curl --connect-timeout 4 http://$jenkins_ip:$jenkins_port | grep Authentication > /dev/null 2>&1
                 if [ $? -eq 0 ]
                 then
                 echo "Open your browser and Enter http://$jenkins_ip and port number is $jenkins_port"
                 echo "You have to execute like this in your browser ${bold}http://$jenkins_ip:$jenkins_port $nobold "
                 echo "---------------------------------"
                 tput bold
                 sudo cat /var/lib/jenkins/secrets/initialAdminPassword
                 tput sgr0
                 echo "---------------------------------"
                 echo "Copy the above displayed password and paste it in the 'Administrator password' field in your browser"
                 else
                 echo "You need to allow the port number ${bold}$jenkins_port$nobold in security groups"
                 fi
                 fi
                fi
                ;;
 "docker"|"Docker"|"DOCKER"|"5")
  echo "You have entered docker"
 docker --version > /dev/null 2>&1
 if [ $? -eq 0 ]
 then
 docker --version | grep "ubuntu" > /dev/null 2>&1
 if [ $? -eq 0 ]
 then
 echo "In your system Un-official Docker version was available and it's Version is"
 tput bold
 docker --version
 tput sgr0
 sleep 2
 echo "If you proceed further this un-official Docker version will be un-installed"
 echo "But earlier built/pulled images, running/stopped containers will not be deleted"
 sleep 2
 echo "Now you have only 30 Sec's of time to decide.To move to further process or not"
 echo "To cancel Docker installation press $bold ctrl+c $nobold or wait for official Docker version installation" 
 docker_timer_30
 echo "Un-official Docker version is being un-installed and official version will be installed in the next following steps"
 for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg -y && sudo apt autoremove -y; done
 docker_install
  docker_timer_20
  sudo systemctl restart docker.socket docker.service
  echo "Docker was installed sucessfully and it's Version is:"
  tput bold
  docker --version
  tput sgr0
  sudo cat /etc/group | grep "docker" | grep "$USER" > /dev/null 2>&1
  if [ $? -eq 0 ]
  then
  echo "$USER is in docker group" > /dev/null 2>&1
  else
  echo $USER | grep "root" > /dev/null 2>&1
    if [ $? -eq 0 ]
    then
    echo "You can use docker commands normally"
    else
    sudo usermod -aG docker $USER
    echo "$USER is added to docker group and now you neednot to enter 'sudo' everytime for executing docker commands"
    echo "Now your instance is being restarted for applying the user changes"
    tput smso
    echo " For using docker normally, Please wait for 2 Min's and reload the page "
    tput rmso
    sudo reboot
    fi
  fi
  else
  echo "Docker is available in your server and it's Version is:"
  tput bold
  docker --version
  tput sgr0
  sudo cat /etc/group | grep "docker" | grep "$USER" > /dev/null 2>&1
  if [ $? -eq 0 ]
  then
  echo "$USER is in docker group" > /dev/null 2>&1
  else
  echo $USER | grep "root" > /dev/null 2>&1
    if [ $? -eq 0 ]
    then
    echo "You can use docker commands normally"
    else
    sudo usermod -aG docker $USER
    echo "$USER is added to docker group and now you neednot to enter 'sudo' everytime for executing docker commands"
    echo "Now your instance is being restarted for applying the user changes"
    tput smso
    echo "For using docker normally, Please wait for 2 Min's and reload the page "
    tput rmso
    sudo reboot
    fi
  fi
  fi
  else
  echo "Now docker will be installed"
  docker_install
  echo "Docker was installed sucessfully and it's Version is:"
  tput bold
  docker --version
  tput sgr0
  echo $USER | grep "root" > /dev/null 2>&1
    if [ $? -eq 0 ]
    then
    echo "You can use docker commands normally"
    else
    sudo usermod -aG docker $USER
    echo "$USER is added to docker group and now you needn't to enter 'sudo' everytime for executing docker commands"
    echo "Now your instance is being restarted for applying the user changes"
    tput smso
    echo " For using docker normally, Please wait for 2 Min's and reload the page "
    tput rmso
    sudo reboot
    fi
  fi
   ;;
        "grafana"|"Grafana"|"GRAFANA"|"4")
                echo "You have entered grafana "
                grafana_ip=`my_system_ip`
                cat /usr/share/grafana/VERSION > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                echo "Grafana is available in your server and it's Version is:"
                cat /usr/share/grafana/VERSION
                echo
                echo "Grafana URL generation under progress"
                 if [ $? -eq 0 ]
                 then
                 grafana_port=`sudo cat /etc/grafana/grafana.ini | grep "http_port" | cut -d "=" -f 2 | head -n 1 | cut -d " " -f 2` > /dev/null 2>&1
                 sudo systemctl restart grafana-server > /dev/null
                 grafana_timer_10
                 curl --connect-timeout 4 http://$grafana_ip:$grafana_port > /dev/null
                  if [ $? -eq 0 ]
                  then
                  echo "Now open your browser and enter the URL: $bold http://$grafana_ip:$grafana_port $nobold"
                  else
                  echo "You need to allow the port number $bold $grafana_port$nobold in security groups"
                  fi
                 fi
                else
                echo "Now grafana will be installed"
                sudo apt-get update
                sudo apt-get install libfontconfig1 -y
                wget https://dl.grafana.com/enterprise/release/grafana-enterprise_10.0.3_amd64.deb
                sudo dpkg -i grafana-enterprise_10.0.3_amd64.deb
                sudo systemctl daemon-reload
                sleep 2
                sudo systemctl enable grafana-server 
                sudo systemctl start grafana-server
                grafana_timer_10
                grafana_port=`sudo cat /etc/grafana/grafana.ini | grep "http_port" | cut -d "=" -f 2 | head -n 1 | cut -d " " -f 2`
                echo "Grafana was installed sucessfully and it's Version is:"
                tput bold
                cat /usr/share/grafana/VERSION
                tput sgr0
                echo
                curl --connect-timeout 5 http://$grafana_ip:$grafana_port > /dev/null
                 if [ $? -eq 0 ]
                 then
                 echo "Now open your browser and enter the URL:$bold http://$grafana_ip:$grafana_port $nobold"
                 echo "Default Username-$bold admin$nobold and Default Password-$bold admin$nobold"
                 else
                 echo "You need to allow the port number$bold $grafana_port$nobold in security groups"
                 fi
                fi
                ;;
      "ansible"|"Ansible"|"ANSIBLE"|"9")
                echo "You have entered Ansible "
                ansible --version > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                echo "Ansible is available in your server and it's Version is:"
                ansible --version
                else
                echo "Now ansible will be installed"
                sudo apt-get update
                sudo apt install software-properties-common -y
                sudo add-apt-repository --yes --update ppa:ansible/ansible
                sudo apt install ansible -y
                echo "Ansible was installed sucessfully and it's Version is:"
                ansible --version
                fi
                ;;
      "terraform"|"Terraform"|"TERRAFORM"|"10")
                echo "You have entered terraform "
                terraform -version > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                echo "Terraform is available in your server and it's Version is:"
                tput bold
                terraform -version
                tput sgr0
                else
                echo "Now terraform will be installed"
                sudo apt-get update
                wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
                echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
                sudo apt update
                sudo apt install terraform -y
                echo "Terraform was installed sucessfully and it's Version is:"
                tput bold
                terraform -version
                tput sgr0
                fi
                ;;
      "sonarqube"|"Sonarqube"|"SONARQUBE"|"11")
                echo "You have entered sonarqube"
                sonarqube_ip=`my_system_ip`
                sudo systemctl status sonar.service > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                echo "Sonarqube is available in your server"
                sudo systemctl restart sonar.service > /dev/null 2>&1
                sonarqube_timer_30
                sonar_properties=`sudo find / -name "sonar.properties"`
                sonarqube_port=`sudo cat $sonar_properties | grep "sonar.web.port" | cut -d "=" -f2`              
                sudo curl --connect-timeout 4 http://$sonarqube_ip:$sonarqube_port  > /dev/null 2>&1
                 if [ $? -eq 0 ]
                 then
                 echo "Now open your browser and enter $bold http://$sonarqube_ip:$sonarqube_port$nobold"
                 else
                 echo "You need to allow the port number$bold $sonarqube_port$nobold in security groups"
                 fi
                else
                 ram_exist=`free -m | grep "Mem" | awk '{print $2}'`
                 ram_required=3800
                 if [ $ram_exist -gt $ram_required ]
                 then
                 echo "Now sonarqube will be installed"
                 sudo apt-get update
                 sudo apt-get install openjdk-17-jdk -y
                 cd /opt
                 sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.0.65466.zip
                 sudo apt-get install unzip -y > /dev/null 2>&1
                 sudo unzip sonarqube-9.9.0.65466.zip 
                 sudo mv /opt/sonarqube-9.9.0.65466 /opt/sonarqube
                 sudo groupadd sonar
                 sudo useradd -c "user to run SonarQube" -d /opt/sonarqube -g sonar sonar
                 sudo chown -R sonar:sonar /opt/sonarqube
                 echo "RUN_AS_USER=sonar" | sudo tee -a /opt/sonarqube/bin/linux-x86-64/sonar.sh > /dev/null 2>&1
                 echo "sonar ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers > /dev/null 2>&1
                 echo -e " [Unit] \n Description=SonarQube service\n After=syslog.target network.target\n \
After=syslog.target network.target\n [Service]\n Type=forking\n ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start\n \
ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop\n User=sonar\n Group=sonar\n Restart=always\n \
LimitNOFILE=65536\n LimitNPROC=4096\n [Install]\n WantedBy=multi-user.target\n" | sudo tee -a /etc/systemd/system/sonar.service > /dev/null 2>&1
                 sudo systemctl start sonar > /dev/null 2>&1
                 sudo systemctl status sonar > /dev/null 2>&1
                 sudo systemctl enable sonar > /dev/null 2>&1
                 sonarqube_port=`sudo cat /opt/sonarqube/conf/sonar.properties | grep "sonar.web.port" | cut -d "=" -f2`
                 sonarqube_timer_30
                 curl --connect-timeout 4 http://$sonarqube_ip:$sonarqube_port > /dev/null 2>&1
                  if [ $? -eq 0 ]
                  then
                  echo "Sonarqube was installed sucessfully and you can browse using following URL"
                  echo "${bold}http://$sonarqube_ip:$sonarqube_port$nobold" 
                  echo "Default Username-${bold}admin$nobold and Password-${bold}admin${nobold}"
                  else
                  echo "You need to allow the port number$bold $sonarqube_port$nobold in security groups"
                  fi
                 else
                 echo "${bold}It requires minimum 4GB server, please launch t2.meduim in AWS or equivalent in Azure$nobold"
                 fi
                fi
                ;;
      "node_exporter"|"Node_exporter"|"NODE_EXPORTER"|"13")
                echo "You have entered node_exporter "
                node_exporter_ip=`my_system_ip`
                systemctl status node_exporter > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                echo "Node_exporter is available in your server"
                sudo systemctl restart node_exporter.service > /dev/null 2>&1
                node_exporter_timer_5
                node_exporter_port=`journalctl -eu node_exporter | grep "Listening on" | head -n 1 |cut -d ":" -f10`
                node_exporter_timer_40
                sudo curl --connect-timeout 4 http://$node_exporter_ip:$node_exporter_port  > /dev/null 2>&1
                 if [ $? -eq 0 ]
                 then
                 node_version=`curl http://$node_exporter_ip:$node_exporter_port | grep "version=" | cut -d "=" -f2 | cut -d "," -f 1`
                 echo "Node_exporter version:- $bold$node_version$nobold"
                 echo "Now open your browser and enter $bold http://$node_exporter_ip:$node_exporter_port$nobold"
                 else
                 echo "You need to allow the port number$bold $node_exporter_port$nobold in security groups"
                 fi
                else
                echo "Now node_exporter will be installed"
                sudo apt-get update
                cd /tmp
                curl -s https://api.github.com/repos/prometheus/node_exporter/releases/latest | grep browser_download_url | grep linux-amd64 | cut -d '"' -f 4 | wget -qi -
                tar -xvzf node_exporter-*.*.*.linux-amd64.tar.gz
                sudo mv node_exporter-*.linux-amd64 /opt/node_exporter
                echo -e "[Unit]\n Description=Prometheus Node Exporter\n Documentation=https://github.com/prometheus/node_exporter\n\
After=network-online.target\n [Service]\n User=root\n EnvironmentFile=/etc/default/node_exporter\n \
ExecStart=/opt/node_exporter/node_exporter $OPTIONS \n Restart=on-failure\n RestartSec=5\n [Install]\n \
WantedBy=multi-user.target\n " | sudo tee -a /etc/systemd/system/node_exporter.service > /dev/null 2>&1
                sudo systemctl daemon-reload > /dev/null 2>&1
                node_exporter_timer_5
                echo "OPTIONS=''" | sudo tee -a /etc/default/node_exporter  > /dev/null 2>&1
                sudo systemctl enable node_exporter 
                sudo systemctl start node_exporter > /dev/null 2>&1
                node_exporter_timer_40
                node_exporter_port=`journalctl -eu node_exporter | grep "Listening on" | head -n 1 |cut -d ":" -f10`
                sudo curl --connect-timeout 4 http://$node_exporter_ip:$node_exporter_port  > /dev/null 2>&1
                 if [ $? -eq 0 ]
                 then
                 node_version=`curl http://$node_exporter_ip:$node_exporter_port | grep "version=" | cut -d "=" -f2 | cut -d "," -f 1`
                 echo "Node_exporter version:-$bold$node_version$nobold"
                 echo "Node_exporter was installed sucessfully and you can browse using following URL"
                 echo "${bold}http://$node_exporter_ip:$node_exporter_port$nobold"
                 else
                 echo "You need to allow the port number$bold $node_exporter_port$nobold in security groups"
                 fi               
                fi
                ;;
     "prometheus"|"Prometheus"|"PROMETHEUS"|"12")
                echo "You have entered Prometheus "
                prometheus_ip=`my_system_ip`
                prometheus --version > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                version=`prometheus --version | grep "version" | head -1 | cut -d " " -f 3` > /dev/null 2>&1
                echo "Prometheus is available in your server and it's Version is:"
                echo "Prometheus- $version"
                sudo systemctl restart prometheus.service > /dev/null 2>&1
                prometheus_timer_30
                prometheus_port=`journalctl -eu prometheus | grep "Listening on" | head -n 1 |cut -d ":" -f10`
                sudo curl --connect-timeout 4 http://$prometheus_ip:$prometheus_port  > /dev/null 2>&1
                 if [ $? -eq 0 ]
                 then
                 echo "Prometheus was installed sucessfully and you can browse using following URL"
                 echo "${bold}http://$prometheus_ip:$prometheus_port$nobold"
                 else
                 echo "You need to allow the port number$bold $prometheus_port$nobold in security groups"
                 fi               
                else
                echo "Now Prometheus will be installed"
                sudo apt-get update
                sudo groupadd --system prometheus
                sudo useradd -s /sbin/nologin --system -g prometheus prometheus
                sudo mkdir /var/lib/prometheus
                for i in rules rules.d files_sd; do sudo mkdir -p /etc/prometheus/${i}; done
                cd /tmp
                curl -s https://api.github.com/repos/prometheus/prometheus/releases/latest | grep browser_download_url | grep linux-amd64 | cut -d '"' -f 4 | wget -qi -
                tar xvfz prometheus-*.*.*.linux-amd64.tar.gz
                cd prometheus*/
                sudo mv prometheus promtool /usr/local/bin/
                sudo mv prometheus.yml /etc/prometheus/prometheus.yml
                sudo mv consoles/ console_libraries/ /etc/prometheus/
                cd $HOME
                wget https://raw.githubusercontent.com/mannem302/download/main/prometheus.service
                sudo mv prometheus.service /etc/systemd/system/prometheus.service > /dev/null 2>&1
                for i in rules rules.d files_sd; do sudo chown -R prometheus:prometheus /etc/prometheus/${i}; done
                for i in rules rules.d files_sd; do sudo chmod -R 775 /etc/prometheus/${i}; done
                sudo chown -R prometheus:prometheus /var/lib/prometheus/
                sudo systemctl daemon-reload
                sleep 4
                sudo systemctl start prometheus.service > /dev/null 2>&1
                sudo systemctl enable prometheus.service
                version=`prometheus --version | grep "version" | head -1 | cut -d " " -f 3` > /dev/null 2>&1
                echo "Prometheus was installed sucessfully and it's Version is:"
                echo "Prometheus- ${bold}$version$nobold"
                prometheus_port=`journalctl -eu prometheus | grep "Listening on" | head -n 1 |cut -d ":" -f10`
                prometheus_timer_40
                sudo curl --connect-timeout 4 http://$prometheus_ip:$prometheus_port  > /dev/null 2>&1
                 if [ $? -eq 0 ]
                 then
                 echo "Prometheus was installed sucessfully and you can browse using following URL"
                 echo "$bold http://$prometheus_ip:$prometheus_port$nobold"
                 else
                 echo "You need to allow the port number$bold $prometheus_port$nobold in security groups"
                 fi               
                fi
                ;;
      "jfrog"|"Jfrog"|"JFROG"|"7")
                echo "You have entered Jfrog"
                jfrog_ip=`my_system_ip`
                sudo systemctl status artifactory.service > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                echo "Jfrog is available in your server"
                sudo systemctl restart artifactory.service > /dev/null 2>&1
                jfrog_timer_55
                jfrog_port=8081              
                sudo curl --connect-timeout 4 http://$jfrog_ip:$jfrog_port  > /dev/null 2>&1
                 if [ $? -eq 0 ]
                 then
                 echo "Now open your browser and enter $bold http://$jfrog_ip:$jfrog_port$nobold"
                 else
                 echo "You need to allow the port number$bold $jfrog_port & 8082$nobold in security groups"
                 fi
                else
                ram_exist=`free -m | grep "Mem" | awk '{print $2}'`
                 ram_required=3800
                 if [ $ram_exist -gt $ram_required ]
                 then
                 echo "Now Jfrog will be installed"
                 sudo apt-get update
                 cd /opt
                 sudo wget https://releases.jfrog.io/artifactory/bintray-artifactory/org/artifactory/oss/jfrog-artifactory-oss/7.71.5/jfrog-artifactory-oss-7.71.5-linux.tar.gz
                 sudo sudo tar -xvzf jfrog-artifactory-oss*
                 sudo mv /opt/artifactory-oss-* /opt/artifactory
                 sudo rm -rf jfrog-artifactory-oss*
                 sudo groupadd jfrog
                 sudo useradd -c "user to run Jfrog" -d /opt/artifactory -g jfrog jfrog
                 sudo chown -R jfrog:jfrog /opt/artifactory                  
                 echo "jfrog ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers > /dev/null 2>&1
                 echo -e " [Unit] \n Description=Artifactory service\n After=syslog.target network.target\n \
After=syslog.target network.target\n [Service]\n Type=forking\n ExecStart=/opt/artifactory/app/bin/artifactory.sh start\n \
ExecStop=/opt/artifactory/app/bin/artifactory.sh stop\n User=jfrog\n Group=jfrog\n Restart=always\n \
[Install]\n WantedBy=multi-user.target\n" | sudo tee /etc/systemd/system/artifactory.service > /dev/null 2>&1
                 sudo systemctl start artifactory.service > /dev/null 2>&1
                 sudo systemctl status artifactory.service > /dev/null 2>&1
                 sudo systemctl enable artifactory.service > /dev/null 2>&1
                 jfrog_port=`sudo cat /opt/artifactory/app/artifactory/tomcat/conf/server.xml | grep "Connector" | cut -d "=" -f 2 | cut -d '"' -f 2| head -1`
                 jfrog_timer_55
                 curl --connect-timeout 4 http://$jfrog_ip:$jfrog_port > /dev/null 2>&1
                  if [ $? -eq 0 ]
                  then
                  echo "Jfrog was installed sucessfully and you can browse using following URL"
                  echo "${bold}http://$jfrog_ip:$jfrog_port$nobold" 
                  echo "Default Username-${bold}admin$nobold and Password-${bold}password${nobold}"
                  else
                  echo "You need to allow the port number$bold $jfrog_port & 8082$nobold in security groups"
                  fi
                 else
                 echo "${bold}It requires minimum 4GB server, please launch t2.meduim in AWS or equivalent in Azure$nobold"
                 fi
                fi
                ;;
          "kubernetes"|"Kubernetes"|"KUBERNETES"|"14")
                echo "You have entered kubernetes"
                kubectl version > /dev/null 2>&1
                if [ $? -eq 0 ]
                then
                echo "Kubernetes is available in your server and it's Version is:"
                version=`kubectl version | head -1`
                echo "${bold}$version$nobold"
                else
                ubuntu_version=`sudo cat /etc/os-release | grep 'PRETTY_NAME="Ubuntu' | awk {'print $2'}`
                supported_version=20.04.6
                  if [ $ubuntu_version == $supported_version ]
                  then
                  echo $USER | grep "root" > /dev/null 2>&1
                    if [ $? -ne 0 ]
                    then
                    echo "${bold}***To proceed the kubernetes cluster setup you have to switch to root user.***$nobold"
                    else
                    echo "${bold}Based on your selection kubernetes master or worker node will be configured$nobold "
                    echo "Please enter the option${bold} master$nobold or ${bold}worker${nobold}"
                    read -p "You are setting up ${bold}Kubernetes$nobold - " decision
                     if [ $decision == master ] || [ $decision == Master ] || [ $decision == MASTER ]
                     then
                     ram_exist=`free -m | grep "Mem" | awk '{print $2}'`
                     ram_required=3800
                       if [ $ram_exist -gt $ram_required ]
                       then
                       docker --version > /dev/null 2>&1
                         if [ $? -eq 0 ]
                         then
                         sed -i 's/cri//g' /etc/containerd/config.toml
                         systemctl restart containerd
                         echo "Now kubernetes master will be configured"
                         kubernetes
                         kubeadm init | tail -2 | tee join_token
                         sleep 2
                         export KUBECONFIG=/etc/kubernetes/admin.conf
                         sleep 2
                         kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
                         sleep 1
                         #echo "Please copy the token and paste in worker node to configure cluster setup"
                         echo "Kubernetes was installed sucessfully and it's Version is:"
                         version=`kubectl version | head -1`
                         echo "$version"
                         export KUBECONFIG=/etc/kubernetes/admin.conf
                         touch as_root_user
                         echo "export KUBECONFIG=/etc/kubernetes/admin.conf" >as_root_user
                         sudo wget https://raw.githubusercontent.com/mannem302/download/main/as_normal_user
                         kubernetes_timer_10
                         echo "Kubernetes master status getting ready, please wait ..."
                         kubectl get nodes
                         echo "Kubernetes master node is ready and now you can add worker nodes by using generated token"
                         echo "If you want to check the node status, please execute the below command"
                         echo "export KUBECONFIG=/etc/kubernetes/admin.conf"
                         else
                         echo "Now container runtime will be installed"
                         docker_install
                         sed -i 's/cri//g' /etc/containerd/config.toml
                         systemctl restart containerd
                         echo "Now kubernetes master will be configured"
                         kubernetes
                         kubeadm init | tail -2 | tee join_token
                         sleep 2
                         export KUBECONFIG=/etc/kubernetes/admin.conf
                         kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
                         sleep 1
                         echo "Please copy the token and paste in worker node to configure cluster setup"
                         echo "Kubernetes was installed sucessfully and it's Version is:"
                         version=`kubectl version | head -1`
                         echo "$version"
                         export KUBECONFIG=/etc/kubernetes/admin.conf
                         touch as_root_user
                         echo "export KUBECONFIG=/etc/kubernetes/admin.conf" >as_root_user
                         sudo wget https://raw.githubusercontent.com/mannem302/download/main/as_normal_user
                         kubernetes_timer_10
                         echo "Kubernetes master status getting ready, please wait ..."
                         kubectl get nodes
                         echo "Kubernetes master node is ready and now you can add worker nodes by using generated token"
                         echo "Generated token and to be executed commands was saved in $HOME directory"
                         echo "If you want to check node status, please execute the below command"
                         echo "${bold}export KUBECONFIG=/etc/kubernetes/admin.conf$nobold"
                         fi
                       else
                       cat /proc/version | grep "aws" > /dev/null 2>&1
                        if [ $? -eq 0 ]
                        then
                        echo "${bold}Please launch t2.medium instance$nobold"
                        else
                        echo "${bold}Please launch standard_B2s virtual machine$nobold"
                        fi
                        fi            
                      else
                      echo "Now kubernetes worker setup going on"
                      docker --version > /dev/null 2>&1
                        if [ $? -eq 0 ]
                        then
                        sed -i 's/cri//g' /etc/containerd/config.toml
                        systemctl restart containerd 
                        kubernetes
                        else
                        echo "Now container runtime will be installed"
                        docker_install
                        sed -i 's/cri//g' /etc/containerd/config.toml
                        systemctl restart containerd
                        echo "Now kubernetes worker node will be configured"
                        kubernetes
                        fi
                      fi
                      fi
                  else
                  cat /proc/version | grep "aws" > /dev/null 2>&1
                    if [ $? -eq 0 ]
                    then
                    echo "${bold}*** Please launch your instance using ubuntu 20.04 version AMI ***$nobold"
                    else
                    echo "${bold}*** Please launch your virtual machine using ubuntu 20.04 version Image ***$nobold"
                    fi
                  fi
                fi
                ;;
                *)
                echo "Invalid Name, Please enter the valid name or serial number as shown below"
                echo "git/Git/GIT/1 | java/Java/JAVA/2 | maven/Maven/MAVEN/3 | grafana/Grafana/GRAFANA/4 " 
                echo "docker/Docker/DOCKER/5 | jenkins/Jenkins/JENKINS/6 | jfrog/Jfrog/JFROG/7 | tomcat/Tomcat/TOMCAT/8"  
                echo "ansible/Ansible/ANSIBLE/9 | terraform/Terraform/TERRAFORM/10 | sonarqube/Sonarqube/SONARQUBE/11" 
                echo "prometheus/Prometheus/PROMETHEUS/12 | node_exporter/Node_Exporter/NODE_EXPORTER/13  "
                echo "kubernetes/Kubernetes/KUBERNETES/14"
                ;;
esac
else
tput bold
echo "Please execute this script in Ubuntu server, as script supports only apt package"
tput sgr0
fi