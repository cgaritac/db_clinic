
Use MASTER
Go
Create Database Clinica
on Primary 
(Name = EjemploData,
Filename = 'C:\Users\Toshiba\OneDrive\Documentos\Estudios\Carreras\UNED\Técnico en Computación e Informática\Fundamentos de Bases de Datos\Módulo 4\Prueba Corta 4\Clinica.mdf',
Size = 5MB, Maxsize = 10MB,
Filegrowth = 20%)
Log on
(Name = EjemploLog,
Filename = 'C:\Users\Toshiba\OneDrive\Documentos\Estudios\Carreras\UNED\Técnico en Computación e Informática\Fundamentos de Bases de Datos\Módulo 4\Prueba Corta 4\Clinica.ldf',
Size = 3 MB, Maxsize = 5 MB,
FileGrowth = 1 MB)
Go
Use Clinica
Go

Create Table Dept
(
	Dept_No		Int		Not Null,
	DNombre		Varchar(50)	Null,
	Loc		Varchar(50)	Null,
	Constraint PK_Dept Primary Key(Dept_No)
)

Go

Create Table Emp
(
	Emp_No		Int		Not Null,
	Apellido	Varchar(50)	Null,
	Oficio		Varchar(50)	Null,
	Dir		Int		Null,
	Fecha_Alt	Smalldatetime	Null,
	Salario		Numeric(9,2)	Null,
	Comision	Numeric(9,2)	Null,
	Dept_No		Int		Null,
	Constraint PK_Emp Primary Key(Emp_No),
	Constraint FK_Emp_Dept Foreign key (Dept_No) References Dept(Dept_No)
)

Go

Create Table Clinica
(
	Clinica_Cod	Int		Not Null,
	Nombre		Varchar(50)	Null,
	Direccion	Varchar(50)	Null,
	Telefono	Varchar(50)	Null,
	Num_Cama	Int		Null,
	Constraint PK_Clinica Primary Key(Clinica_Cod)
)

Go

Create Table Doctor
(
	Doctor_No	Int		Not Null,
	Clinica_Cod	Int		Not Null,
	Apellido	Varchar(50)	Null,
	Especialidad	Varchar(50)	Null,
	Constraint PK_Doctor Primary Key(Doctor_No),
	Constraint FK_Doctor_Clinica Foreign key (Clinica_Cod) References Clinica(Clinica_Cod)
)

Go

Create Table Sala
(
	Sala_Cod	Int		Not Null,
	Clinica_Cod	Int		Not Null,
	Nombre		Varchar(50)	Null,
	Num_Cama	Int		Null,
	Constraint PK_Sala Primary Key(Sala_Cod,Clinica_Cod),
	Constraint FK_Sala_Clinica Foreign key (Clinica_Cod) References Clinica(Clinica_Cod)
)

Go

Create Table Plantilla
(
	Empleado_No	Int		Not Null,
	Sala_Cod	Int		Not Null,
	Clinica_Cod	Int		Not Null,
	Apellido	Varchar(50)	Null,
	Funcion		Varchar(50)	Null,
	T 		Varchar(15)	Null,
	Salario		Numeric(9,2)	Null,
	Constraint PK_Plantilla Primary Key(Empleado_No),
	Constraint FK_Plantilla_Sala Foreign key (Sala_Cod,Clinica_Cod) References Sala(Sala_Cod,Clinica_Cod)
)

Go

Create Table Enfermo
(
	Inscripcion	Int		Not Null,
	Apellido	Varchar(50)	Null,
	Direccion	Varchar(50)	Null,
	Fecha_Nac	Varchar(50)	Null,
	S		Varchar(50)	Null,
	NSS 		Int		Null,
)


