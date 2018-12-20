  CREATE PROCEDURE [dbo].[PrepareForNewData] 
( @pCollectionYear int, 
  @pCollectionReturnCode varchar(3),  
  @pUKPRN int 
)
AS 
BEGIN
  DELETE
  FROM [dbo].[AppsEarningsHistory]
  WHERE [CollectionYear]=@pCollectionYear
    AND [CollectionReturnCode]=@pCollectionReturnCode
    AND [UKPRN]=@pUKPRN
  
  UPDATE [dbo].[AppsEarningsHistory]
    SET [LatestInYear]=0 WHERE [LatestInYear]=1
    AND [CollectionYear]=@pCollectionYear
    AND [UKPRN]=@pUKPRN 
END 
