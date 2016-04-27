SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spGetUsers] @active INT = NULL
/*
Return the list of all users unless the parameter is passed in. In that case
only include users matching the parameter value.
*/
AS
    BEGIN
        IF @active IS NULL
            SELECT userid,
                    username,
                    pwd,
                    active
                FROM dbo.Users;
        ELSE
            SELECT userid,
                    username,
                    pwd,
                    active
                FROM dbo.Users
                WHERE active = @active;
    END;
    
GO
