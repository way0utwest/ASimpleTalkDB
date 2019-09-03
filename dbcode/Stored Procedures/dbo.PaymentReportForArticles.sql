SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[PaymentReportForArticles]
   @startdate DATE
   , @enddate date
AS
SELECT apy.ContactID,
co.ContactFullName,
       COUNT(apy.ArticleID) AS NumberOfArticles,
       CASE
           WHEN COUNT(apy.ArticleID) > 10 THEN
       (SUM(apy.ArticlePaymentRate) + (SUM(apy.ArticlePaymentRate) * .1))
           WHEN COUNT(apy.ArticleID) >= 5 THEN
       (SUM(apy.ArticlePaymentRate) + (SUM(apy.ArticlePaymentRate) * .05))
           ELSE
               SUM(apy.ArticlePaymentRate)
       END AS paymenttotal
FROM dbo.ArticlePayment apy
INNER JOIN dbo.Contacts AS co
ON apy.ContactID = co.ContactsID
WHERE apy.PublishDate >= @startdate
      AND apy.PublishDate < @enddate
GROUP BY apy.ContactID, co.ContactFullName;
GO
