CREATE TABLE [dbo].[Steve]
(
[AnInt] [int] NOT NULL,
[SomeString] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Steve] ADD CONSTRAINT [StevePK] PRIMARY KEY CLUSTERED  ([AnInt]) ON [PRIMARY]
GO
