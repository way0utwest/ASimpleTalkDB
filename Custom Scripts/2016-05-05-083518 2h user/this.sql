/*
This migration script will be used to deploy changes to these objects:
SQlinthecity7
SQlinthecity8
*/
EXEC sys.sp_rename  @objname = N'SQlinthecity7', -- nvarchar(1035)
    @newname = 'SQlinthecity8'
   
