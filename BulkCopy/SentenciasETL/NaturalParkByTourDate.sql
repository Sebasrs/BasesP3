SELECT TourDate, ParkName
FROM VisitorByTour
INNER JOIN Tour
	ON VisitorByTour.IdTour = Tour.IdTour
INNER JOIN Housing
	ON Housing.IdHousing = Tour.IdHousing
INNER JOIN NaturalPark
	ON Housing.IdNaturalPark = NaturalPark.IdNaturalPark
GROUP BY TourDate
ORDER BY TourDate