# Overview
Starts a subversion server and creates the repository if it does not exist yet. You can connect to the server with "svn://<your host>".
The repository is stored in /srv/svn which therfore needs to be mapped as volume to persist the data. 

You need to update the configuration files in the <repository>/conf directory to define the user access: e.g. by setting anon-access = write in the svnserve.conf (e.g. see http://wiki.wsmoak.net/cgi-bin/wiki.pl?Subversion/Configuration)

This container is based on Alpine and is using only 154.1 MB	

# Docker Compose

    version: '2'
    services:
      svnserve:
        image: pschatzmann/svnserve
        container_name: svnserve
        ports:
            - "3690:3690"
        environment:
            - SVN_REPONAME=main
        volumes:
            - /srv/svn:/srv/svn
