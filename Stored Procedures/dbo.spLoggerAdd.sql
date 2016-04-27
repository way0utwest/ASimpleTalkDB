SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[spLoggerAdd]
    @logmsg VARCHAR(MAX) = NULL
  , @logcat VARCHAR(250) = ''
AS
    IF @logmsg IS NOT NULL
        BEGIN
            BEGIN TRY
                INSERT  dbo.Logger
                        ( logdate ,logcategory ,logmsg )
                VALUES  ( SYSDATETIME() ,@logcat ,@logmsg );
            END TRY
            BEGIN CATCH
                RAISERROR('Logger error', 16, 1 ) WITH LOG;
            END CATCH;
        END;


GO
