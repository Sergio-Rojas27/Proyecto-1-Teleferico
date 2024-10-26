program teleferico;

uses crt;
const 
preciog= 20;
precion= 12;
precioe=0;


var 
option: char;
optionn: char;
option1: char;
si: char;
nombre: string;
apellido: string;
cedula: string;

tramo: char;
estacion: char;
est1: string;
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



BEGIN
asidisp:= 60;
bolven:= 0;
pgeneral:=0;
si:='0';


Repeat
	writeln('Bienvenido al Teleferico de Merida');
	writeln ('En que podemos ayudarle?');
	writeln ('1. Comprar boleto');
	writeln ('2. Ver Sistema');
	writeln ('3. Salir');
	readln (option);
	clrscr;
	
			case (option) of
				'1': 
				begin 
					writeln ('Ingrese su nombre');
					readln (nombre);
					writeln ('Ingrese su apellido');
					readln (apellido);
					writeln ('Ingrese su cedula');
					readln (cedula);
					clrscr;
					
					
					writeln ('A continuacion se mostraran las estaciones y tramos que puedes visitar');
					writeln ('');
					writeln ('Estaciones: 1. Barinitas, 2. la montana,3. la aguada 4. Loma redonda, 5. pico espejo');
					writeln ('');
					writeln ('Tramos: a. Barinitas - la montana, b. La montana - la aguada, c. La aguada - Loma redonda, d. Loma redonda - pico espejo');
					writeln ('');
					
					writeln ('Indique en que estacion se encuentra');
					readln (estacion);
					
					case (estacion) of
						'1': begin
							est1:='Barinitas';
						end;
						'2': begin
							est1:='La Montana';
						end;
						'3': begin
							est1:='La Aguada';
						end;
						'4': begin
							est1:='Loma redonda';
						end;
						'5': begin
							est1:='Pico Espejo';
						end;
						end;
					
					clrscr;
					
					case (estacion) of
						'1': 
						begin
						writeln ('Usted se encuentra en Barinitas, puede recorrer el tramo 0.Barinitas - La Montana ');
						readln (tramo);
						est2:= 'La Montana';
						end;
						'2':
						begin
						writeln ('Usted se encuentra en la montana, escoja el numero del tramo que desea recorrer 1. la montana - la aguada, 2. la montana - barinitas ');
						readln (tramo);
						if tramo='1' then
						est2:= 'La aguada'
						else
						est2:= 'Barinitas';
						end;
						'3':
						begin
						writeln ('Usted se encuentra en la aguada, escoja el numero del tramo que desea recorrer 3. la aguada - loma redonda, 4. la aguada - la montana  ');
						readln (tramo);
						if tramo='3' then
						est2:= 'Loma redonda'
						else
						est2:= 'La Montana';
						end;
						'4':
						begin
						writeln ('Usted se encuentra en loma redonda, escoja el numero del tramo que desea recorrer 5. loma redonda - pico espejo, 6. loma redonda - la aguada ');
						readln (tramo);
						if tramo='5' then
						est2:= 'Pico espejo'
						else
						est2:= 'La aguada';
						end;
						'5':
						begin
						writeln ('Usted se encuentra en pico espejo, escoja el numero del tramo que desea recorrer 7. pico espejo - loma redonda, 8. pico espejo - barinitas ');
						readln (tramo);
						if tramo='1' then
						est2:= 'Loma redonda'
						else
						est2:= 'Barinitas';
						end;
					End; 
					
					clrscr;
					writeln ('Boletos disponibles: ',asidisp-bolven);
					writeln ('');
					writeln ('Lea cuidadosamente nuestras tarifas');
					writeln ('');
					writeln ('General=',preciog, '$');
					writeln ('Ninos de 3 a 12 anos y adultos mayores=',precion,'$');
					writeln ('Ninos menores de 3 anos =',precioe,'$');
					writeln ('');
					writeln ('IMPORTANTE: LOS NINOS MENORES DE 3 ANOS ESTAN EXONERADOS DEL PAGO DE BOLETOS PERO SOLO PUEDEN SUBIR HASTA LOMA REDONDA');
					writeln ('');
					
					writeln ('Empecemos la compra');
					writeln ('Ingrese la cantidad de boletos generales (Adultos)');
					readln (cantbolg);
					clrscr;
					
					writeln('Usted esta viajando con ninos? 1.si 2.no');
					readln(optionn);
					
					case optionn of
					'1':
					begin
						Writeln ('Ingrese la cantidad de boletos para ninos menores de 3');
						readln (cantbolex);
						Writeln ('Ingrese la cantidad de boletos para ninos (3 a 12 anos)');
						readln (cantboln);
						writeln('Esta viajando con adultos mayores? 1.si 2.no');
						readln(option1);
						if option1='1' then
						begin
							Writeln ('Ingrese la cantidad de boletos para adultos mayores');
							readln (cantbolv);
						end
						else
						writeln ('Sus boletos estan siendo procesados');
						
					end;
					'2':
					begin
					Writeln ('Ingrese la cantidad de boletos para adultos mayores');
					readln (cantbolv);
					end;
					end;

					
					clrscr;
					
					bolven:=cantboln+cantbolex+cantbolg+cantbolv;
					
					writeln ('factura');
					writeln ('');
					writeln ('Nombre y apellido:',nombre,' ',apellido);
					writeln ('Cedula:',cedula);
					writeln ('');
					writeln ('Tramo recorrido:',tramo);
					writeln ('Estacion de inicio:', est1);
					writeln ('Estacion de llegada', est2);
					writeln ('');
					writeln ('Boletos para nino:',cantboln, '----------' ,precion*cantboln,'$');
					writeln ('Ninos exonerados:',cantbolex, '----------' ,precioe*cantbolex,'$');
					writeln ('Boletos generales:',cantbolg, '----------' ,preciog*cantbolg,'$');
					writeln ('Boletos tercera edad:',cantbolv, '----------' ,precion*cantbolv,'$');
					writeln ('');
					writeln ('Total de boletos:',bolven);
					writeln ('Total a pagar:',precion*cantboln+precioe*cantbolex+preciog*cantbolg+precion*cantbolv,'$' );
			end;
			
			
			'3':
			begin
			writeln ('Gracias por visitarnos,vuelva pronto');
			end;
			end;
until option='3';
end.
