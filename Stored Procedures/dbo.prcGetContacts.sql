
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[prcGetContacts] @contactid INT = NULL
AS
SET NOCOUNT on
    IF @contactid IS NOT NULL
        SELECT  ContactsID
              , ContactFullName
              , PhoneWork
              , PhoneMobile
              , Address1
              , Address2
              , Address3
              , CountryCode
              , JoiningDate
              , ModifiedDate
              , Email
              , Photo
              , LinkedIn
            FROM Contacts

GO
