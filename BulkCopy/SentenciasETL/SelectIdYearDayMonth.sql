SELECT
	CONCAT(
		YEAR(TourDate)
	   ,FORMAT(TourDate,'MM')
	   ,FORMAT(TourDate,'dd')
	   )
	   AS IdDate,
	   ROW_NUMBER() OVER(ORDER BY TourDate) AS DimEarnings,
	   ROW_NUMBER() OVER(ORDER BY TourDate) AS DimCosts,
	   ROW_NUMBER() OVER(ORDER BY TourDate) AS DimLocation
FROM VisitorByTour
INNER JOIN Tour
	ON VisitorByTour.IdTour = Tour.IdTour
GROUP BY TourDate
ORDER BY TourDate