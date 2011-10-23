APOD to desktop


ABOUT

Made by Harold Bakker, may 2003 as a learning exercise in perl and osascript.
Contact: harold@haroldbakker.com, http://www.haroldbakker.com/


WHAT IT DOES

These scripts will download the astronomy picture of the day and set it as the current desktop backgrond in Mac OS X.


HOW IT WORKS

It does this by downloading an htmlfile, extacting the location of the big version of the daily picture from that and downloading that. That downloaded file will then be set as the current desktop background using OSAscript, a commandline version of Applescript. After the image file has been set as the current desktop background it will be deleted.


REQUIRES

Mac OS X
perl and curl (should be installed (by developerstools?))


INSTALLING

both apod.pl and apod.osa.sh should be in your PATH, see http://www.osxfaq.com/Tutorials/LearningCenter/UnixTutorials/WorkingWithUnix/index.ws#path for more information about PATH and your personal "bin" directory

The scripts should also be executable:
type this in the Terminal:
cd ~/bin; chmod 755 apod.osa.sh apod.pl

Make a cron entry to execute this script every day at a time when you're sure your machine is on
recommended way: CRONNIX (http://www.koch-schmidt.de/cronnix/).
I entered the following:
exec "/Users/harold/bin/apod.pl" >& /dev/null
this executes the script and pipes all output to dev/null which means we won't see any messages from the script.

(Alternatively you could use the applescript application provided and run the command once in a while manually, the applescript assumes you have installed the .sh and .pl scripts in your personal bin directory.)

A NOTE ABOUT RESTARTING

After a restart your desktop picture will be reset to Apple's default. This is because the downloaded picture is removed from the tmp directory after restarting. We could change the location of the downloaded picture to somewhere in your home directory but this could mean that your disk would fill up unnoticed. Mac OS X does WEIRD things when a disk is full so by putting the pictures in a directory that gets trimmed every once in a while (either by a restart or by a system cleanup script that runs every day) we prevent all kinds of trouble. This of course means that we'll have to download the picture again after a restart. The safest and most fool-proof way is to just run a small applescript application on login. This application is provided ("run apod.pl"), just put it into your utilities folder and add it to your login items (see login.gif).
Thanks go out to Mark Brethren <mbrethen@rochester.rr.com> for the enhanced applescript which is much nicer than my own attempt.


COPYRIGHT

These files are completely free and you may modify them as needed.
Please note that the astronomy pictures of the day that will be downloaded are probably copyrighted.
Please read the section "About image permissions:" on http://antwrp.gsfc.nasa.gov/apod/lib/about_apod.html.
The imagefiles that are downloaded by these scripts will be deleted after they have been set as a desktop background, this is done to save diskspace and prevent copyright abuse.