
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[prcGetContacts] @contactid INT = NULL
AS
SET NOCOUNT on
    IF @contactid IS NOT NULL
        SELECT  *
            FROM Contacts

GO
