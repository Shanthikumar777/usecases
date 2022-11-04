create database use_case;
use use_case;

create table Birds(ID serial,BirdName varchar(50), TypeOfBird varchar(20), ScientificName varchar(50));

Insert into Birds(BirdName, TypeOfBird, ScientificName) values 
('Eurasian Collared-Dove','Dove','Streptopelia'),
('Bald Eagle','Haliaeetus','Leucocephalus'),(
'Coopers Hawk','Accipiter','Cooperii'),
('Bells Sparrow','Sparrow','Artemisiospiza Belli'),
('Mourning Dove','Dove','Zenaida Macroura'),
('Rock Pigeon','Dove','Columba Livia'),
('Aberts Towhee','Sparrow','Melozone Aberti'),
('Brewers Sparrow','Sparrow','Spizella Breweri'),
('Canyon Towhee','Sparrow','Melozone Fusca'),
('Black Vulture','Hawk','Coragyps Atratus'),
('Gila Woodpecker','Woodpecker','Melanerpes Uropygialis'),
('Gilded Flicker','Woodpecker','Colaptes Chrysoides'),
('Cassins Sparrow','Sparrow','Peucaea Cassinii'),
('American Kestrel','Hawk','Falco Sparverius'),
('Hairy Woodpecker','Woodpecker','Picoides villosus'),
('Lewis Woodpecker','Woodpecker','Melanerpes Lewis'),
('Snail Kite','Hawk','Rostrhamus Sociabilis'),
('White-tailed Hawk','Hawk','Geranoaetus Albicaudatus');

select * from Birds;