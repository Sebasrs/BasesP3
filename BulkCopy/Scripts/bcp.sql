USE NaturalPark;  
GO

BULK INSERT dbo.Vehicle   
   FROM 'C:\BulkCopy\bcpFiles\vehicle.bcp'   
   WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\vehicle.fmt');  
GO

BULK INSERT dbo.Phone
	FROM   'C:\BulkCopy\bcpFiles\phone.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\phone.fmt');
GO

BULK INSERT dbo.Project
	FROM   'C:\BulkCopy\bcpFiles\project.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\project.fmt');
GO

BULK INSERT dbo.Degree
	FROM   'C:\BulkCopy\bcpFiles\degree.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\degree.fmt');
GO

BULK INSERT dbo.DataSpecies
	FROM   'C:\BulkCopy\bcpFiles\dataAnimal.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\speciestype.fmt');
GO

BULK INSERT dbo.DataSpecies
	FROM   'C:\BulkCopy\bcpFiles\dataVegetal.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\speciestype.fmt');
GO

BULK INSERT dbo.DataSpecies
	FROM   'C:\BulkCopy\bcpFiles\dataCrystal.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\speciestype.fmt');
GO

BULK INSERT dbo.Organization
	FROM   'C:\BulkCopy\bcpFiles\organization.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\organization.fmt');
GO

BULK INSERT dbo.Community
	FROM   'C:\BulkCopy\bcpFiles\community.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\community.fmt');
GO

BULK INSERT dbo.NaturalPark
	FROM   'C:\BulkCopy\bcpFiles\nationalParks.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\nationalpark.fmt');
GO

BULK INSERT dbo.Species
	FROM   'C:\BulkCopy\bcpFiles\species.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\species.fmt');
GO

BULK INSERT dbo.Entrance
	FROM   'C:\BulkCopy\bcpFiles\entrance.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\entrance.fmt');
GO

BULK INSERT dbo.Area
	FROM   'C:\BulkCopy\bcpFiles\areas.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\area.fmt');
GO

BULK INSERT dbo.Housing
	FROM   'C:\BulkCopy\bcpFiles\housings.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\housing.fmt');
GO

BULK INSERT dbo.SpeciesByArea
	FROM   'C:\BulkCopy\bcpFiles\speciesArea.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\speciesbyarea.fmt');
GO

BULK INSERT dbo.Tour
	FROM   'C:\BulkCopy\bcpFiles\tours.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\tour.fmt');
GO

BULK INSERT dbo.FoodChain
	FROM   'C:\BulkCopy\bcpFiles\foodChain.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\foodchain.fmt');
GO

BULK INSERT dbo.Visitor
	FROM   'C:\BulkCopy\bcpFiles\visitors.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\visitor.fmt');
GO

BULK INSERT dbo.VisitorByTour
	FROM   'C:\BulkCopy\bcpFiles\visitorTour.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\visitorbytour.fmt');
GO

BULK INSERT dbo.Staff
	FROM   'C:\BulkCopy\bcpFiles\staff.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\staff.fmt');
GO

BULK INSERT dbo.InvestigationStaff
	FROM   'C:\BulkCopy\bcpFiles\investigation.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\investigationstaff.fmt');
GO

BULK INSERT dbo.StaffManagement
	FROM   'C:\BulkCopy\bcpFiles\management.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\staffmanagement.fmt');
GO

BULK INSERT dbo.VigilanceStaff
	FROM   'C:\BulkCopy\bcpFiles\vigilance.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\vigilancestaff.fmt');
GO

BULK INSERT dbo.ConservationStaff
	FROM   'C:\BulkCopy\bcpFiles\conservations.bcp'
	WITH (FORMATFILE = 'C:\BulkCopy\formatFiles\conservationstaff.fmt');
GO