CREATE TABLE [dbo].[RSSFeeds]
(
[RSSFeedID] [int] NOT NULL IDENTITY(1, 1),
[FeedName] [varchar] (max) COLLATE Latin1_General_CI_AS NULL,
[Checked] [bit] NULL,
[FeedBurner] [bit] NOT NULL,
[ACTIVE] [bit] NULL,
[MigrationTest] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [dfBlankSpace] DEFAULT (' ')
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[RSSFeeds] ADD CONSTRAINT [PK__RSSFeeds__DF1690F2C1F77AC5] PRIMARY KEY CLUSTERED  ([RSSFeedID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'A feature to create a custom RSS feed', 'SCHEMA', N'dbo', 'TABLE', N'RSSFeeds', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Whether checked by default on the list offered to users', 'SCHEMA', N'dbo', 'TABLE', N'RSSFeeds', 'COLUMN', N'Checked'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Eg, SQL, .NET, SysAdmin, Opinion etc.', 'SCHEMA', N'dbo', 'TABLE', N'RSSFeeds', 'COLUMN', N'FeedName'
GO
