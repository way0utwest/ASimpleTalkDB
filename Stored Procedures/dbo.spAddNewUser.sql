SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spAddNewUser]
  @username VARCHAR(200) = NULL
  , @pwd VARBINARY(max)
  , @active TINYINT
AS
 SET NOCOUNT ON 
 DECLARE @id int
    IF @username IS NULL 
      RAISERROR('Username parameter is required', 12, 1);
	ELSE
	  INSERT dbo.Users
	          ( username ,pwd ,active )
	  VALUES  ( @username
	            , @pwd
	            , @active
	            ) 
  SELECT @id = @@IDENTITY
  RETURN @id


GO
