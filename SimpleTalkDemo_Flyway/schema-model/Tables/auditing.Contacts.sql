CREATE TABLE [auditing].[Contacts]
(
[ContactsID] [int] NULL,
[Firstname] [varchar] (100) NULL,
[Lastname] [varchar] (100) NULL,
[address1] [varchar] (200) NULL,
[address2] [varchar] (200) NULL,
[address3] [varchar] (200) NULL
)
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'PKException', @xp, 'SCHEMA', N'auditing', 'TABLE', N'Contacts', NULL, NULL
GO
