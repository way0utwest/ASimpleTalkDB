SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--  Comments here are associated with the test.
--  For test case examples, see: http://tsqlt.org/user-guide/tsqlt-tutorial/
CREATE PROCEDURE [tArticles].[test Retrieve articles with null publicationdate parameter]
AS
BEGIN
  --Assemble
  EXEC tsqlt.FakeTable @TableName = N'Articles', -- nvarchar(max)
      @SchemaName = N'dbo'

  INSERT dbo.Articles
          ( AuthorID, Title, Description, URL)
      VALUES
          ( 1, 'A Test Article', 'A test Description', 'http:/someurl')
        , ( 1, 'A second Test Article', 'A new test Description', 'http:/someurl2')

  EXEC tsqlt.FakeTable @TableName = N'ArticleSchedule', -- nvarchar(max)
      @SchemaName = N'dbo'

  INSERT dbo.ArticleSchedule
    VALUES ( 1, '20150205' )
	     , ( 2, DATEADD( DAY, 1, GETDATE() ))

  EXEC tsqlt.FakeTable @TableName = N'Contacts', -- nvarchar(max)
      @SchemaName = N'dbo'

  INSERT dbo.Contacts
          ( ContactsID, ContactFullName, Photo)
      VALUES
          ( 1, N'Test Author', 0x0010 )
  

  SELECT 
    a.ArticlesID
	, a.[Description]
	, a.URL
	, 'PublicationDate' = a.PublishDate
	, 'ContactFulleName' = ' '
	, 'Photo' = 0x0
   INTO #expected
   FROM articles a
   WHERE 1 = 0   

   SELECT TOP (0) *
    INTO #actual
    FROM #expected

  INSERT #expected 
    SELECT  1, 'A Test Article', 'A test Description', 'http:/someurl', N'Test Author', 0x0010 

  --Act
  INSERT #actual 
     EXEC GetScheduledArticles;
	   
  --Assert
  --  Compare the expected and actual values, or call tSQLt.Fail in an IF statement.  
  --  Available Asserts: tSQLt.AssertEquals, tSQLt.AssertEqualsString, tSQLt.AssertEqualsTable
  --  For a complete list, see: http://tsqlt.org/user-guide/assertions/
  EXEC tsqlt.AssertEqualsTable
      @Expected = N'#expected', -- nvarchar(max)
      @Actual = N'#actual', -- nvarchar(max)
      @FailMsg = N'The procedure does not work with a null publication date' -- nvarchar(max)
  
  
END;



GO
