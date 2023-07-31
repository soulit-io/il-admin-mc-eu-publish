USE InsuranceLettersAp
SELECT @@servername 'Servidor', db_name(dbid) 'Base de Datos' from master..sysprocesses where spid = @@spid
GO

SELECT getdate() as 'Fecha hora Inicial'
GO

SELECT '--------------Before--------------'
SELECT COUNT(*) FROM [dbo].[parameter]
SELECT '--------------Before--------------'
GO

BEGIN TRAN

DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_TWN';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_AUS';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_CHN';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_HKG';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_IDN';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_KOR';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_MAC';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_MYS';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_NZL';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_PHL';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_SGP';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_THA';
DELETE FROM [dbo].[parameter] where identifier = 'travel_benefits_VNM';

DELETE FROM [dbo].[parameter] where identifier = 'registration_linkTravel';
GO

SET IDENTITY_INSERT [dbo].[parameter] OFF 

INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_TWN', N'32358, 32360, 32362, 32364, 32366')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_AUS', N'32358')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_CHN', N'32358')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_HKG', N'32358, 32360, 32362, 32364, 32366')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_IDN', N'32358')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_KOR', N'32358, 32360, 32362, 32364, 32366')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_MAC', N'32358')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_MYS', N'32358, 32360, 32362, 32364, 32366')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_NZL', N'32358')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_PHL', N'32358')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_SGP', N'32358, 32360, 32362, 32364, 32366')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_THA', N'32358')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'travel_benefits_VNM', N'32358')
INSERT [dbo].[parameter] ( [identifier], [value]) VALUES ( N'registration_linkTravel', N'false')

GO

SELECT '--------------After--------------'
SELECT COUNT(*) FROM [dbo].[parameter] 
SELECT '--------------After--------------'
COMMIT TRAN
SELECT getdate() as 'Fecha hora Final'


