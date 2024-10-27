program teleferico;
{$codepage UTF8}
uses crt, SysUtils;

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

cantbolg1, cantbolex1, cantboln1, cantbolv1: string; // esto y el sysutils para el resto de las validaciones


asidisp: integer;
bolven: integer;

pbolg:integer;
pbolk:integer;
pbolp:integer;
pbolex:integer;
mtotal:integer;

numero: Integer;
codigoError: Integer;

BEGIN
asidisp:= 60;
bolven:= 0;
cantbolg:=0;
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
				repeat
				writeln('');
				writeln('|----------------------------------|');
				writeln('|-- Ingrese su nombre y apellido --|');
				writeln('|----------------------------------|');
				readln (nombre);
				Val(nombre, numero, codigoError);
				clrscr;
				until codigoError = 1;
				repeat
				writeln('');
				writeln('|----------------------------------|');
				writeln('|-------- Ingrese su cédula -------|');
				writeln('|----------------------------------|');
				readln (cedula);
				Val(cedula, numero, codigoError);
				clrscr;
				until codigoError = 0;
				
				
				
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
					
				repeat // Para que la opcion ingresada sea valida
						writeln('          |--------------------------------------------------|');
						writeln('          |------ Indique la estación que desea visitar -----|');
						writeln('          |--------------------------------------------------|');
						readln (estacion);
					
					case (estacion) of
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
					clrscr;	
				until tramo <> 0;
				
				
					
					
					
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
				writeln('  |   4.Boleto exonerado(menores de 3 años): GRATIS  |');
				writeln('  |         Los niños menores de 3 años serán        |');	
				writeln('  |          exonerados el pago. Sin embargo         |');
				writeln('  |     ¡SOLO PUEDEN  VIAJAR HASTA LOMA REDONDA!     |');
				writeln('  |                                                  |');
				writeln('  |--------------------------------------------------|');
				writeln ('');
				writeln('        Presione la tecla (enter) para continuar      ');
				readln();
				clrscr;
				
				repeat
				writeln('    |--------------------------------------------------|');
				writeln('    |--------------- Empecemos la compra --------------|');
				writeln('    |--------------------------------------------------|');	
				Writeln('');
				writeln('          Ingrese la cantidad de boletos generales'      );
				readln(cantbolg1);
				Val(cantbolg1, numero, codigoError);
				clrscr;	
				until codigoError = 0;
				cantbolg:= cantbolg + StrToInt(cantbolg1);
				
				repeat
				writeln('            |----------------------------------|');
				writeln('            |  ¿Usted está viajando con niños? |');
				writeln('            |----------------------------------|');
				writeln('            |---------- 1.Si --- 2.No ---------|');
				writeln('            |----------------------------------|');
				readln(optionn);
				clrscr;	
				until (optionn = '1') or (optionn = '2');
					
					case optionn of
					'1':
					begin
						repeat// repeat para validar
						Writeln('          Ingrese la cantidad de boletos especiales'     );
						writeln('                  (niños menores de 3 años)'      );
						readln (cantbolex1);
						Val(cantbolex1, numero, codigoError);
						clrscr;	
						until codigoError = 0;
						cantbolex:= StrToInt(cantbolex1); // tranformacion del numero validado en un entero
						
						
						repeat// repeat para validar
						Writeln('      Ingrese la cantidad de Boletos Kids (3 a 12 años)' );
						writeln('                    (niños de 3 a 12 años)'      );
						readln (cantboln1);
						Val(cantboln1, numero, codigoError);
						clrscr;	
						until codigoError = 0;
						cantboln:= StrToInt(cantboln1); // tranformacion del numero validado en un entero
						
						repeat
						writeln('            |----------------------------------|');
						writeln('            |     ¿Usted está viajando con     |');
						writeln('            |   personas de la tercera edad?   |');
						writeln('            |----------------------------------|');
						writeln('            |---------- 1.Si --- 2.No ---------|');
						writeln('            |----------------------------------|');
						readln(option1);
						clrscr;	
						until (option1 = '1') or (option1 = '2');
						
						if option1='1' then
						begin
						repeat// repeat para validar
							Writeln('        Ingrese la cantidad de boletos preferenciales');
							readln (cantbolv1);
							Val(cantbolv1, numero, codigoError);
							clrscr;	
							until codigoError = 0;
							cantbolv:= StrToInt(cantbolv1); // tranformacion del numero validado en un entero
							writeln('        Presione la tecla (enter) para continuar...');
							readln ();
						end
						
					end;
					'2':
					begin
						repeat
						writeln('            |----------------------------------|');
						writeln('            |     ¿Usted está viajando con     |');
						writeln('            |   personas de la tercera edad?   |');
						writeln('            |----------------------------------|');
						writeln('            |---------- 1.Si --- 2.No ---------|');
						writeln('            |----------------------------------|');
						readln(option1);
						clrscr;	
						until (option1 = '1') or (option1 = '2');
						if option1='1' then
						begin
							repeat// repeat para validar
							Writeln('        Ingrese la cantidad de boletos preferenciales');
							readln (cantbolv1);
							Val(cantbolv1, numero, codigoError);
							clrscr;	
							until codigoError = 0;
							cantbolv:= StrToInt(cantbolv1); // tranformacion del numero validado en un entero
							writeln('        Presione la tecla (enter) para continuar...');
							readln ();
						end
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
				writeln('Presione la tecla (enter) para continuar...');
				readln();	
				clrscr;	
					
			end;
			'2':
			begin
			
			ClrScr;
			    writeln('');
				writeln('  ----------------------------------');
				writeln('  --------- Reporte del día --------');
				writeln('  ----------------------------------');
				writeln('  Ventas realizadas:');
				writeln('  Asientos disponibles:',asidisp-bolven);
				writeln('  Asientos ocupados: ',bolven);
				writeln('  ----------------------------------');
				writeln('  -------- Boletos vendidos --------');
				writeln('  ----------------------------------');
				writeln('  Boletos generales: ');
				writeln('  Boletos Kids: ');
				writeln('  Boletos preferenciales: ');
				writeln('  Boletos exonerados: ');
				writeln('  ----------------------------------');
				writeln('  Total de boletos vendidos:');
				writeln('  ----------------------------------');
				writeln('  ------------- Montos -------------');
				writeln('  ----------------------------------');
				writeln('  Boletos generales:');
				writeln('  Boletos Kids: ');
				writeln('  Boletos preferenciales: ');
				writeln('  ----------------------------------');
				writeln('  ----------------------------------');
				writeln('  Monto total:');
				writeln('  ----------------------------------');
				writeln('');
				writeln('Presione la tecla (enter) para continuar');
				readln();
				ClrScr;
			end;
			
			
			'3':
			begin
			writeln ('Gracias por visitarnos,vuelva pronto');
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
tramo:= 0;

		
until option='3';

end.
