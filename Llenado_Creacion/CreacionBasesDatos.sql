Create database ceutec
use ceutec

								--MODULO CLIENTE 

Create table Profesion
(
ProfesionID int primary key,
codigo varchar(20),
nombre varchar(20)
);

Create table Persona
(
PersonaID int primary key,
codigo varchar(20),
nombre varchar(20),
sexo varchar(1),
civil varchar(1),
identidad varchar(20),
tipoidentidad varchar(1),
rtn varchar(20),
fechaNac datetime,
localidadID int foreign key references Localidad(localidadID),
direccion varchar(70),
nacionalidad int foreign key references Nacionalidad(NacionalidadID),
ProfesionID int foreign key references Profesion(ProfesionID),
email varchar(40),
tipo varchar(1),
vehiculo bit,
modelo varchar(20),
año int,
placa varchar(20),
tipocasa varchar(20)
);

Create table Referencia 
(
ReferenciaID int primary key,
PersonaID int foreign key references Persona(PersonaID),
nombre varchar(50),
observacion varchar(200),
tipo varchar(1),
direccion varchar(50),
correo varchar(50)
);

Create table Empresa
(
EmpresaID int primary key,
codigo varchar(20),
nombre varchar(20),
ActividadID int foreign key references Actividad(ActividadID),
ingreso datetime,
puesto varchar(50),
sueldo float, 
tipo varchar(50),
web varchar(50),
direccion varchar(50),
);

Create table Actividad
(
ActividadID int primary key,
codigo varchar(50),
nombre varchar(50),
);
use ceutec

Create table PersonaLabor
(
PersonalLaborID int primary key,
PersonaID int foreign key references Persona(PersonaID),
EmpresaID int foreign key references Empresa(EmpresaID)
);



								--MODULO VENTA
use ceutec
Create table Localidad
(
LocalidadID int primary key,
nombre varchar(50),
);

Create table Casa
(
CasaID int primary key,
codigo varchar(50),
nombre varchar(50),
);

Create table Nacionalidad
(
NacionalidadID int primary key,
codigo varchar(50),
nombre varchar(50),
);

Create table Moneda
(
MonedaID int primary key,
codigo varchar(50),
nombre varchar(50)
);

Create table BancoModuloVenta
(
BancoID int primary key,
codigo varchar(50),
nombre varchar(50)
);


Create table Lote 
(
LoteID int primary key,
BloqueID int foreign key references Bloque(BloqueID),
codigo varchar(50),
area float,
matricula varchar(50),
catrastral varchar(50)
);

Create table PersonaModuloVenta
(
PersonaID int primary key,
codigo varchar(50),
nombre varchar(50),
sexo varchar(1),
civil varchar(1),
identidad varchar(20),
tipoidentidad varchar(1),
rtn varchar(20),
fechaNac datetime,
localidadID int foreign key references Localidad(localidadID),
direccion varchar(70),
nacionalidad int foreign key references Nacionalidad(NacionalidadID),
ProfesionID int foreign key references Profesion(ProfesionID),
email varchar(40),
tipo varchar(1),
vehiculo bit,
modelo varchar(20),
año int,
placa varchar(20),
tipocasa varchar(20)
);

Create table Venta
(
VentaID int primary key,
codigo varchar(50),
tipo varchar(1),
LoteID int foreign key references Lote(LoteID),
ClienteID int foreign key references Persona(PersonaID),
SucesorID int foreign key references Referencia(ReferenciaID),
CasaID int foreign key references Casa(CasaID),
estado varchar(1),
BancoID int foreign key references BancoModuloVenta(BancoID),
reserva varchar(20),
MonedaID int foreign key references Moneda(MonedaID),
activo bit
);


Create table CuotaCab
(
CuotaCabID int primary key,
codigo varchar(20),
VentaID int foreign key references Venta(VentaID),
valor float,
interes float,
tiempo int,
tipo varchar(1),
estado varchar(1)
);

Create table CuotaDet
(
CuotaDetID int primary key,
CuotaCablID int foreign key references CuotaCab(CuotaCabID),
codigo varchar(20),
FechaProgreso datetime,
FechaVence datetime,
FechaPago datetime,
capital float,
interes float,
extra float,
mora float
);



							--MODULO INVENTARIO


