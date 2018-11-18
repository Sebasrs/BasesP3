import random

NATIONAL_PARKS = 100
AREAS = 1000
HOUSINGS = 1000
VISITORS = 1000
SPECIES = 5000
TOURS = 30000
PHONE = 400
STAFF = 400
ENTRACE = 300

def createLine(array):
    line = ""
    for x in array:
        line = line + x + ","
    line = line[:-1]
    return line

def generateFile(array, nameFile):
    file = open(nameFile, "w")
    line = ""
    for x in array:
        line = createLine(x)
        if x != createLine(array[-1]):
            line += "\n"
        file.write(line)
    file.close()

def createFiles(array):
    names =  ["organization" ,"community" ,"phone", "staff", "entrance", "vehicle", "visitorTour", "speciesArea", "management", "vigilance",
              "project", "degree", "investigation", "specialization", "conservations", "tours", "foodChain",
              "dataVegetal", "dataCrystal", "dataAnimal", "species", "visitors", "housings", "areas",
              "nationalParks"]
    i = 0
    for x in array:
        generateFile(x, names[i] + ".bcp")
        i += 1

def randomNumber(min, max):
    number = random.randint(min,max)
    return number

def generateDate():
    date = str(randomNumber(2012,2018)) + "-0" + str(randomNumber(1,9)) + "-0" + str(randomNumber(1,9)) + "T" + "0" + str(randomNumber(1,9)) + ":" + "0" + str(randomNumber(1,9)) + ":" + "0" + str(randomNumber(1,9))
    return date

def createSpecies():
    specie = []
    species = []
    for i in range(0, 5000):
        primaryKey = str(i + 1)
        scientificName = "scientificName" + str(i)
        commonName = "commonName" + str(i)
        dataSpecies = str(i+1)
        individualsArea = str(randomNumber(1,1000))
        specie = [primaryKey, scientificName, commonName, dataSpecies, individualsArea]
        species.append(specie)
    return species

def createDataVegetal():
    dataVegetal = []
    dataVegetals = []
    for i in range(0, 1000):
        primaryKey = str(i + 1 + 3000)
        typeSpecies =  "3"
        ruttingStart = ""
        ruttingEnd = ""
        crystal = "0"
        dataVegetal = [primaryKey, typeSpecies, ruttingStart, ruttingEnd, crystal]
        dataVegetals.append(dataVegetal)
    return dataVegetals

def createDataAnimal():
    dataAnimal = []
    dataAnimals = []
    for i in range(0, 3000):
        primaryKey = str(i + 1)
        typeSpecies =  "2"
        ruttingStart = generateDate()
        ruttingEnd = generateDate()
        crystal = "0"
        dataAnimal = [primaryKey, typeSpecies, ruttingStart, ruttingEnd, crystal]
        dataAnimals.append(dataAnimal)
    return dataAnimals

def createDataCrystal():
    dataCrystal = []
    dataCrystals = []
    for i in range(0, 1000):
        primaryKey = str(i + 1 + 4000)
        typeSpecies = "1"
        ruttingStart = ""
        ruttingEnd = ""
        crystal = "1"
        dataCrystal = [primaryKey, typeSpecies, ruttingStart, ruttingEnd, crystal]
        dataCrystals.append(dataCrystal)
    return dataCrystals

def createHousing():
    housing = []
    housings = []
    for i in range(0, HOUSINGS):
        primaryKey = str(i + 1)
        nationalPark = str(randomNumber(1,100))
        category = str(randomNumber(1,4))
        housing = [primaryKey, nationalPark, category]
        housings.append(housing)
    return housings

def createVisitor():
    visitor = []
    visitors = []
    for i in range(0, 1000):
        primaryKey = str(i + 1)
        identification = "identification" + str(i)
        visitorName = "visitorName" + str(i)
        residency = "residency" + str(i)
        profesion = "profesion" + str(i)
        housing = str(randomNumber(1, 1000))
        visitor = [primaryKey, identification, visitorName, residency, profesion, housing]
        visitors.append(visitor)
    return visitors

def createArea():
    area = []
    areas = []
    for i in range(0,AREAS):
        primaryKey = str(i + 1)
        areaName = "area" + str(i)
        length = str(randomNumber(10,20))
        nationalPark = str(randomNumber(1,100))
        area = [primaryKey, areaName, length, nationalPark]
        areas.append(area)
    return areas

def createNationalPark():
    nationalPark = []
    nationalParks = []
    for i in range(0, NATIONAL_PARKS):
        primaryKey = str(i + 1)
        namePark = "NationalPark" + str(i)
        declarationTime = generateDate()
        area = str(randomNumber(100,200))
        nationalPark = [primaryKey, namePark, declarationTime, area]
        nationalParks.append(nationalPark)
    return nationalParks

def createFoodChain():
    chain = []
    chains = []
    for i in range(0, 3000):
        primaryKey = str(i + 1)
        predator =  str(i + 1)
        prey = str(randomNumber(1,3000))
        chain = [primaryKey, predator, prey]
        chains.append(chain)
    return chains

def createTours():
    tour = []
    tours = []
    for i in range(0, TOURS):
        primaryKey = str(i + 1)
        housing = str(randomNumber(1, 1000))
        tourType = str(randomNumber(1,2))
        organizationCost = str(randomNumber(100,250))
        tourDate = generateDate()
        tour = [primaryKey, housing, tourType, tourDate, organizationCost]
        tours.append(tour)
    return tours

def createOrganization():
    organization = []
    organizations = []
    for i in range(30):
        primaryKey = str(i + 1)
        name = "organization" + str(i + 1)
        organization = [primaryKey, name]
        organizations.append(organization)
    return organizations

