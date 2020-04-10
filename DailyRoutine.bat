::Daily Routine
::Open apps needed to check for daily tasks
::Author = SLJ 10/04/20

:start
::Configure Setup
@echo off

echo "what kind of day is it?" 
echo "1:normal productive"
echo "2:wrong side of the bed"
echo "3:need to focus"
Choice /c 123 /m "Type 1, 2 or 3"

If %ErrorLevel%==1 GoTo normal
If %ErrorLevel%==2 GoTo stressed
If %ErrorLevel%==3 GoTo focus
echo %ErrorLevel% is not a valid option. Please Try Again.
goto start
Exit/B
[:normal | :stressed | :focus]


::normal day
:normal

	::calendar
	echo "calendar"
	start Outlook /select outlook:calendar
	TIMEOUT /T 10
	
	::emails
	echo "emails"
	start firefox https://mail.protonmail.com/inbox
	TIMEOUT /T 10
	
	::linkedin
	echo "LinkedIn feed"
	start firefox https://www.linkedin.com/feed/
	TIMEOUT /T 10
	
	::overleaf
	echo "Overleaf"
	start firefox https://www.overleaf.com/project
	
	goto end
	
::stressed day
:stressed

	::steam
	cd "C:\Program Files (x86)\Steam\"
	start Steam.exe
	:: reset for later
	cd %homepath%
	
	::youtube = lofi hip-hop beats
	start firefox https://www.youtube.com/watch?v=5qap5aO4i9A
	
	goto end
	
::focus day
:focus

	::eclipse
	start %homepath%\eclipse\java-2020-03\eclipse\eclipse.exe
	TIMEOUT /T 10
	
	
	::youtube = lofi hip-hop beats
	start firefox https://www.youtube.com/watch?v=5qap5aO4i9A
	
goto end
:end
echo "Have a nice day :)"
exit 
Exit/B