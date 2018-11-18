SELECT TourDate, SUM(PayPerVisitor) AS ToursIncome
FROM VisitorByTour
INNER JOIN Tour
	ON VisitorByTour.IdTour = Tour.IdTour
INNER JOIN TourType
	ON Tour.IdTourType = TourType.IdTourType
GROUP BY TourDate
ORDER BY TourDate