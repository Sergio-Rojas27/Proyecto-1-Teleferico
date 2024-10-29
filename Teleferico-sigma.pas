{
Realizado por:
Sergio Rojas C.I: 31.761.871
Aymara Vasquez C.I: 31.690.940
}

program teleferico;
{$codepage UTF8}
uses crt, SysUtils;
//ultima version general
var 

//variables para los case
option: char;
optionn: char;
option1: char;
infante: char;
estacion: string;

//datos del usuario
nombre: string;
cedula: string;
tramo: integer; //cantidad de tramos recorridos
est1: string; // estacion de inicio
est2: string; // estacion de llegada

//cantidad de boletos
cantbolg: integer; //generales
cantboln: integer; //niños
cantbolex: integer; //niños exonerados
cantbolv: integer; //tercera edad

asidisp: byte; //asientos disponibles
bolven: byte; //boletos vendidos

//precios
pbolg:integer; //boleto general
pbolk:integer; //boleto niños
pbolp:integer; //boleto tercera edad
pbolex:integer; //boleto exonerado
mtotal:integer; //monto total

ventas:integer; //cantidad de ventas realizadas

//Montos de todas las ventas 
mf:integer; //total
mfg:integer; //boletos generales
mfk:integer; // boletos de niños
mfp:integer; // boletos tercera edad

// Cantidad de boletos vendidos en todas las ventas
tbolg:integer; // generales
tbolk:integer; // niños
tbolp:integer; // tercera edad
tbole:integer; // exonerados
tbolven:integer; //total 

//variables para validar
numero: Integer;
codigoError: Integer;
cantbolg1, cantbolex1, cantboln1, cantbolv1: string; // esto y el sysutils para el resto de las validaciones
i: integer;

BEGIN
//variables inicializadas
est1:= 'Barinitas';

asidisp:= 60;
bolven:= 0;
cantbolg:=0;
cantbolex:=0;
tramo:=0;

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


