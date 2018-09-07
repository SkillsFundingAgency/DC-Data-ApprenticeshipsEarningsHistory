CREATE PROCEDURE [Staging].[usp_Process_AppsEarningsHistory]
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		
		MERGE INTO [dbo].[AppsEarningsHistory] AS Target
		USING (
				SELECT
					[AppIdentifier],
					[AppProgCompletedInTheYearInput],
					[BalancingProgAimPaymentsInTheYear],
					[CollectionYear],
					[CollectionReturnCode],
					[CompletionProgaimPaymentsInTheYear],
					[DaysInYear],
					[FworkCode],
					[HistoricEffectiveTNPStartDateInput],
					[HistoricLearner1618StartInput],
					[HistoricTotal1618UpliftPaymentsInTheYearInput],
					[HistoricTNP1Input],
					[HistoricTNP2Input],
					[HistoricTNP3Input],
					[HistoricTNP4Input],
					[HistoricVirtualTNP3EndOfTheYearInput],
					[HistoricVirtualTNP4EndOfTheYearInput],
					[LatestInYear],
					[LearnRefNumber],
					[OnProgProgAimPaymentsInTheYear],
					[ProgrammeStartDateIgnorePathway],
					[ProgrammeStartDateMatchPathway],
					[ProgType],
					[PwayCode],
					[STDCode],
					[TotalProgAimPaymentsInTheYear],
					[UptoEndDate],
					[UKPRN],
					[ULN],
					[HistoricEmpIdEndWithinYear],
					[HistoricEmpIdStartWithinYear],
					[HistoricPMRAmount],
					[HistoricLearnDelProgEarliestACT2DateInput]
				  FROM [Staging].[AppsEarningsHistoryStaged]
			  )
			  AS Source 
		    ON 
				Target.[LatestInYear] = Source.[LatestInYear]
			AND Target.[LearnRefNumber] = Source.[LearnRefNumber]
			AND Target.[UKPRN] = Source.[UKPRN]
			AND Target.[CollectionYear] = Source.[CollectionYear]
			AND Target.[CollectionReturnCode] = Source.[CollectionReturnCode]
			AND Target.[AppIdentifier] = Source.[AppIdentifier]
			WHEN MATCHED 
				AND EXISTS 
					(	SELECT 
							Target.[AppProgCompletedInTheYearInput],
							Target.[BalancingProgAimPaymentsInTheYear],
							Target.[CompletionProgaimPaymentsInTheYear],
							Target.[DaysInYear],
							Target.[FworkCode],
							Target.[HistoricEffectiveTNPStartDateInput],
							Target.[HistoricLearner1618StartInput],
							Target.[HistoricTotal1618UpliftPaymentsInTheYearInput],
							Target.[HistoricTNP1Input],
							Target.[HistoricTNP2Input],
							Target.[HistoricTNP3Input],
							Target.[HistoricTNP4Input],
							Target.[HistoricVirtualTNP3EndOfTheYearInput],
							Target.[HistoricVirtualTNP4EndOfTheYearInput],
							Target.[OnProgProgAimPaymentsInTheYear],
							Target.[ProgrammeStartDateIgnorePathway],
							Target.[ProgrammeStartDateMatchPathway],
							Target.[ProgType],
							Target.[PwayCode],
							Target.[STDCode],
							Target.[TotalProgAimPaymentsInTheYear],
							Target.[UptoEndDate],
							Target.[ULN],
							Target.[HistoricEmpIdEndWithinYear],
							Target.[HistoricEmpIdStartWithinYear],
							Target.[HistoricPMRAmount],
							Target.[HistoricLearnDelProgEarliestACT2DateInput]							
					EXCEPT 
						SELECT 
							Source.[AppProgCompletedInTheYearInput],
							Source.[BalancingProgAimPaymentsInTheYear],
							Source.[CompletionProgaimPaymentsInTheYear],
							Source.[DaysInYear],
							Source.[FworkCode],
							Source.[HistoricEffectiveTNPStartDateInput],
							Source.[HistoricLearner1618StartInput],
							Source.[HistoricTotal1618UpliftPaymentsInTheYearInput],
							Source.[HistoricTNP1Input],
							Source.[HistoricTNP2Input],
							Source.[HistoricTNP3Input],
							Source.[HistoricTNP4Input],
							Source.[HistoricVirtualTNP3EndOfTheYearInput],
							Source.[HistoricVirtualTNP4EndOfTheYearInput],
							Source.[OnProgProgAimPaymentsInTheYear],
							Source.[ProgrammeStartDateIgnorePathway],
							Source.[ProgrammeStartDateMatchPathway],
							Source.[ProgType],
							Source.[PwayCode],
							Source.[STDCode],
							Source.[TotalProgAimPaymentsInTheYear],
							Source.[UptoEndDate],
							Source.[ULN],
							Source.[HistoricEmpIdEndWithinYear],
							Source.[HistoricEmpIdStartWithinYear],
							Source.[HistoricPMRAmount],
							Source.[HistoricLearnDelProgEarliestACT2DateInput]							
					)
		  THEN
			UPDATE SET   
				 			[AppProgCompletedInTheYearInput] = Source.[AppProgCompletedInTheYearInput],
							[BalancingProgAimPaymentsInTheYear] = Source.[BalancingProgAimPaymentsInTheYear],
							[CompletionProgaimPaymentsInTheYear] = Source.[CompletionProgaimPaymentsInTheYear],
							[DaysInYear] = Source.[DaysInYear],
							[FworkCode] = Source.[FworkCode],
							[HistoricEffectiveTNPStartDateInput] = Source.[HistoricEffectiveTNPStartDateInput],
							[HistoricLearner1618StartInput] = Source.[HistoricLearner1618StartInput],
							[HistoricTotal1618UpliftPaymentsInTheYearInput] = Source.[HistoricTotal1618UpliftPaymentsInTheYearInput],
							[HistoricTNP1Input] = Source.[HistoricTNP1Input],
							[HistoricTNP2Input] = Source.[HistoricTNP2Input],
							[HistoricTNP3Input] = Source.[HistoricTNP3Input],
							[HistoricTNP4Input] = Source.[HistoricTNP4Input],
							[HistoricVirtualTNP3EndOfTheYearInput] = Source.[HistoricVirtualTNP3EndOfTheYearInput],
							[HistoricVirtualTNP4EndOfTheYearInput] = Source.[HistoricVirtualTNP4EndOfTheYearInput],
							[OnProgProgAimPaymentsInTheYear] = Source.[OnProgProgAimPaymentsInTheYear],
							[ProgrammeStartDateIgnorePathway] = Source.[ProgrammeStartDateIgnorePathway],
							[ProgrammeStartDateMatchPathway] = Source.[ProgrammeStartDateMatchPathway],
							[ProgType] = Source.[ProgType],
							[PwayCode] = Source.[PwayCode],
							[STDCode] = Source.[STDCode],
							[TotalProgAimPaymentsInTheYear] = Source.[TotalProgAimPaymentsInTheYear],
							[UptoEndDate] = Source.[UptoEndDate],
							[ULN] = Source.[ULN],
							[HistoricEmpIdEndWithinYear] = Source.[HistoricEmpIdEndWithinYear],
							[HistoricEmpIdStartWithinYear] = Source.[HistoricEmpIdStartWithinYear],
							[HistoricPMRAmount] = Source.[HistoricPMRAmount],
							[HistoricLearnDelProgEarliestACT2DateInput] = Source.[HistoricLearnDelProgEarliestACT2DateInput]					
		WHEN NOT MATCHED BY TARGET THEN
		INSERT (     [AppIdentifier],
					[AppProgCompletedInTheYearInput],
					[BalancingProgAimPaymentsInTheYear],
					[CollectionYear],
					[CollectionReturnCode],
					[CompletionProgaimPaymentsInTheYear],
					[DaysInYear],
					[FworkCode],
					[HistoricEffectiveTNPStartDateInput],
					[HistoricLearner1618StartInput],
					[HistoricTotal1618UpliftPaymentsInTheYearInput],
					[HistoricTNP1Input],
					[HistoricTNP2Input],
					[HistoricTNP3Input],
					[HistoricTNP4Input],
					[HistoricVirtualTNP3EndOfTheYearInput],
					[HistoricVirtualTNP4EndOfTheYearInput],
					[LatestInYear],
					[LearnRefNumber],
					[OnProgProgAimPaymentsInTheYear],
					[ProgrammeStartDateIgnorePathway],
					[ProgrammeStartDateMatchPathway],
					[ProgType],
					[PwayCode],
					[STDCode],
					[TotalProgAimPaymentsInTheYear],
					[UptoEndDate],
					[UKPRN],
					[ULN],
					[HistoricEmpIdEndWithinYear],
					[HistoricEmpIdStartWithinYear],
					[HistoricPMRAmount],
					[HistoricLearnDelProgEarliestACT2DateInput]
					)
			VALUES ( 
					Source.[AppIdentifier],
					Source.[AppProgCompletedInTheYearInput],
					Source.[BalancingProgAimPaymentsInTheYear],
					Source.[CollectionYear],
					Source.[CollectionReturnCode],
					Source.[CompletionProgaimPaymentsInTheYear],
					Source.[DaysInYear],
					Source.[FworkCode],
					Source.[HistoricEffectiveTNPStartDateInput],
					Source.[HistoricLearner1618StartInput],
					Source.[HistoricTotal1618UpliftPaymentsInTheYearInput],
					Source.[HistoricTNP1Input],
					Source.[HistoricTNP2Input],
					Source.[HistoricTNP3Input],
					Source.[HistoricTNP4Input],
					Source.[HistoricVirtualTNP3EndOfTheYearInput],
					Source.[HistoricVirtualTNP4EndOfTheYearInput],
					Source.[LatestInYear],
					Source.[LearnRefNumber],
					Source.[OnProgProgAimPaymentsInTheYear],
					Source.[ProgrammeStartDateIgnorePathway],
					Source.[ProgrammeStartDateMatchPathway],
					Source.[ProgType],
					Source.[PwayCode],
					Source.[STDCode],
					Source.[TotalProgAimPaymentsInTheYear],
					Source.[UptoEndDate],
					Source.[UKPRN],
					Source.[ULN],
					Source.[HistoricEmpIdEndWithinYear],
					Source.[HistoricEmpIdStartWithinYear],
					Source.[HistoricPMRAmount],
					Source.[HistoricLearnDelProgEarliestACT2DateInput]
				  )
		WHEN NOT MATCHED BY SOURCE THEN DELETE
		;

		RETURN 0;

	END TRY
-- 
-------------------------------------------------------------------------------------- 
-- Handle any problems
-------------------------------------------------------------------------------------- 
-- 
	BEGIN CATCH

		DECLARE   @ErrorMessage		NVARCHAR(4000)
				, @ErrorSeverity	INT 
				, @ErrorState		INT
				, @ErrorNumber		INT
						
		SELECT	  @ErrorNumber		= ERROR_NUMBER()
				, @ErrorMessage		= 'Error in :' + ISNULL(OBJECT_NAME(@@PROCID),'') + ' - Error was :' + ERROR_MESSAGE()
				, @ErrorSeverity	= ERROR_SEVERITY()
				, @ErrorState		= ERROR_STATE();
	
		RAISERROR (
					  @ErrorMessage		-- Message text.
					, @ErrorSeverity	-- Severity.
					, @ErrorState		-- State.
				  );
			  
		RETURN @ErrorNumber;

	END CATCH
-- 
-------------------------------------------------------------------------------------- 
-- All done
-------------------------------------------------------------------------------------- 
-- 
END