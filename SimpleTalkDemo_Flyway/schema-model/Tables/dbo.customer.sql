CREATE TABLE [dbo].[customer]
(
[customerid] [int] NOT NULL,
[CustomerName] [varchar] (200) NULL,
[CustomerLocation] [varchar] (200) NULL,
[orders] [money] NULL,
[region] [varchar] (20) NULL,
[OrderDate] [date] NULL
)
GO
ALTER TABLE [dbo].[customer] ADD CONSTRAINT [CustomerPK] PRIMARY KEY CLUSTERED ([customerid])
GO
