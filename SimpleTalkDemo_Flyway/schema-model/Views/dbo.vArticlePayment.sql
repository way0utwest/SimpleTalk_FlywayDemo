SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vArticlePayment]
AS
SELECT ap.ArticleID ,
       ap.ContactID ,
       ap.PublishDate ,
       ap.PaymentDate ,
       ap.AuthorPaid ,
       ap.ArticlePaymentRate ,
       a.Title ,
	   c.ContactFullName
 FROM dbo.ArticlePayment AS ap
 INNER JOIN dbo.Articles AS a
 ON a.PublishDate = ap.PublishDate
 AND ap.ArticleID = a.ArticlesID
 INNER JOIN dbo.Contacts AS c
 ON ap.ContactID = c.ContactsID
GO
