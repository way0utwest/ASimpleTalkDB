CREATE TABLE [dbo].[Question]
(
[QuestionKey] [int] NOT NULL IDENTITY(1, 1),
[QuestionTitle] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [QuestionPK] PRIMARY KEY CLUSTERED  ([QuestionKey]) ON [PRIMARY]
GO
