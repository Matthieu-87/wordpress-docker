FROM wordpress:latest

# install wp-cli
ADD wp-cli.phar .
RUN mv wp-cli.phar /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

#install other library
RUN apt-get update && apt-get -qq -y install mariadb-client
RUN apt-get update && apt-get -qq -y install ssh
RUN apt-get update && apt-get -qq -y install sshpass
RUN apt-get update && apt-get -qq -y install rsync
RUN apt-get update && apt-get -qq -y install iputils-ping
