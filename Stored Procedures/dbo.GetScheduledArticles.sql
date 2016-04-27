SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF
CREATE PROCEDURE [dbo].[GetScheduledArticles]
  @publicationdate DATETIME =null
AS

  IF @publicationdate IS NULL
    SELECT @publicationdate = GETDATE()
 SELECT a.ArticlesID,
        a.Title,
        a.[Description],
        a.URL,
        ars.publicationdate,
          c.ContactFullName,
          c.Photo
  FROM dbo.Articles a
  INNER JOIN dbo.ArticleSchedule ars
   ON a.ArticlesID = ars.articledid
   INNER JOIN dbo.ArticleAuthors aa
    ON a.ArticlesID = aa.articleid
	INNER JOIN dbo.Contacts c ON c.ContactsID = aa.contactid
  WHERE ars.publicationdate < @publicationdate


GO
