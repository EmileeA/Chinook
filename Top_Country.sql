--12:30pm
CREATE LOGIN [MicrosoftAccount\{Account Name Goes Here}] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [MicrosoftAccount\{Account Name Goes Here}]
GO