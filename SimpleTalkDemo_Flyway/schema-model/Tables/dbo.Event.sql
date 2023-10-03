CREATE TABLE [dbo].[Event]
(
[EventName] [varchar] (100) NOT NULL
)
GO
ALTER TABLE [dbo].[Event] ADD CONSTRAINT [EventPK] PRIMARY KEY CLUSTERED ([EventName])
GO
