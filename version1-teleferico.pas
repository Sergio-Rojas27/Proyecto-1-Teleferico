program teleferico;
{$codepage UTF8}
uses crt;
const 
preciog= 20;
precion= 12;
precioe=0;


var 
//listo
option: char;
//
optionn: char;
option1: char;
si: char;

//listo
nombre: string;
cedula: string;

tramo: integer;
//listo
estacion: char;
est1: string;
//listo
est2: string;

cantbolg: integer;
cantboln: integer;
cantbolex: integer;
cantbolv: integer;

asidisp: integer;
bolven: integer;
//Variables para el reporte
ventas: integer;
pgeneral:integer;
tbolven, tbolg, tboln, tbolv, tbole:integer;
montot, tbol:integer;


pbolg:integer;
pbolk:integer;
pbolp:integer;
pbolex:integer;
mtotal:integer;

BEGIN
asidisp:= 60;
bolven:= 0;
pgeneral:=0;
ventas:=0;
cantbolg:=0;
tbolven:=0;
tbolg:=0;
tboln:=0;
tbolv:=0;
tbole:=0;
Montot:=0;


est1:= 'Barinitas';


Repeat
	writeln('');
	writeln('¡Bienvenido al Teleférico de Mérida!');
	writeln('');
	writeln('|----------------------------------|');
	writeln('|-------- Opciones del menú -------|');
	writeln('|----------------------------------|');
	writeln('| 1. Comprar boleto                |');
	writeln('| 2. Ver sistema del teleférico    |');
	writeln('| 3. Salir                         |');
	writeln('|----------------------------------|');
	writeln('');
	writeln('    Por favor, ingrese un número    ');
	readln (option);
	clrscr;
	
			case (option) of
				'1': 
				begin 
				writeln('');
				writeln('|----------------------------------|');
				writeln('|-- Ingrese su nombre y apellido --|');
				writeln('|----------------------------------|');
				readln (nombre);
				writeln('');
				writeln('|----------------------------------|');
				writeln('|-------- Ingrese su cédula -------|');
				writeln('|----------------------------------|');
				readln (cedula);
				clrscr;
				
				writeln('');	
				writeln('  A continuación se mostrarán las estaciones y tramos que puedes visitar');	
				writeln('');
				writeln('    |----------------------------|   |-------------------------------|');
				writeln('    |--------  Estaciones -------|   |------------ Tramos -----------|');
				writeln('    |----------------------------|   |-------------------------------|');	
				writeln('    | 1. Barinitas               |   | 1. Barinitas - La Montana     |');
				writeln('    | 2. La Montana              |   | 2. La Montana - La Aguada     |');
				writeln('    | 3. La Aguada               |   | 3. La Aguada - Loma Redonda   |');
				writeln('    | 4. Loma Redonda            |   | 4. Loma Redonda - Pico Espejo |');
				writeln('    | 5. Pico Espejo             |   |-------------------------------|');
				writeln('    |----------------------------|');
				writeln('');
				writeln('   Usted se encuentra en barinitas, puede viajar a un tramo especifico  ');	
				writeln('   o recorrer los cuatro tramos. Todos los boletos son de ida y vuelta  ');	
				writeln('   y los niños menores de 12 deben ir acompañados de un adulto. ');
	            writeln('');
					
				repeat 
				writeln('          |--------------------------------------------------|');
				writeln('          |------ Indique la estación que desea visitar -----|');
				writeln('          |--------------------------------------------------|');
				readln (estacion);
				
					
					case (estacion) of
						'1': begin
							writeln('     Usted se encuentra en Barinitas, por favor escoja otra estacion');
						end;
						'2': begin
							tramo:= 1;
							est2:='La Montana';
						end;
						'3': begin
							tramo:= 2;
							est2:='La Aguada';
						end;
						'4': begin
							tramo:= 3;
							est2:='Loma redonda';
						end;
						'5': begin
							tramo:= 4;
							est2:='Pico Espejo';
						end;
						end;
						writeln('');
				until estacion<>'1';
					clrscr;
					
					
				writeln('  |--------------------------------------------------|');
				writeln('  |-------------- Boletos disponibles:',asidisp-bolven,' ------------|');
				writeln('  |--------------------------------------------------|');              
				writeln('  |                                                  |');
				writeln('  |      ¡Lea cuidadosamente nuestras tarifas!       |');
				writeln('  |                                                  |');
				writeln('  |   1.Boleto general(Adultos): ............. $20   |');	
				writeln('  |     Precio por tramo: ..................... $5   |');
				writeln('  |                                                  |');
				writeln('  |   2.Boleto Kids(3 a 12 años): ............ $12   |');
				writeln('  |     Precio por tramo: ..................... $3   |');
				writeln('  |                                                  |');
				writeln('  |   3.Boleto preferencial(60 años o más): .. $13   |');	
				writeln('  |     Precio por tramo: ..................... $3   |');
				writeln('  |                                                  |');
				writeln('  |--------------------------------------------------|');
				writeln('  |                                                  |');
				writeln('  |   4.Boleto especial (menores de 3 años): GRATIS  |');
				writeln('  |         Los niños menores de 3 años serán        |');	
				writeln('  |          exonerados el pago. Sin embargo         |');
				writeln('  |     ¡SOLO PUEDEN  VIAJAR HASTA LOMA REDONDA!     |');
				writeln('  |                                                  |');
				writeln('  |--------------------------------------------------|');
				writeln ('');
				writeln('        Presione la tecla (enter) para continuar      ');
				readln();
				clrscr;
				
				writeln('    |--------------------------------------------------|');
				writeln('    |--------------- Empecemos la compra --------------|');
				writeln('    |--------------------------------------------------|');	
				Writeln('');
				writeln('          Ingrese la cantidad de boletos generales'      );
				readln(cantbolg);
				writeln('            |----------------------------------|');
				writeln('            |  ¿Usted está viajando con niños? |');
				writeln('            |----------------------------------|');
				writeln('            |---------- 1.Si --- 2.No ---------|');
				writeln('            |----------------------------------|');
				readln(optionn);
					
					case optionn of
					'1':
					begin
						Writeln('          Ingrese la cantidad de boletos especiales'     );
						writeln('                  (niños menores de 3 años)'      );
						readln (cantbolex);
						
						Writeln('      Ingrese la cantidad de Boletos Kids (3 a 12 años)' );
						writeln('                    (niños de 3 a 12 años)'      );
						readln (cantboln);
						
						writeln('            |----------------------------------|');
						writeln('            |     ¿Usted está viajando con     |');
						writeln('            |   personas de la tercera edad?   |');
						writeln('            |----------------------------------|');
						writeln('            |---------- 1.Si --- 2.No ---------|');
						writeln('            |----------------------------------|');
						readln(option1);
						
						if option1='1' then
						begin
							Writeln('        Ingrese la cantidad de boletos preferenciales');
							readln (cantbolv);
						end
						else
							writeln('Sus boletos estan siendo procesados, presione la tecla (enter) para continuar ');
							readln();
					end;
					'2':
					begin
						writeln('            |----------------------------------|');
						writeln('            |     ¿Usted está viajando con     |');
						writeln('            |   personas de la tercera edad?   |');
						writeln('            |----------------------------------|');
						writeln('            |---------- 1.Si --- 2.No ---------|');
						writeln('            |----------------------------------|');
						readln(option1);
						if option1='1' then
						begin
							Writeln('        Ingrese la cantidad de boletos preferenciales');
							readln (cantbolv);
							writeln('Presione la tecla (enter) para continuar...');
							readln ();
						end
						else
							writeln('Sus boletos estan siendo procesados, presionela tecla (enter) para continuar ');
							readln();
					end;
					end;
					clrscr;
					
				bolven:=cantboln+cantbolex+cantbolg+cantbolv;
				pbolg:=tramo*cantbolg*5;
				pbolk:=tramo*cantboln*3;
				pbolp:=tramo*cantbolv*3;
				pbolex:=tramo*cantbolex*0;
				mtotal:=pbolg+pbolk+pbolex+pbolp;	
					
					
					
				writeln('');
				writeln(' ----------------------------------');
				writeln(' ------------- Factura ------------');
				writeln(' ----------------------------------');
				writeln('  Nombre: ', nombre,'              ');
				writeln('  Cedula: ', cedula);
				writeln('  ---------------------------------');
				writeln('  Tramos recorridos: ',tramo);
				writeln('  Estacion de salida: ',est1);
				writeln('  Estacion de llegada: ',est2);
				writeln('  ---------------------------------');
				writeln('  Boletos generales:',cantbolg,'---- $',pbolg);
				writeln('  Boletos kids: ',cantboln,'---- $',pbolk);
				writeln('  Boletos preferenciales: ',cantbolv,'----$',pbolp);
				writeln('  Boletos exonerados: ',cantbolex,'----$',pbolex);
				writeln('  ---------------------------------');
				writeln('  Total de boletos: ',bolven);
				writeln('  ---------------------------------');
				writeln('  Total a pagar: -------------$',mtotal);
				writeln('  ---------------------------------');
				writeln('');
				writeln('Presione la tecla (enter) para continuar...');
				readln();	
					
			end;
			'2':
			begin
			
			writeln('');
			writeln('-----Reporte del dia-----');
			writeln('Ventas realizadas: ',ventas+1);
			writeln('Asientos disponibles para el proximo viaje: ',asidisp-bolven);
			writeln('------------------');
			writeln('Boletos generales vendidos:',tbol+cantbolg);
			writeln('Boletos para ninos vendidos: ',tbol+cantboln);
			writeln('Boletos exonerados: ',tbole+cantbolex);
			writeln('Boletos vendidos: ',tbolven+bolven); 
			writeln('------------------');
			writeln('Monto total de las ventas de boletos generales. '' Boletos(20$): $.');
			writeln('Monto total de las ventas de boletos especiales. '' Boletos(12$): $.');
			writeln('Monto total de las ventas: $.',montot+precion*cantboln+precioe*cantbolex+preciog*cantbolg+precion*cantbolv);
			writeln('------------------');
			writeln('');
			writeln('Presione la tecla (enter) para continuar...');
			readln();
			ClrScr;
			end;
			
			
			'3':
			begin
			writeln ('Gracias por visitarnos,vuelva pronto');
			writeln('');
			writeln('Presione la tecla (enter) para continuar...');
			readln();
			ClrScr;
			end;
			end;
		
until option='3';
end.