Repeat //repeat de las opciones del menu
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
	
			case (option) of //case principal
				'1': 
				begin //inicio del la opcion comprar boleto
				if asidisp=0 then //revisa si hay boletos antes de empezar el proceso de compra
				begin
					writeln('  +--------------------------------------------------+');
					writeln('  |--------------------- ERROR ----------------------|');
					writeln('  |          En estos momentos no contamos con       |');
					writeln('  |                asientos disponibles              |');
					writeln('  +--------------------------------------------------+');
					writeln('         Presione dos veces (enter) para salir...');
					readln();
					break;
				end;
				
				clrscr;
				
				repeat // repeat para validar nombre
					writeln('');
					writeln(' +----------------------------------+');
					writeln(' |-- Ingrese su nombre y apellido --|');
					writeln(' +----------------------------------+');
					readln(nombre);
					codigoError := 0;
					for i := 1 to Length(nombre) do // bucle para verificar si cada carácter es una letra
					begin
					  if not (nombre[i] in ['A'..'Z', 'a'..'z', ' ']) then
					  begin
						codigoError := 1; // Si se encuentra un carácter no válido
						break; 
					  end;
					end;

					clrscr; 
				 until codigoError = 0; // Fin del repeat que valida el nombre
				
				repeat // repeat para revisar que se hayan ingresado numero
					writeln('');
					writeln(' +----------------------------------+');
					writeln(' |-------- Ingrese su cédula -------|');
					writeln(' +----------------------------------+');
					readln (cedula);
					Val(cedula, numero, codigoError);
					clrscr;
				until codigoError = 0; //fin del repeat de validacion
				
				repeat // repeat para validar que se haya ingresado una de las dos opciones disponibles
					writeln(' +----------------------------------------------------+');
					writeln(' |  ¿Usted está viajando con niños menores de 3 años? |');
					writeln(' |----------------------------------------------------|');
					writeln(' |------------------ 1.Si --- 2.No -------------------|');
					writeln(' +----------------------------------------------------+');
					readln(infante);
					clrscr;	
				until (infante = '1') or (infante = '2'); //fin del repeat
				
				case infante of //case para viajes con bebes
						'1':
						begin //inicio de la opcion de viaje con bebes
						cantbolex:=0;
							repeat //repeat para validar la opcion ingresada
								repeat // repeat para validar la cantidad de menores
								writeln(' +--------------------------------------------------+');
								writeln(' |---- Ingrese la cantidad de boletos especiales ---|');
								writeln(' |------------ (niños menores de 3 años) -----------|');
								writeln(' +--------------------------------------------------+');
								readln (cantbolex1);
								clrscr;
								Val(cantbolex1, numero, codigoError);
								cantbolex:= StrToInt(cantbolex1); // transformacion del numero validado en un entero
								if cantbolex>asidisp then // condicional que revisa la cantidad
								writeln('');
								writeln ('       ERROR: la cantidad de boletos ingresada');
								writeln ('         sobrepasa los asientos disponibles');
							    writeln('');
								until cantbolex<=asidisp;
							until codigoError = 0; //fin del repeat de validacion de la cantidad
						end; //fin de la opcion de viaje con bebes
						'2':
						begin
							writeln(' +---------------------------------------------------+');
							writeln(' |      Usted no viaja con niños menores de 3 años   |');
							writeln(' +---------------------------------------------------+'); 
						end;
				end; //fin del case para viajes con bebes
				
                clrscr;
				writeln('');	
				writeln(' +---------------------------------------------------+');
				writeln(' |------------ A continuación se mostrarán ----------|');
				writeln(' +---- las estaciones y tramos que puedes visitar ---|');
				writeln(' +---------------------------------------------------+');
				writeln(' |---- Estaciones ---|------------ Tramos -----------|');
				writeln(' |-------------------|-------------------------------|');	
				writeln(' |  1. Barinitas     | 1. Barinitas - La Montaña     |');
				writeln(' |  2. La Montaña    | 2. La Montana - La Aguada     |');
				writeln(' |  3. La Aguada     | 3. La Aguada - Loma Redonda   |');
				writeln(' |  4. Loma Redonda  | 4. Loma Redonda - Pico Espejo |');
				writeln(' |  5. Pico Espejo   |                               |');
				writeln(' +---------------------------------------------------+');
				writeln(' |  Usted se encuentra en Barinitas, puede viajar a  |');	
				writeln(' |  un tramo especifico o recorrer todos los tramos. |');	
				writeln(' |    Todos los boletos son de ida y vuelta y los    |');
				writeln(' |    niños menores de 12 deben ir con un adulto.    |');
				writeln(' +---------------------------------------------------+');
	            writeln('');
				
				repeat	// repeat que valida que los bebes no viajen a pico espejo
					Repeat // repeat para validar la estacion ingresada
						writeln(' +---------------------------------------------------+');
						writeln(' |------ Indique la estación que desea visitar ------|');
						writeln(' +---------------------------------------------------+');
						readln (estacion);
					
				
							case (estacion) of //para almacenar la cantidad de tramos que se quieren recorrer y la estacion de llegada
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
							end; //final del case 
							writeln('');
							clrscr;
					until tramo<>0; //final del repeat que valida la estacion
					
					if (tramo = 4) and (infante = '1') then
						writeln(' +---------------------------------------------------+');
						writeln(' |           Usted no puede ir a Pico Espejo         |');
						writeln(' |             con niños menores de 3 años           |');
						writeln(' +---------------------------------------------------+');
				until (not ((tramo = 4) and (infante = '1'))); //fin del repeat pico espejo
					
			   	clrscr;
				repeat// inicio del repeat que valida la cantidad de boletos que se pueden comprar
					writeln('     +--------------------------------------------------+');
					writeln('     |-------------- Boletos disponibles:',asidisp,' ------------|');
					writeln('     |--------------------------------------------------|');              
					writeln('     |                                                  |');
					writeln('     |      ¡Lea cuidadosamente nuestras tarifas!       |');
					writeln('     |                                                  |');
					writeln('     |   1.Boleto general(Adultos): ............. $20   |');	
					writeln('     |     Precio por tramo: ..................... $5   |');
					writeln('     |                                                  |');
					writeln('     |   2.Boleto Kids(3 a 12 años): ............ $12   |');
					writeln('     |     Precio por tramo: ..................... $3   |');
					writeln('     |                                                  |');
					writeln('     |   3.Boleto preferencial(60 años o más): .. $12   |');	
					writeln('     |     Precio por tramo: ..................... $3   |');
					writeln('     |                                                  |');
					writeln('     |--------------------------------------------------|');
					writeln('     |                                                  |');
					writeln('     |   4.Boleto exonerado(menores de 3 años): GRATIS  |');
					writeln('     |         Los niños menores de 3 años serán        |');	
					writeln('     |          exonerados el pago. Sin embargo         |');
					writeln('     |     ¡SOLO PUEDEN  VIAJAR HASTA LOMA REDONDA!     |');
					writeln('     |                                                  |');
					writeln('     +--------------------------------------------------+');
					writeln ('');
					writeln('              Presione (enter) para continuar...      ');
					readln();
					clrscr;
				
				
				repeat // repeat para  revisar que se hayan ingresado numeros
				cantbolg:=0;
				cantboln:=0;
				cantbolv:=0;
					writeln(' +--------------------------------------------------+');
					writeln(' |-------------- ¡Empecemos la compra! -------------|');
					writeln(' +--------------------------------------------------+');	
					writeln(' +--------------------------------------------------+');
					writeln(' |---- Ingrese la cantidad de boletos generales ----|');
					writeln(' +--------------------------------------------------+');	
					readln(cantbolg1);
					Val(cantbolg1, numero, codigoError);
					clrscr;	
				until codigoError = 0; //fin del repeat
				cantbolg:= cantbolg + StrToInt(cantbolg1); //tranformacion del numero validado en un entero
				
				
				repeat // repeat para validar que se haya ingresado una de las dos opciones disponibles
					writeln(' +----------------------------------+');
					writeln(' |  ¿Usted está viajando con niños? |');
					writeln(' |----------------------------------|');
					writeln(' |---------- 1.Si --- 2.No ---------|');
					writeln(' +----------------------------------+');
					readln(optionn);
					clrscr;	
				until (optionn = '1') or (optionn = '2'); //fin del repeat
				
					case optionn of //case para otros boletos
						'1':
						begin //inicio de la opcion de viaje con niños
							repeat //repeat para validar la opcion ingresada
								writeln(' +--------------------------------------------------+');
								writeln(' |------- Ingrese la cantidad de Boletos Kids ------|');
								writeln(' |-------------- (niños de 3 a 12 años) ------------|');
								writeln(' +--------------------------------------------------+');
								readln (cantboln1);
								Val(cantboln1, numero, codigoError);
								clrscr;	
							until codigoError = 0; //fin del repeat de validacion
							cantboln:= StrToInt(cantboln1); // transformacion del numero validado en un entero
							
							
							repeat // repeat para validar que se haya ingresado una de las dos opciones disponibles
								writeln(' +----------------------------------+');
								writeln(' |     ¿Usted está viajando con     |');
								writeln(' |   personas de la tercera edad?   |');
								writeln(' |----------------------------------|');
								writeln(' |---------- 1.Si --- 2.No ---------|');
								writeln(' +----------------------------------+');
								readln(option1);
								clrscr;	
							until (option1 = '1') or (option1 = '2');//fin del repeat
								
							if option1='1' then //condicional por si tambien se compran boletos de tercera edad
							begin // inicio del condicional
							repeat //repeat para validar la opcion ingresada
								writeln(' +--------------------------------------------------+');
								writeln(' |-- Ingrese la cantidad de boletos preferenciales -|');
								writeln(' +--------------------------------------------------+');	
								readln (cantbolv1);
								Val(cantbolv1, numero, codigoError);
								clrscr;	
							until codigoError = 0;//fin del repeat de validacion
							cantbolv:= StrToInt(cantbolv1); // transformacion del numero validado en un enter
							end; //fin del condicional
						end; // fin de la opcion de viaje con niños
						
						'2':
						begin // inicio de la opcion de viaje sin niños
							repeat	// repeat para validar que se haya ingresado una de las dos opciones disponibles
							writeln(' +----------------------------------+');
							writeln(' |     ¿Usted está viajando con     |');
							writeln(' |   personas de la tercera edad?   |');
							writeln(' |----------------------------------|');
							writeln(' |---------- 1.Si --- 2.No ---------|');
							writeln(' +----------------------------------+');
							readln(option1);
							clrscr;	
							until (option1 = '1') or (option1 = '2');//fin del repeat
								
							if option1='1' then //condicional por si tambien se compran boletos de tercera edad
							begin // inicio del condicional
							repeat //repeat para validar la opcion ingresada
								writeln(' +--------------------------------------------------+');
								writeln(' |-- Ingrese la cantidad de boletos preferenciales -|');
								writeln(' +--------------------------------------------------+');	
								readln (cantbolv1);
								Val(cantbolv1, numero, codigoError);
								clrscr;	
							until codigoError = 0;//fin del repeat de validacion
								cantbolv:= StrToInt(cantbolv1); // transformacion del numero validado en un entero
								
							end;//fin del condicional
						end;// fin de la opcion de viaje con niños	
					end; //fin del case para otros boletos
					clrscr;
					
				bolven:= (cantbolg + cantboln + cantbolv);
				If (bolven > asidisp) then // condicional que revisa la cantidad de boletos que se quieren comprar
				writeln('+-------------------------------------------------------------+');
				writeln('|--------------------------- ERROR ---------------------------|');
				writeln('|  ¡Su factura no pudo ser procesada! La cantidad de boletos  |');
				writeln('|   ingresada (',bolven,') sobrepasa los boletos disponibles          |');
				writeln('+-------------------------------------------------------------+');	
				until (bolven <= asidisp); //fin del repeat que revisa la cantidad de boletos
				
				// calculo de la cantidad de boletos	
				bolven:=cantboln+cantbolg+cantbolv;	
					
				// calculo de ventas realizadas
				ventas:=ventas+1;	
				// calculo de precios 
				pbolg:=tramo*cantbolg*5;
				pbolk:=tramo*cantboln*3;
				pbolp:=tramo*cantbolv*3;
				pbolex:=tramo*cantbolex*0;
				// calculo de monto total
				mtotal:=pbolg+pbolk+pbolex+pbolp;
				
				
				//nota: los bebes no ocupan un asiento, se entiende que viajan en brazos de su representante
				clrscr;
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
				writeln('  Menores exonerados: ',cantbolex,' ....... $',pbolex);
				writeln('  ----------------------------------');
				writeln('  Total de boletos: ............ ',bolven);
				writeln('  ----------------------------------');
				writeln('  Total a pagar: ............. $',mtotal);
				writeln('  ----------------------------------');
				writeln('');
				writeln('  Presione (enter) para continuar...');
				readln();	
			
				//calculo de asientos disponibles
				asidisp:=asidisp-bolven;
				// calculo de asientos ocupados
				tbolven:=tbolven+bolven;
				// suma de la cantidad de boletos en cada venta
				tbolg:=tbolg+cantbolg;
				tbolk:=tbolk+cantboln;
				tbolp:=tbolp+cantbolv;
				tbole:=tbole+cantbolex;
				// suma de los montos en cada venta
				mfg:=mfg+pbolg;
				mfk:=mfk+pbolk;
				mfp:=mfp+pbolp;
				mf:=mf+mtotal;
			
				end; //fin de la opcion comprar boleto
			
			
			'2':
			begin //inicio de la opcion ver sistema
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
				writeln('  Menores exonerados: ',tbole);
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
				writeln(' Presione (enter) para volver al menú');
				readln();
				ClrScr;
			end; //fin de la opcion ver sistema
			
			
			'3': 
			begin // inicio de la opcion salir
			writeln('    +--------------------------------------------------+');
			writeln('    |-------- Gracias por visitar el Teleférico -------|');
			writeln('    |----------------- ¡Vuelva pronto! ----------------|');
			writeln('    +--------------------------------------------------+');	
			writeln('          Presione dos veces (enter) para salir...');
			readln();
			ClrScr;
			end; // fin de la opcion salir
			
		end; // end del case principal

// Se hacen 0 las variables para evitar errores al repetir			
cantbolg:=0;
cantboln:=0;
cantbolv:=0;
cantbolex:=0;
		
until option='3'; //fin del repeat del menu

end.
