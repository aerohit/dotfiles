### SSH
With the settings following settings in ssh/config:

    Host MACHINE_NAME
    	HostName aerohit.heroku.com
    	User aerohi
    	Port 2332

Instead of,

    ssh -p SOME_PORT someuser@example.com

just do:

    ssh MACHINE_NAME

or to copy files:

    scp code MACHINE_NAME:archives/

or to clone git repository:

    git clone MACHINE_NAME:my_project.git

### Terminal shortcuts

!!		Previously executed command
!$		last argument of previous command
!:n		n-th argument of the previous command
history 	View previously executed command
!n		to run the n-th command from history
!echo		Re-run a command by name
^r		interactive search of history
^from^to	replace first occurence and re-run


Examples:
    →
    ___________________
    → sudo !!
    
    ___________________
    → touch README.txt
    → gvim !$
    
    ___________________
    → gvim README.mk 
    
    → ^README^INSTALL
    gvim INSTALL.mk 
    
    ___________________
    → mv README.{txt,mk} 

