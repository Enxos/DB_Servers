# Plan

# autokolcsonzo by FCOMHO

postgresql - be irva elvileg alap tabla, colum, row is supported, but object base db.

objects?

tables:
 - autok - cars
 - kolcsonzok - users - 1diots
 - kolcsonzesek - rents - rentals?

 ++
 - locations - telephelyek?

maybe tables:
 - history table?
 - prices table?


table plans:

cars table
  - uniq ID
  - rendszam - current - string
  - old rendszamok - array / list? - in case there is a change
  - colour
  - type - manufacturer
  - model - konkret tipusmegnevezes
  - evjarat - manufacturing year
  - category - some kind of categorization for the car size and price structure for renting.


users table
 - ID
 - email
 - username?
 - password hashh
 - First name
 - Last name
 - contact phone Nr.
 - 

rents table
 - uniq ID - key
 - foreign key - Cars ID // not mandatory rentals can be stopped and continued later without selecting the car first.
 - foreign key - User ID //mandatory
 - start date
 - status //when it really began, where is the car.
 - planned end date
 - actual end date
 - pick up location
 - drop off location
