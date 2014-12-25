@echo OFF
echo !! ATTENTION !!
echo This will run Laravel Homestead for your local sites!
echo Information: https://github.com/ReyzWB/WinHomesteadLauncher
echo.
echo.
SET /P ANSWER=Do you want to continue (Y/N)?
if /i {%ANSWER%}=={y} (goto :yes)
if /i {%ANSWER%}=={n} (goto :no)

:yes
vagrant up
vagrant ssh
vagrant halt
exit

:no
echo Operation canceled.
exit
