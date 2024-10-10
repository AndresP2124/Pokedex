create database Pokedex
go 
use Pokedex
go 



create table TipoPokemon (

	IdTipo int primary Key identity(1,1),
	NameTipo nvarchar(50)

)

create table Pokemon(

	PokemonId int primary key identity(1,1),
	PokeName nvarchar(100),
	PokeAltura nvarchar(50),
	PokePeso nvarchar(50),
	Habilidades nvarchar(50),
	HabilidadOculta nvarchar(50),
	PokeDescripcion nvarchar(200),
	IdTipo int,

	Foreign Key(IdTipo) references TipoPokemon(IdTipo)
);

insert into TipoPokemon(IdTipo, NameTipo) Values
(1, 'Planta'),
(2, 'Fuego'),
(3, 'Agua'),
(4, 'Electrico'),
(5, 'Bicho'),
(6, 'Acero'),
(7, 'Hada'),
(8, 'Dragon'),
(9, 'Volador'),
(10, 'Veneno'),
(11, 'Fantasma'),
(12, 'Normal'),
(13, 'Roca'),
(14, 'Tierra'),
(15, 'Psiquico'),
(16, 'Lucha'),
(17, 'Hielo'),
(18, 'Siniestro')

insert into Pokemon(PokemonId, PokeName, PokeAltura, PokePeso, Habilidades, HabilidadOculta, PokeDescripcion, IdTipo) values 
( );

