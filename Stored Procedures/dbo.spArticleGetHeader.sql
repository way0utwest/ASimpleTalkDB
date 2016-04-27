SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spArticleGetHeader] 
  @articleid INT
/*
Get the article header information along with the author(s). multiple authors
result in multiple rows.
*/
AS
    BEGIN
        SELECT a.Title,
                a.Description,
                a.PublishDate,
                a.URL,
                a.ReleaseDate,
                aa.authororder,
                c.Email,
                c.ContactFullName
            FROM dbo.Articles a
                INNER JOIN dbo.ArticleAuthors aa
                ON a.ArticlesID = aa.articleid
                INNER JOIN dbo.Contacts c
                ON c.ContactsID = aa.contactid
			WHERE a.ArticlesID = @articleid
            ORDER BY aa.authororder;
 
    END;



GO
