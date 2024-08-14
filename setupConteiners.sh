#Subindo os conteiners
docker run -d --name myjenkins --restart always -p 8080:8080 -v /var/jenkins_home jenkins/jenkins:lts
docker run -d --name n8n --restart always -p 5678:5678 -v /var/n8n_home:/home/node/.n8n docker.n8n.io/n8nio/n8n
docker run -d --name mariadb-glpi --restart always -e MYSQL_DATABASE=glpi -e MYSQL_USER=glpi -e MYSQL_PASSWORD=glpi -e MYSQL_RANDOM_ROOT_PASSWORD=1 -p 3306:3306 fametec/glpi:mariadb
docker run -d --name glpi --link mariadb-glpi:mariadb-glpi -e GLPI_LANG=pt_BR -e MARIADB_HOST=mariadb-glpi -e MARIADB_PORT=3306 -e MARIADB_DATABASE=glpi -e MARIADB_USER=glpi -e MARIADB_PASSWORD=glpi -e VERSION="9.5.6" -e PLUGINS="all" -p 22571:80 fametec/glpi:latest
mkdir -p /srv/gitlab
chmod 777 /srv/gitlab
echo "export GITLAB_HOME=/srv/gitlab" > ~/.bashrc
docker run --detach --hostname 127.0.0.1 --env GITLAB_OMNIBUS_CONFIG="external_url 'http://127.0.0.1'" --publish 8002:443 --publish 8081:80 --publish 8083:22 --name gitlab --restart always --volume /srv/gitlab/config:/etc/gitlab --volume /srv/gitlab/logs:/var/log/gitlab --volume /srv/gitlab/data:/var/opt/gitlab --shm-size 256m gitlab/gitlab-ee:16.11.8-ee.0
#Personalizando conteiners
docker exec myjenkins cat /var/jenkins_home/secrets/initialAdminPassword > chaveJenkins.txt
chmod 777 -R /var/n8n_home/
