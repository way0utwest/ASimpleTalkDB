SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF
--GO
CREATE PROCEDURE [dbo].[MyGirHubDemoProc]
AS
SELECT top 10
  *
 FROM dbo.ArticleAuthors AS aa
GO
