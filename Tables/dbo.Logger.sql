CREATE TABLE [dbo].[Logger]
(
[logdate] [datetime2] NULL CONSTRAINT [DF__Logger__logdate__69FBBC1F] DEFAULT (getutcdate()),
[logcategory] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[logmsg] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
