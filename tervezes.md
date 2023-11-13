# Plan

F:\School\GDF\db_servers_2023_2

Beadandó feladat:
- adatbázis tervezés (indexek stb)
- SQL insertek megírása
- lekérdezések megírása
- triggerek megírása
- tárolt eljárások megírása
- adatbázis teljesítmény analízis

Github repo példákkal:
- https://github.com/bogaarongde/gde_adabazis

PostgreSQL - most trusted name in open source relational db's.. ?:O
started in 1986

tables, columns n rows... but actually object based db with custom data types for objects.

query's to be put in stored procedures.

local db or free cloud solution with NEON?!

TODO: add "megye"?

## autokolcsonzo by FCOMHO

postgresql - be irva elvileg alap tabla, colum, row is supported, but object base db.

objects?

### tables:
 - autok - cars
 - kolcsonzok - users - 1diots -> Felhasznalok
 - kolcsonzesek - rents - rentals?

 ++
 - locations - telephelyek?

#### maybe tables:
 - history table?
 - prices table?


### Table plans:

#### Autok table
  - uniq ID
  - rendszam - current - string
  - old rendszamok - array / list? - in case there is a change
  - colour
  - type - manufacturer
  - model - konkret tipusmegnevezes
  - evjarat - manufacturing year
  - category ID - foreign key - some kind of categorization for the car size and price structure for renting.
  - status field - a mai nappon epp hol van ileltve milyen allapotban van az auto, daily refresh a kolcsonzesekbol, ha ott nem szerepel a kocsi akkor location alapjan "available" ??? 

#### Felhasznalok table
 - ID
 - email
 - username?
 - password hashh
 - First name
 - Last name
 - contact phone Nr.
 - 


#### kolcsonzesek table
 - uniq ID - key
 - foreign key - Cars ID // not mandatory rentals can be stopped and continued later without selecting the car first.
 - foreign key - User ID //mandatory
 - start date
 - status //when it really began, where is the car.
 - planned end date
 - actual end date
 - pick up location
 - drop off location

#### helyszinek table
 - uniq ID - key - helyszin_ID
 - leado hely?
 - Felvevo hely?
 - Auto kapacitas
 - jelenlegi autok szama
 - Hogy oldom meg idoben, hogy nezze mikor hol van keszlet / hely autot leadni/felvenni?


#### KategoriaArak table:w

 - uniq ID - key - category ID
 - Category name -> kategoria_nev
 - Category Price -> kategoria_ar
 - 
 - In the feature, usage based automatic price adjusting.
 - In the feature, date based changable manual price fluctuation variable.

### lekerdezes tervek:
 - autokat hanyszor bereltek?
 - autokat hanyszor bereltek tobb mint 5 napra?
 - ----------||-----------   1 napra?
 - ----------||-----------   2 napra?
 - Melyik felhasznalo es hanyszor hozta vissza kesve az autot?
 - Melyik felhasznalo es hanyszor nem jott el ki kert kocsiert?
 - Melyik felhasznalo hanyszor berelt? History check?
 - Melyik felhasznalo melyik autokat berelte? Es mikor? History check.
 - Melyik auto kategoria van teljesen befoglalva es nincs szabad adott idore? Mutassa mikor mik nem elerhetoek.
 - Mennyi a kihasznaltsaga az autoknak eddig, - a jovoben tervezve? % usage
