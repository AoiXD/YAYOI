net stop MSSQL$YAYOI
net stop SQLWrite
net stop SSQLTELEMETRY$YAYOI
net stop SQLBrowser

@echo off
timeout /nobreak 5 > /nul

net start SQLWrite
net start SSQLTELEMETRY$YAYOI
net start SQLBrowser
net start MSSQL$YAYOI
