CREATE TABLE [dbo].[Contacts]
(
[ContactsID] [int] NOT NULL IDENTITY(1, 1),
[ContactFullName] [nvarchar] (100) NOT NULL,
[PhoneWork] [nvarchar] (25) NULL,
[PhoneMobile] [nvarchar] (25) NULL,
[Address1] [nvarchar] (128) NULL,
[Address2] [nvarchar] (128) NULL,
[Address3] [nvarchar] (128) NULL,
[CountryCode] [nvarchar] (4) NULL,
[JoiningDate] [datetime] NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [dfSysUTCDate] DEFAULT (sysdatetime()),
[Email] [nvarchar] (256) NULL,
[Photo] [image] NULL,
[ModifiedBy] [varchar] (50) NULL,
[StatusID] [tinyint] NULL
)
GO
ALTER TABLE [dbo].[Contacts] ADD CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED ([ContactsID])
GO
