CREATE TABLE [dbo].[Users]
(
[userid] [int] NOT NULL IDENTITY(1, 1),
[username] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[pwd] [varbinary] (max) NULL,
[active] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
