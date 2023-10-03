SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SummarizeAuthorPaymentByMonth] @month DATE, @bonus NUMERIC(10,2) = NULL, @articlecounttoapplybonus TINYINT = 4
AS
BEGIN
SELECT 1
END;
GO
