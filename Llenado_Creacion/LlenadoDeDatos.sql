use ceutec

insert into Profesion values(1,'001','catedratico');    --ya
insert into Profesion values(2,'002,','ingeniero');
insert into Profesion values(3,'003','licenciado');
insert into Profesion values(4,'004','catedratico');
insert into Profesion values(5,'005','catedratico');

insert into Persona values(1,'001','Melvin','M','S','1604-2002-00454','p','1604-2002-004541','2002/03/01',1,'azacualpa',1,1,'melvin@gmail.com','a',1,'pickup',2020,'MG1524','apartamento');
insert into Persona values(2,'002','MIlton','M','S','1604-2001-00855','p','1604-2002-008551','2001/04/01',2,'azacualpa',1,1,'milton@gmail.com','a',1,'corolla',2010,'Kmj154','apartamento');
insert into Persona values(3,'003','Rigoberto','M','S','1604-2001-00145','p','1604-2002-001451','2001/01/01',3,'azacualpa',1,1,'rigo@gmail.com','a',1,'pickup',2015,'JUN54','apartamento');

insert into Referencia values(1,1,'Kevin','esta todo bien','r','azacualpa S.B','kevin@gmail.com');
insert into Referencia values(2,2,'Estela','esta todo bien','r','macuelizo S.B','estela@gmail.com');
insert into Referencia values(3,3,'Maynor','esta todo bien','r','azacualpa S.B','may@gmail.com');

insert into Empresa values(1,'001','Casagri',1,'2023/01/04','gerente',15000,'p','casagri.com','azacualpa');
insert into Empresa values(2,'001','Inversiones A',2,'2023/02/02','gerente',20000,'p','invers.com','azacualpa');
insert into Empresa values(3,'003','Cibertec',3,'2023/01/08','gerente',11000,'p','tec.com','azacualpa');

insert into Actividad values(1,'001','visitas');     --ya
insert into Actividad values(2,'002','visitas');
insert into Actividad values(3,'003','visitas');

insert into PersonaLabor values(1,1,1);
insert into PersonaLabor values(2,2,2);
insert into PersonaLabor values(3,3,3);	--ya

insert into Localidad values(1,'El Centro');   --ya
insert into Localidad values(2,'Acasias');
insert into Localidad values(3,'Acasias');

insert into Casa values(1,'001','Casa Roja');   --ya
insert into Casa values(2,'002','Casa Cabañas');
insert into Casa values(3,'003','Casa 1604');

insert into Nacionalidad values(1,'001','Honduras');    --ya
insert into Nacionalidad values(2,'002','Guatemala');
insert into Nacionalidad values(3,'003','USA');

insert into Moneda values(1,'001','lps');     --ya
insert into Moneda values(2,'002','quetzal');
insert into Moneda values(3,'003','dolar');

insert into BancoModuloInventario values(1,'001','Atlantida');
insert into BancoModuloInventario values(2,'002','banpais');
insert into BancoModuloInventario values(3,'003','Atlantida');    --ya

insert into Lote values(1,1,'001',16,'0101102','area maxima 65');
insert into Lote values(2,2,'001',25,'0202202','area maxima 50');
insert into Lote values(3,3,'003',24,'0040140','area maxima 50');


insert into PersonaModuloVenta values (1,'001','Mauricio','M','S','1604-1994-00454','p','1604-1994-004541','1994/03/01',1,'SPS',1,1,'mauric@gmail.com','a',1,'pickup',2019,'MG1524','residencial');
insert into PersonaModuloVenta values (2,'002','Marvin','M','S','1604-1997-00848','p','1604-1997-004541','1997/03/01',1,'macuelizo',1,1,'vin@gmail.com','a',1,'pickup',2009,'KJJ1512','residencial');
insert into PersonaModuloVenta values (3,'003','Cristian','M','S','1604-2002-11510','p','1604-2002-004541','2002/03/01',1,'azacualpa',1,1,'cris@gmail.com','a',1,'pickup',2023,'LK2054','residencial');

insert into venta values(1,'001','C',1,1,1,1,'b',1,1,1,1);
insert into venta values(2,'002','C',2,3,3,3,'b',2,1,3,1); --yq
insert into venta values(3,'003','C',3,2,2,2,'b',1,1,3,1);

insert into CuotaCab values(1,'001',1,5000,15,5,'m','b');
insert into CuotaCab values(2,'002',2,4500,15,4,'m','b');  --yq
insert into CuotaCab values(3,'003',3,6200,15,10,'m','b');

insert into CuotaDet values(1,1,'001','2023/01/01','2023/05/01','2023/05/01',2000,15,200,15);
insert into CuotaDet values(2,2,'002','2023/02/01','2023/05/01','2023/05/01',1500,15,100,15);
insert into CuotaDet values(3,3,'003','2023/03/01','2023/05/01','2023/05/01',2500,15,100,15);
 
insert into Usuario values(1,'001','Marvin');    --ya
insert into Usuario values(2,'002','Maria');
insert into Usuario values(3,'003','Jose');

insert into BancoModuloVenta values(1,'001','Banpais');    --ya
insert into BancoModuloVenta values(2,'002','Banrural');
insert into BancoModuloVenta values(3,'003','Atlantida');

insert into Cobranza values(1,1,1);
insert into Cobranza values(2,2,2);
insert into Cobranza values(3,3,3);

insert into UrbanizacionAcceso values(1,1);    --ya
insert into UrbanizacionAcceso values(2,2);
insert into UrbanizacionAcceso values(3,3);

insert into Urbanizacion values(1,'001','CasaHogar',1,'Urbano','Creciente',2000000,'2021/05/10','Al 100');


insert into LocalidadInventario values(1,'Azacualpa');    --ya

insert into LoteGasto values(1,'independiente','independiente',5000,1,'lotes');  --ya

insert into Bloque values(1,'001',1,'m');   ---ya
insert into Bloque values(2,'002',1,'m');   ---ya
insert into Bloque values(3,'003',1,'m');   ---ya

insert into Colinda values(1,1,'a','Aislada');   --ya
  
insert into LoteInventario values(1,1,'001',105,'LT201','Propiedad Milton');  --ya

insert into WebRespuesta values(1,'001','casahogar.com');   --ya

insert into WebTransaccion values(1,'2023/01/01','001','Sucursal en Linea','Banpais',1,'20001','Lps','No aplica','Marvin',2000,'1234','Banpais');

insert into VentaPago values (1,'001','c',1,1,1,1,'b',1,'contrato',1,1);--ya

insert into PagoCab values(1,1,1,'2023/06/01','b',1);--ya

insert into CuotaCabPago values(1,'001',1,500,15,2,'c','actualizado');

insert into PagoDet values (1,1,1,'c',500);

insert into CuotaDetPago values(1,1,'201','2023/05/01','2023/08/01','2023/08/01',1500,15,200,15);

select * from PagoDet

insert into ReciboCab values (1,'001','2023/09/01','2023/10/01',1500,'a');  ---ya
