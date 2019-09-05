SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetLatestBlogForAuthor]
    @authorid INT
  , @top INT
AS
BEGIN

    SELECT TOP (@top)
           a.AuthorID
         , c.CountryCode
         , c.ModifiedBy
         , c.Email
    FROM dbo.Articles AS a
        INNER JOIN dbo.Contacts AS c
            ON c.ContactsID = a.AuthorID
    WHERE a.AuthorID = @authorid
    ORDER BY a.PublishDate;
END;
GO
