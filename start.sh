#!/bin/sh
if [[ ! -d /srv/svn/$SVN_REPONAME  ]]; then
    svnadmin create /srv/svn/$SVN_REPONAME
    echo /srv/svn/$SVN_REPONAME was created
fi
echo starting svnserve...
svnserve -d --foreground --listen-host 0.0.0.0  --log-file /dev/stdout -r /srv/svn/$SVN_REPONAME

