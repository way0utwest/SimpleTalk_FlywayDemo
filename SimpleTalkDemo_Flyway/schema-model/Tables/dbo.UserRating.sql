CREATE TABLE [dbo].[UserRating]
(
[UserRatingKey] [int] NOT NULL IDENTITY(1, 1),
[UserID] [int] NULL,
[ArticleID] [int] NULL,
[Rating] [numeric] (10, 2) NULL
)
GO
ALTER TABLE [dbo].[UserRating] ADD CONSTRAINT [UserRatingPK] PRIMARY KEY CLUSTERED ([UserRatingKey])
GO
