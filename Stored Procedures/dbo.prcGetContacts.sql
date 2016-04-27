SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[prcGetContacts] @contactid INT = NULL
AS
SET NOCOUNT on
    IF @contactid IS NOT NULL
        SELECT  ContactsID
              , 'SQLRelayFullName' AS ContactFullName
              , 'datechanged' = ModifiedDate
              , Email
              , LinkedIn, Address1, Address2, Address3
              , CountryCode
              , 'LogDate' = GETDATE()
            FROM Contacts
    ELSE
        SELECT ContactsID,
                ContactFullName,
                ModifiedDate,
                Email,
                Photo,
                LinkedIn,Address1, Address2, address3 
                CountryCode, 'Logdate' = getdate()
            FROM dbo.Contacts
            WHERE ContactsID = @contactid
			AND CountryCode = 'USA'

GO
