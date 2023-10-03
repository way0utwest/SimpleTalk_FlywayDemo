CREATE TABLE [dbo].[ArticleAuthor]
(
[ArticleAuthorKey] [int] NOT NULL IDENTITY(1, 1),
[ArticleID] [int] NULL,
[ContactID] [int] NULL,
[AuthorOrder] [tinyint] NULL
)
GO
ALTER TABLE [dbo].[ArticleAuthor] ADD CONSTRAINT [ArticleAuthorPK] PRIMARY KEY CLUSTERED ([ArticleAuthorKey])
GO
