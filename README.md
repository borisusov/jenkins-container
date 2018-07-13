 container build for Jenkis integrator
Jenkis home is stored externally ( i.e. into the folder of host computer .Default: ./jenkins-home)
default port is 8080
we can change it in docker-compose.yml
use command: 

For start container use script

start_jenkins.sh with [start] argument

For stop container use script
start_jenkins.sh with [down] argument


Obsolete section
#for start container:
#  docker-compose up -d
#for stop container:
#  docker-compose down

WARNING:
Very big ./jenkins-home folder is not commited.
He is excluded in .gitignore file see this file. 

Preconfigured user ports:

3306 -> 3306 for DB servises
80 -> 8080 for Web-services
443 -> 443 for ssl
8888-> 8888 for chained projects
9999->9999 for chained projects
8443 -> 8443 for JavaSSL




