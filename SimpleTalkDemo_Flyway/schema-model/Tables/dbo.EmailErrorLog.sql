CREATE TABLE [dbo].[EmailErrorLog]
(
[emailid] [int] NULL,
[EmailDate] [datetime2] NULL,
[errormsg] [varchar] (max) NULL,
[reviewed] [bit] NULL
)
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'PKException', @xp, 'SCHEMA', N'dbo', 'TABLE', N'EmailErrorLog', NULL, NULL
GO
