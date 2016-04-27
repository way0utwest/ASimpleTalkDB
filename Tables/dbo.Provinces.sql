CREATE TABLE [dbo].[Provinces]
(
[ProvinceID] [int] NOT NULL IDENTITY(1, 1),
[ProvinceCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProvinceName] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Provinces] ADD CONSTRAINT [PK__Province__FD0A6FA332E85BB3] PRIMARY KEY CLUSTERED  ([ProvinceID]) ON [PRIMARY]
GO
