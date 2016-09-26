We use history command frequently in our daily routine jobs to check history of command or to get info about command executed by user. 
In this post, we will see how we can store history effectively to extract the command which was executed by users in Bash shell. 
This may be useful for audit purpose or to find out what command is executed at what date and time.

To run bash file type :
./os.sh

If permission is denied type :
chmod 777 os.sh

This will change permissions and file can be run by users,usergroup and root user.It will provide read,write,execute access to file.

Once file is run,it will prompt user to enter filename which will store history in Home folder by given name.
Once file is stored it will contain all details of command run by user.
After history is exported to specified location.It will show username,user_id and type of user.
Type of user will be root,guest or another specified.

#! OS.SH
Firstly history file will be exported to Home folder by HISTFILE variable which stores content of history in ".bash_history" file.
After that grep command "-v" will perform invert matches and "^#" will convert file into regular expression(user readable format).
And '>' will convert & save file to .txt

Then it will prompt user to enter filename for history.
After name is provided by user.It will show user_id and name of user executing shell script with specified user name.