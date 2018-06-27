Docker container build for Jenkis integrator
Jenkis home is stored externally ( i.e. into the folder of host computer .Default: ./jenkins-home)
default port is 8080
we can change it in docker-compose.yml
use command: 

for start container:
  docker-compose up -d
for stop container:
  docker-compose down

WARNING:
Very big ./jenkins-home folder is not commited.
He is excluded in .gitignore file see this file. 





