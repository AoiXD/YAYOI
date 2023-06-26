@echo off

net stop MSSQL$YAYOI
net stop SQLWrite
net stop SSQLTELEMETRY$YAYOI
net stop SQLBrowser

timeout /nobreak 15 > /nul

net start SQLWrite
net start SSQLTELEMETRY$YAYOI
net start SQLBrowser
net start MSSQL$YAYOI

rem SQLBrowserとMSSQL$YAYOIだけ再起動するだけでも良いかもしれん
