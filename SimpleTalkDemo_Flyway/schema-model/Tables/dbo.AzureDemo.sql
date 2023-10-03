CREATE TABLE [dbo].[AzureDemo]
(
[DemoKey] [int] NOT NULL,
[DemoVal] [varchar] (100) NULL
)
GO
ALTER TABLE [dbo].[AzureDemo] ADD CONSTRAINT [AzureDemoPK] PRIMARY KEY CLUSTERED ([DemoKey])
GO
