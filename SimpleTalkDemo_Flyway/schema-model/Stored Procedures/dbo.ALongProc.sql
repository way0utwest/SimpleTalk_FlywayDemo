SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ALongProc]
AS
BEGIN
    SELECT 1;
    SELECT 2;
    DECLARE @i Int = 1;
    WHILE @i < 10000
    BEGIN
        SELECT a.ArticlesID
             , a.AuthorID
             , a.Title
             , a.Description
             , a.Article
             , a.PublishDate
             , a.ModifiedDate
             , a.URL
             , a.Comments
             , a.ReadingTimeEstimate
             , a.CreatedDate
             , a.ModifiedBy
             , aa.ArticleAuthorKey
             , aa.ArticleID
             , aa.ContactID
             , aa.AuthorOrder
        FROM dbo.Articles                AS a
            INNER JOIN dbo.ArticleAuthor AS aa
                ON a.ArticlesID = aa.ArticleID
            INNER JOIN dbo.Contacts      c
                ON aa.ArticleAuthorKey = c.ContactsID;
        SET @i = @i + 1;
    END;
	DECLARE @r Varchar(100)
	SELECT @r = (SELECT TOP 3 ContactFullName  FROM dbo.Contacts ORDER BY ContactFullName)

    SELECT TOP 2 * FROM dbo.CountryCodes

	SELECT * FROM dbo.RSSFeeds

	SELECT * FROM dbo.ArticlePayment WHERE ArticlePaymentRate < 100
END;
GO
