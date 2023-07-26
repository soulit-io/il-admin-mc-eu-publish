USE InsuranceLetters 
SELECT @@servername 'Servidor', db_name(dbid) 'Base de Datos' from master..sysprocesses where spid = @@spid
GO

SELECT getdate() as 'Fecha hora Inicial'
GO

SELECT '--------------Before--------------'
SELECT * FROM  [dbo].[step_handler]
SELECT '--------------Before--------------'
GO
BEGIN TRAN

UPDATE [dbo].[step_handler] SET
	   [handler_class] = N'MastercardInsuranceLetters.CustomStepHandlers.XMLBenefitsStepHandler' 
      ,[data] = N'{
  BenefitResponseRoot: "//Envelope/Body/GetBenefitInformationResponse/GetBenefitInformationResult",
  BenefitResponseNihil: "i:nil=''true''",
  DecodeBase64: "true",
  BENEFITS_JSONPATH: "$.input.fields[?(@.name==''CODE_BENEFITS'')].values[0]"
}'
 WHERE [handler_class] LIKE '%BenefitsStepHandler'
GO

Select '--------------After--------------'
SELECT COUNT(*) FROM [dbo].[step_handler]
Select '--------------After--------------'

COMMIT TRAN

Select getdate() as 'Fecha hora Final'
GO