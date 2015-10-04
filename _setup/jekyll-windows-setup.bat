@echo off

call gem -v /k || (cls && echo You need Ruby to install SASS + Compass. Please install now from http://rubyinstaller.org/ && pause && exit)
::cls
echo .
echo .
echo ==== Great, you have RUBY. Installing last version of Jekyll
echo .
echo .

call gem install jekyll
::cls
echo .
echo .
echo ==== Ok, Jekyll installed. Installing Windows tricks for run jekyll correctly... 
echo .
echo .
gem install wdm
gem install rouge
gem uni hitimes
gem install hitimes -v 1.2.3 --platform ruby

::cls
echo .
echo .
echo ==== Spin up Jekyll server
echo .
echo .
start runServer.bat

pause
exit