def createCommunity():
    community = []
    communities = []
    for i in range(30):
        primaryKey = str(i + 1)
        organization = str(i+1)
        community = [primaryKey, organization]
        communities.append(community)
    return communities

def createPhone():
    phone = []
    phones = []
    for i in range(0, PHONE):
        primaryKey = str(i + 1)
        phoneNumber = str(randomNumber(10000,50000))
        typeNumber = str(randomNumber(1,2))
        phone = [primaryKey, phoneNumber, typeNumber]
        phones.append(phone)
    return phones

def createStaff():
    staff = []
    staffs = []
    for i in range(0, STAFF):
        primaryKey = str(i + 1)
        staffPosition = str(randomNumber(1,4))
        identification = "identification" + str(i)
        salary = str(randomNumber(25,45))
        staffName = "staffName" + str(i)
        direction = "direction" + str(i)
        phoneNumber = str(i+1)
        staff = [primaryKey, staffPosition, identification, staffName, direction, phoneNumber, salary]
        staffs.append(staff)
    return staffs

def createEntrance():
    entrance = []
    entrances = []
    for i in range(0, ENTRACE):
        primaryKey = str(i + 1)
        number = str(i+1)
        nationalPark = str(randomNumber(1,100))
        entrance = [primaryKey, number,nationalPark]
        entrances.append(entrance)
    return entrances

def createVehicle():
    vehicle = []
    vehicles = []
    for i in range(0, 100):
        primaryKey = str(i + 1)
        licensePlate = "license" + str(i)
        vehicleType = str(randomNumber(1,2))
        vehicle = [primaryKey, licensePlate, vehicleType]
        vehicles.append(vehicle)
    return vehicles

def createVisitorByTour():
    chain = []
    chains = []
    for i in range(0, VISITORS):
        primaryKey = str(i + 1)
        visitor = str(i + 1)
        tour = str(randomNumber(1,TOURS))
        chain = [primaryKey, visitor, tour]
        chains.append(chain)
    return chains

def createSpeciesByArea():
    chain = []
    chains = []
    for i in range(0, SPECIES):
        primaryKey = str(i + 1)
        specie = str(i + 1)
        area = str(randomNumber(1, AREAS))
        chain = [primaryKey, specie, area]
        chains.append(chain)
    return chains

def createManagement():
    management = []
    managements = []
    for i in range(0, 100):
        primaryKey = str(i + 1)
        staff = str(i + 1)
        entrance = str(randomNumber(1,ENTRACE))
        management = [primaryKey, staff, entrance]
        managements.append(management)
    return managements

def createVigilance():
    vigilance = []
    vigilances = []
    for i in range(0, 100):
        primaryKey = str(i + 1)
        staff = str(i + 1 + 100)
        area = str(randomNumber(1, AREAS))
        vehicle = str(i + 1)
        vigilance = [primaryKey, staff, area, vehicle]
        vigilances.append(vigilance)
    return vigilances

def createProject():
    project = []
    projects = []
    for i in range(0,100):
        primaryKey = str(i + 1)
        budget = str(randomNumber(10000,50000))
        startDate = generateDate()
        endDate = generateDate()
        project = [primaryKey, budget, startDate, endDate]
        projects.append(project)
    return projects

def createDegree():
    degree = []
    degrees = []
    for i in range(0, 100):
        primaryKey = str(i + 1)
        description = "description" + str(i)
        degree = [primaryKey, description]
        degrees.append(degree)
    return degrees

def createInvestigation():
    investigation = []
    investigations = []
    for i in range(0, 100):
        primaryKey = str(i + 1)
        staff = str(i + 1 + 200)
        project = str(i + 1)
        degree = str(i + 1)
        investigation = [primaryKey, staff, project, degree]
        investigations.append(investigation)
    return investigations

def createSpecialization():
    specialization = []
    specializations = []
    for i in range(0, 100):
        primaryKey = str(i + 1)
        specializationValue = "specializationValue" + str(i)
        specialization = [primaryKey, specializationValue]
        specializations.append(specialization)
    return specializations

def createConservation():
    conservation = []
    conservations = []
    for i in range(0, 100):
        primaryKey = str(i + 1)
        staff = str(i + 1 + 300)
        area = str(randomNumber(1, AREAS))
        specialization = str(i + 1)
        conservation = [primaryKey, staff, area, specialization]
        conservations.append(conservation)
    return conservations

print("Generado informacion...")
organization = createOrganization()
community = createCommunity()
phone = createPhone()
staff = createStaff()
entrance = createEntrance()
vehicle = createVehicle()
visitorTour = createVisitorByTour()
speciesArea = createSpeciesByArea()
management = createManagement()
vigilance = createVigilance()
project = createProject()
degree = createDegree()
investigation = createInvestigation()
specialization = createSpecialization()
conservations = createConservation()
tours = createTours()
foodChain = createFoodChain()
dataVegetal = createDataVegetal()
dataCrystal = createDataCrystal()
dataAnimal = createDataAnimal()
species = createSpecies()
visitors = createVisitor()
housings = createHousing()
areas = createArea()
nationalParks = createNationalPark()
files = [organization, community, phone, staff, entrance, vehicle, visitorTour, speciesArea, management, vigilance,
         project, degree, investigation, specialization, conservations, tours, foodChain,
         dataVegetal, dataCrystal, dataAnimal, species, visitors, housings, areas,
         nationalParks]

print("Comenzando a crear archivos...")
createFiles(files)
print("Archivos Creados")
