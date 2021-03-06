SELECT TourDate, SUM(Price) AS HousingIncome
FROM VisitorByTour
INNER JOIN Tour
	ON VisitorByTour.IdTour = Tour.IdTour
INNER JOIN Housing
	ON Housing.IdHousing = Tour.IdHousing
INNER JOIN Category
	ON Housing.IdCategory = Category.IdCategory
GROUP BY TourDate
ORDER BY TourDate