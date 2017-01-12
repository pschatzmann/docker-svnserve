FROM       java:alpine
MAINTAINER Phil Schatzmann <pschatzmann@gmail.com>
RUN        apk add --update subversion 
RUN		   mkdir -p /srv/svn
RUN		   mkdir -p /backup
ENV		   SVN_REPONAME main
COPY	   start.sh /usr/bin/start.sh
RUN		   chmod +x /usr/bin/start.sh
VOLUME	   /srv/svn
EXPOSE 	   3690 
WORKDIR     /srv/svn
CMD         start.sh