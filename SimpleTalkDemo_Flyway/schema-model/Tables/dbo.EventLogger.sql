CREATE TABLE [dbo].[EventLogger]
(
[LogId] [int] NOT NULL IDENTITY(1, 1),
[LogMsg] [varchar] (max) NULL,
[LogDate] [datetime2] NULL CONSTRAINT [df_getdate] DEFAULT (sysdatetime()),
[LogUser] [varchar] (200) NULL CONSTRAINT [DF__EventLogg__LogUs__22FF2F51] DEFAULT (user_name())
)
GO
ALTER TABLE [dbo].[EventLogger] ADD CONSTRAINT [EventLoggerPK] PRIMARY KEY CLUSTERED ([LogId])
GO
CREATE NONCLUSTERED INDEX [EventLogger_IDX] ON [dbo].[EventLogger] ([LogDate], [LogUser])
GO
CREATE NONCLUSTERED INDEX [EventLogger_IDXUser] ON [dbo].[EventLogger] ([LogUser])
GO
