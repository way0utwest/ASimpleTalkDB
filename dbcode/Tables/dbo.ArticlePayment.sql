CREATE TABLE [dbo].[ArticlePayment]
(
[ArticlePaymentKey] [int] NOT NULL IDENTITY(1, 1),
[ArticleID] [int] NULL,
[ContactID] [int] NULL,
[PublishDate] [date] NULL,
[PaymentDate] [date] NULL,
[AuthorPaid] [bit] NULL,
[ArticlePaymentRate] [numeric] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticlePayment] ADD CONSTRAINT [ArticlePaymentPK] PRIMARY KEY CLUSTERED  ([ArticlePaymentKey]) ON [PRIMARY]
GO
GRANT DELETE ON  [dbo].[ArticlePayment] TO [WebUsers]
GO
GRANT INSERT ON  [dbo].[ArticlePayment] TO [WebUsers]
GO
GRANT SELECT ON  [dbo].[ArticlePayment] TO [WebUsers]
GO
GRANT UPDATE ON  [dbo].[ArticlePayment] TO [WebUsers]
GO
EXEC sp_addextendedproperty N'MS_Description', N'payment information for published articles', 'SCHEMA', N'dbo', 'TABLE', N'ArticlePayment', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'FK to authors in contact table', 'SCHEMA', N'dbo', 'TABLE', N'ArticlePayment', 'COLUMN', N'ContactID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'latest date', 'SCHEMA', N'dbo', 'TABLE', N'ArticlePayment', 'COLUMN', N'PublishDate'
GO
