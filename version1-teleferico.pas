program teleferico;
{$codepage UTF8}
uses crt;

var 

option: char;
optionn: char;
option1: char;

nombre: string;
cedula: string;

tramo: integer;
estacion: string;
est1: string;
est2: string;

cantbolg: integer;
cantboln: integer;
cantbolex: integer;
cantbolv: integer;

asidisp: integer;
bolven: integer;

pbolg:integer;
pbolk:integer;
pbolp:integer;
pbolex:integer;
mtotal:integer;

ventas:integer;
mf:integer;
mfg:integer;
mfk:integer;
mfp:integer;
tbolven:integer;

tbolg:integer;
tbolk:integer;
tbolp:integer;
tbole:integer;

numero: Integer;
codigoError: Integer;

BEGIN
est1:= 'Barinitas';

asidisp:= 60;
bolven:= 0;
cantbolg:=0;


tbolven:=0;
ventas:=0;

mf:=0;
mfg:=0;
mfk:=0;
mfp:=0;

tbolg:=0;
tbolk:=0;
tbolp:=0;
tbole:=0;

Repeat
	clrscr;
	writeln('');
	writeln('    +----------------------------------+');
	writeln('    |           ¡Bienvenido            |');
	writeln('    |     al Teleférico de Mérida!     |'); 
	writeln('    +----------------------------------+');
	writeln('    |-------- Opciones del menú -------|');
	writeln('    |----------------------------------|');
	writeln('    | Presione (1) para comprar boleto |');
	writeln('    | Presione (2) para ver sistema    |');
	writeln('    | Presione (3) para salir          |');
	writeln('    +----------------------------------+');
	writeln('');
	readln (option);
	clrscr;
	
			case (option) of
				'1': 
				begin 
				repeat
					writeln('');
					writeln('    +----------------------------------+');
					writeln('    |-- Ingrese su nombre y apellido --|');
					writeln('    +----------------------------------+');
					writeln('');
					readln (nombre);
					Val(nombre, numero, codigoError);
				clrscr;	
				until codigoError = 1;
				
				repeat
					writeln('');
					writeln('    +----------------------------------+');
					writeln('    |-------- Ingrese su cédula -------|');
					writeln('    +----------------------------------+');
					readln (cedula);
					Val(cedula, numero, codigoError);
				clrscr;
				until codigoError = 0;
				
			
				writeln('');	
				writeln('    +---------------------------------------------------+');
				writeln('    |------------ A continuación se mostrarán ----------|');
				writeln('    +---- las estaciones y tramos que puedes visitar ---|');
				writeln('    +---------------------------------------------------+');
				writeln('    |---- Estaciones ---|------------ Tramos -----------|');
				writeln('    |-------------------|-------------------------------|');	
				writeln('    |  1. Barinitas     | 1. Barinitas - La Montaña     |');
				writeln('    |  2. La Montaña    | 2. La Montana - La Aguada     |');
				writeln('    |  3. La Aguada     | 3. La Aguada - Loma Redonda   |');
				writeln('    |  4. Loma Redonda  | 4. Loma Redonda - Pico Espejo |');
				writeln('    |  5. Pico Espejo   |                               |');
				writeln('    +---------------------------------------------------+');
				writeln('    |  Usted se encuentra en Barinitas, puede viajar a  |');	
				writeln('    |  un tramo especifico o recorrer todos los tramos. |');	
				writeln('    |    Todos los boletos son de ida y vuelta y los    |');
				writeln('    |    niños menores de 12 deben ir con un adulto.    |');
				writeln('    +---------------------------------------------------+');
	            writeln('');
					
				repeat
					repeat 
						repeat
						writeln('    +---------------------------------------------------+');
						writeln('    |------ Indique la estación que desea visitar ------|');
						writeln('    +---------------------------------------------------+');
						readln (estacion);
						Val(estacion, numero, codigoError);
					
				//git me da dolor de cabeza
				
					
							case (estacion) of
								'1': begin
									writeln('              Usted se encuentra en Barinitas,');
									writeln('              por favor escoja otra estación.');
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
						until estacion <> '1'
					until tramo <> 0;
				until codigoError = 0;
					clrscr;
					
				
					
				writeln('    +--------------------------------------------------+');
				writeln('    |-------------- Boletos disponibles:',asidisp,' ------------|');
				writeln('    |--------------------------------------------------|');              
				writeln('    |                                                  |');
				writeln('    |      ¡Lea cuidadosamente nuestras tarifas!       |');
				writeln('    |                                                  |');
				writeln('    |   1.Boleto general(Adultos): ............. $20   |');	
				writeln('    |     Precio por tramo: ..................... $5   |');
				writeln('    |                                                  |');
				writeln('    |   2.Boleto Kids(3 a 12 años): ............ $12   |');
				writeln('    |     Precio por tramo: ..................... $3   |');
				writeln('    |                                                  |');
				writeln('    |   3.Boleto preferencial(60 años o más): .. $12   |');	
				writeln('    |     Precio por tramo: ..................... $3   |');
				writeln('    |                                                  |');
				writeln('    |--------------------------------------------------|');
				writeln('    |                                                  |');
				writeln('    |   4.Boleto exonerado(menores de 3 años): GRATIS  |');
				writeln('    |         Los niños menores de 3 años serán        |');	
				writeln('    |          exonerados el pago. Sin embargo         |');
				writeln('    |     ¡SOLO PUEDEN  VIAJAR HASTA LOMA REDONDA!     |');
				writeln('    |                                                  |');
				writeln('    +--------------------------------------------------+');
				writeln ('');
				writeln('              Presione (enter) para continuar      ');
				readln();
				clrscr;
				
				writeln('    +--------------------------------------------------+');
				writeln('    |--------------- Empecemos la compra --------------|');
				writeln('    +--------------------------------------------------+');	
				Writeln('');
				writeln('    +--------------------------------------------------+');
				writeln('    |---- Ingrese la cantidad de boletos generales ----|');
				writeln('    +--------------------------------------------------+');	
				readln(cantbolg);
				writeln('            +----------------------------------+');
				writeln('            |  ¿Usted está viajando con niños? |');
				writeln('            |----------------------------------|');
				writeln('            |---------- 1.Si --- 2.No ---------|');
				writeln('            +----------------------------------+');
				readln(optionn);
					
					case optionn of
					'1':
					begin
					writeln('    +--------------------------------------------------+');
					writeln('    |---- Ingrese la cantidad de boletos especiales ---|');
					writeln('    |------------ (niños menores de 3 años) -----------|');
					writeln('    +--------------------------------------------------+');
					readln (cantbolex);
						
					writeln('    +--------------------------------------------------+');
					writeln('    |------- Ingrese la cantidad de Boletos Kids ------|');
					writeln('    |-------------- (niños de 3 a 12 años) ------------|');
					writeln('    +--------------------------------------------------+');
					readln (cantboln);
						
					writeln('            +----------------------------------+');
					writeln('            |     ¿Usted está viajando con     |');
					writeln('            |   personas de la tercera edad?   |');
					writeln('            |----------------------------------|');
					writeln('            |---------- 1.Si --- 2.No ---------|');
					writeln('            +----------------------------------+');
					readln(option1);
						
						if option1='1' then
						begin
							writeln('    +--------------------------------------------------+');
							writeln('    |-- Ingrese la cantidad de boletos preferenciales -|');
							writeln('    +--------------------------------------------------+');	
							readln (cantbolv);
							writeln('             Presione (enter) para continuar...');
							readln ();
						end
						
					end;
					'2':
					begin
						writeln('            +----------------------------------+');
						writeln('            |     ¿Usted está viajando con     |');
						writeln('            |   personas de la tercera edad?   |');
						writeln('            |----------------------------------|');
						writeln('            |---------- 1.Si --- 2.No ---------|');
						writeln('            +----------------------------------+');
						readln(option1);
						
						if option1='1' then
						begin
							writeln('    +--------------------------------------------------+');
							writeln('    |-- Ingrese la cantidad de boletos preferenciales -|');
							writeln('    +--------------------------------------------------+');	
							readln (cantbolv);
							writeln('             Presione (enter) para continuar...');
							readln ();
						end;
					end;	
					end;
					clrscr;
					
				ventas:=ventas+1;	
				bolven:=cantboln+cantbolex+cantbolg+cantbolv;
				pbolg:=tramo*cantbolg*5;
				pbolk:=tramo*cantboln*3;
				pbolp:=tramo*cantbolv*3;
				pbolex:=tramo*cantbolex*0;
				mtotal:=pbolg+pbolk+pbolex+pbolp;	
					
					
				writeln('');
				writeln('  ----------------------------------');
				writeln('  ------------- Factura ------------');
				writeln('  ----------------------------------');
				writeln('  Nombre: ', nombre,'              ');
				writeln('  Cedula: ', cedula);
				writeln('  ----------------------------------');
				writeln('  Tramos recorridos: ',tramo);
				writeln('  Estacion de salida: ',est1);
				writeln('  Estacion de llegada: ',est2);
				writeln('  ----------------------------------');
				writeln('  Boletos generales: ',cantbolg,' ........ $',pbolg);
				writeln('  Boletos kids: ',cantboln,' ............. $',pbolk);
				writeln('  Boletos preferenciales: ',cantbolv,' ... $',pbolp);
				writeln('  Boletos exonerados: ',cantbolex,' ....... $',pbolex);
				writeln('  ----------------------------------');
				writeln('  Total de boletos: ............ ',bolven);
				writeln('  ----------------------------------');
				writeln('  Total a pagar: ............. $',mtotal);
				writeln('  ----------------------------------');
				writeln('');
				writeln('  Presione (enter) para continuar...');
				readln();	
			
			asidisp:=asidisp-bolven;
			tbolven:=tbolven+bolven;
			
			tbolg:=tbolg+cantbolg;
			tbolk:=tbolk+cantboln;
			tbolp:=tbolp+cantbolv;
			tbole:=tbole+cantbolex;
			
			mfg:=mfg+pbolg;
			mfk:=mfk+pbolk;
			mfp:=mfp+pbolp;
			mf:=mf+mtotal;
			
			end;
			
			
			'2':
			begin
			
			ClrScr;
			    writeln('');
				writeln('  ----------------------------------');
				writeln('  --------- Reporte del día --------');
				writeln('  ----------------------------------');
				writeln('  Ventas realizadas:',ventas);
				writeln('  Asientos disponibles:',asidisp);
				writeln('  Asientos ocupados: ',tbolven);
				writeln('  ----------------------------------');
				writeln('  -------- Boletos vendidos --------');
				writeln('  ----------------------------------');
				writeln('  Boletos generales: ',tbolg);
				writeln('  Boletos Kids: ',tbolk);
				writeln('  Boletos preferenciales: ',tbolp);
				writeln('  Boletos exonerados: ',tbole);
				writeln('  ----------------------------------');
				writeln('  Total de boletos vendidos:',tbolven);
				writeln('  ----------------------------------');
				writeln('  ------------- Montos -------------');
				writeln('  ----------------------------------');
				writeln('  Boletos generales: $',mfg);
				writeln('  Boletos Kids: $',mfk);
				writeln('  Boletos preferenciales: $',mfp);
				writeln('  ----------------------------------');
				writeln('  ----------------------------------');
				writeln('  Monto total: $',mf);
				writeln('  ----------------------------------');
				writeln('');
				writeln(' Presione (enter) para volver al menu');
				readln();
				ClrScr;
			end;
			
			
			'3':
			begin
			writeln ('Gracias por visitar el teleferico ,vuelva pronto');
			writeln('');
			writeln('Presione dos veces la tecla (enter) para salir...');
			readln();
			ClrScr;
			end;
			end;

			
cantbolg:=0;
cantboln:=0;
cantbolv:=0;
cantbolex:=0;
		
until option='3';

end.