Create table Usuario
(
UsuarioID int primary key,
codigo varchar(20),
nombre varchar(50)
);

create table BancoModuloInventario
(
BancoID int primary key,
codigo varchar(20),
nombre varchar(50)
);

Create table Cobranza
(
CobranzaID int primary key,
Urbanizacion int foreign key references UrbanizacionAcceso(UrbanizacionAccesoID),
BancoID int foreign key references BancoModuloInventario(BancoID)
);

Create table UrbanizacionAcceso
(
UrbanizacionAccesoID int primary key,
UsuarioID int foreign key references Usuario(UsuarioID)
);

Create table Urbanizacion
(
UrbanizacionID int primary key,
codigo varchar(20),
nombre varchar(20),
LocalidadID int foreign key references LocalidadInventario(LocalidadID),
fraccionamiento varchar(20),
tomo varchar(20),
costo float,
inicio datetime,
observacion varchar(20)
);

Create table LocalidadInventario
(
LocalidadID int primary key,
nombre varchar(50)
);

Create table LoteGasto
(
LoteGastoID int primary key,
documento varchar(20),
tipodocumento varchar(20),
valor float,
LoteID int foreign key references LoteInventario(LoteID),
archivo varchar(50)
);

Create table Bloque
(
BloqueID int primary key,
codigo varchar(20),
UrbanizacionID int foreign key references Urbanizacion(UrbanizacionID),
tipo varchar(1)
);

Create table Colinda
(
ColindaID int primary key,
LoteID int foreign key references LoteInventario(LoteID),
tipo varchar(1),
descripcion varchar(200),
);

Create table LoteInventario
(
LoteID int primary key,
BloueID int foreign key references Bloque(BloqueID),
codigo varchar(20),
area float,
matricula varchar(20),
catrastral varchar(20)
);



							--MODULO PAGO

create table WebRespuesta
(
WebRespuestaID int primary key,
codigo varchar(20),
nombre varchar(20)
);

Create table WebTransaccion
(
WebTransaccionesID int primary key,
fecha datetime,
codigo varchar(20),
sucursal varchar(20),
agencia varchar(20),
WebRespuestaID int foreign key references WebRespuesta(WebRespuestaID),
referencia varchar(20),
moneda varchar(20),
reversion varchar(20),
usuario varchar(20),
tasa float,
clave varchar(20),
banco varchar(20)
);


Create table VentaPago
(
VentaID int primary key,
codigo varchar(20),
tipo varchar(1),
LoteID int foreign key references Lote(LoteID),
Cliente int foreign key references Persona(PersonaID),
SucesorID int foreign key references Referencia(ReferenciaID),
CasaID int foreign key references Casa(CasaID),
estado varchar(1),
BancoID int foreign key references BancoModuloInventario(BancoID),
reserva varchar(20),
Moneda int foreign key references Moneda(MonedaID),
Activo bit
);

Create table PagoCab
(
PagoCabID int primary key,
VentaID int foreign key references VentaPago(VentaID),
WebTransaccionesID int foreign key references WebTransaccion(WebTransaccionesID),
fecha datetime,
estado varchar(1),
ReciboCabID int foreign key references ReciboCab(ReciboCabID)
);

Create table CuotaCabPago
(
CuotaCabID int primary key,
codigo varchar(20),
VentaID int foreign key references VentaPago(VentaID),
valor float,
interes float,
tiempo int,
tipo varchar(20),
estado varchar(20)
);

Create table PagoDet
(
PagoDetID int primary key,
PagoCabID int foreign key references PagoCab(PagoCabID),
CuotaDet int foreign key references CuotaDet(CuotaDetID),
tipo varchar(1),
valor float
);

Create table CuotaDetPago
(
CuotaDetID int primary key,
CuotaCabID int foreign key references CuotaCabPago(CuotaCabID),
codigo varchar(20),
FechaProceso datetime,
FechaVence datetime,
FechaPago datetime,
capital float,
interes float,
extra float,
mora float
);

Create table ReciboCab
(
ReciboCabID int primary key,
codigo varchar(20),
FechaMovimiento datetime,
FechaProceso datetime,
valor float,
estado varchar(1)
);

