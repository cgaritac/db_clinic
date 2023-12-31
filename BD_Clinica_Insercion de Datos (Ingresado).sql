Use Clinica;
go
Insert into Dept (Dept_No, DNombre, Loc) Values (10, 'CONTABILIDAD','ELCHE')
Insert into Dept (Dept_No, DNombre, Loc) Values (20, 'INVESTIGACION','MADRID')
Insert into Dept (Dept_No, DNombre, Loc) Values (30, 'VENTAS','BARCELONA')
Insert into Dept (Dept_No, DNombre, Loc) Values (40, 'PRODUCCION','SALAMANCA')
GO
Insert into Emp (Emp_No, Apellido, Oficio, Dir, Fecha_Alt, Salario, Comision, Dept_No)
Values
(7369, 'SANCHEZ', 'EMPLEADO', 7902, '12/17/1980', 10400, 0, 20),
(7499, 'ARROYO', 'VENDEDOR', 7698, '02/22/1981', 208000, 39000, 30),
(7521, 'SALA', 'VENDEDOR', 689, '02/22/1981', 162500, 65000, 30),
(7566, 'JIMENEZ', 'DIRECTOR', 7839, '04/02/1981', 386750, 0, 20),
(7654, 'MARTIN', 'VENDEDOR', 7698, '09/28/1981', 182000, 182000, 30),
(7698, 'NEGRO', 'DIRECTOR', 7839, '05/01/1981', 370500, 0, 30),
(7782, 'CEREZO', 'DIRECTOR', 7839, '06/09/1981', 318500, 0, 10),
(7788, 'NINO', 'ANALISTA', 7566, '03/30/1987', 390000, 0, 20),
(7839, 'REY', 'PRESIDENTE', 0, '11/17/1981', 650000, 0, 10),
(7844, 'TOVAR', 'VENDEDOR', 7698, '09/08/1981', 195000, 0, 30),
(7876, 'ALONSO', 'EMPLEADO', 7788, '05/03/1987', 143000, 0, 20),
(7900, 'JIMENO', 'EMPLEADO', 7698, '12/03/1981', 123500, 0, 30),
(7902, 'FERNANDEZ', 'ANALISTA', 7566, '12/03/1981', 390000, 0, 20),
(7934, 'MUÑOZ', 'EMPLEADO', 7782, '06/23/1982', 169000, 0, 10),
(7119, 'SERRA', 'DIRECTOR', 7839, '11/19/1983', 225000, 39000, 20),
(7322, 'GARCIA', 'EMPLEADO', 7119, '10/12/1982', 129000, 0, 20)
Go
Insert into Clinica (Clinica_Cod, Nombre, Direccion, Telefono, Num_Cama) Values (19, 'Provincial', 'O Donell 50', '964-4256', 502)
Insert into Clinica (Clinica_Cod, Nombre, Direccion, Telefono, Num_Cama) Values (18, 'General', 'Atocha s/n', '595-3111', 987)
Insert into Clinica (Clinica_Cod, Nombre, Direccion, Telefono, Num_Cama) Values (22, 'La Paz', 'Castellana 1000', '923-5411', 412)
Insert into Clinica (Clinica_Cod, Nombre, Direccion, Telefono, Num_Cama) Values (45, 'San Carlos', 'Ciudad Universitaria', '527-1500', 845)
Go
Insert into Doctor (Clinica_Cod, Doctor_No, Apellido, Especialidad) Values (22, 386, 'Cabeza D.', 'Psiquiatría')
Insert into Doctor (Clinica_Cod, Doctor_No, Apellido, Especialidad) Values (22, 398, 'Best D.', 'Urología')
Insert into Doctor (Clinica_Cod, Doctor_No, Apellido, Especialidad) Values (19, 435, 'López A.', 'Cardiología')
Insert into Doctor (Clinica_Cod, Doctor_No, Apellido, Especialidad) Values (22, 453, 'Galo D.', 'Pediatría')
Insert into Doctor (Clinica_Cod, Doctor_No, Apellido, Especialidad) Values (45, 522, 'Adams C.', 'Neurología')
Insert into Doctor (Clinica_Cod, Doctor_No, Apellido, Especialidad) Values (18, 585, 'Miller G.', 'Ginecología')
Insert into Doctor (Clinica_Cod, Doctor_No, Apellido, Especialidad) Values (45, 607, 'Chuki P.', 'Pediatría')
Insert into Doctor (Clinica_Cod, Doctor_No, Apellido, Especialidad) Values (18, 982, 'Cajal R.', 'Cardiología')
Go
Insert into Sala Values (1, 22, 'Recuperación', 10)
Insert into Sala Values (1, 45, 'Recuperación', 15)
Insert into Sala Values (2, 22, 'Maternidad', 34)
Insert into Sala Values (2, 45, 'Maternidad', 24)
Insert into Sala Values (3, 19, 'Cuidados Intensivos', 21)
Insert into Sala Values (3, 18, 'Cuidados Intensivos', 10)
Insert into Sala Values (4, 18, 'Cardiología', 53)
Insert into Sala Values (4, 45, 'Cardiología', 55)
Insert into Sala Values (6, 19, 'Psiquiátricos', 67)
Insert into Sala Values (6, 22, 'Psiquiátricos', 118)
Go
Insert into Plantilla (Clinica_Cod, Sala_Cod, Empleado_No, Apellido, Funcion, T, Salario)
Values
(22, 6, 1009, 'Higueras D.', 'Enfermera', 'T', 200500),
(45, 4, 1280, 'Amigo R.', 'Interino', 'N', 221000),
(19, 6, 3106, 'Hernández', 'Enfermero', 'T', 275000),
(19, 6, 3754, 'Díaz B..', 'Enfermera', 'T', 226200),
(22, 1, 6065, 'Rivera G.', 'Enfermera', 'N', 162600),
(18, 4, 6357, 'Karplus W.', 'Interino', 'T', 337900),
(22, 1, 7379, 'Carlos R.', 'Enfermera', 'T', 211900),
(22, 6, 8422, 'Bocina G.', 'Enfermero', 'M', 183800),
(45, 1, 8526, 'Frank H.', 'Enfermera', 'T', 252200),
(22, 2, 9901, 'Núñez C.', 'Interino', 'M', 221000)

Insert into Enfermo (Inscripcion, Apellido, Direccion, Fecha_Nac, S, NSS)
Values
(10995, 'Laguía M.', 'Goya 20', '16-may-56', 'M', 280862422),
(14024, 'Fernández M.', 'Recoletos 50', '21-may-60', 'F', 284991452),
(18004, 'Serrano V.', 'Alcalá 12', '23-jun-67', 'F', 321790059),
(36658, 'Domin S.', 'Mayor 71', '01-ene-42', 'M', 160654471),
(38702, 'Neal R.', 'Orense 11', '18-jun-40', 'F', 380010217),
(39217, 'Cervantes M.', 'Perón 38', '29-feb-52', 'M', 440294390),
(59076, 'Miller B.', 'López de Hoyos 2', '16-sep-45', 'F', 311969044),
(63827, 'Ruiz P.', 'Ezquerdo 103', '26-dic-80', 'M', 100973253),
(64823, 'Fraiser A.', 'Soto 3', '10-jul-80', 'F', 285201776),
(74835, 'Benítez E.', 'Argentina', '05-oct-57', 'M', 154811767)

