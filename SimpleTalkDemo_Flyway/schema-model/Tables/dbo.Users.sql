CREATE TABLE [dbo].[Users]
(
[UserID] [int] NOT NULL IDENTITY(1, 1),
[Username] [varchar] (200) NULL,
[FullName] [varchar] (500) NULL,
[NTAuthAccount] [varchar] (300) NULL,
[modifieddate] [datetime] NULL,
[modifiedby] [varchar] (200) NULL,
[LastPwdChange] [date] NULL
)
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserID])
GO
