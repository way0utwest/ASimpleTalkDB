SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spGetActiveFeeds]
AS
    SELECT RSSFeedID,
            FeedName,
            Checked,
            FeedBurner, active
        FROM dbo.RSSFeeds
        WHERE ACTIVE = 1
		 AND checked = 1;
GO
