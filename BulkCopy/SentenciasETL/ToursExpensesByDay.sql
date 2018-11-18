SELECT TourDate, SUM(OrganizationCost) AS ToursExpenses
FROM VisitorByTour
INNER JOIN Tour
	ON VisitorByTour.IdTour = Tour.IdTour
GROUP BY TourDate
ORDER BY TourDate