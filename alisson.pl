#Llamada  a la funcion de impresion de tux
tux();

#####################################################
###	borrar()	  ###
#####################################################
# Funcion que solo realiza una simple limpieza de pantalla
sub borrar()
{
	 system(clear);
}
################ fin de la funcion 


#########################################################################################
###	menus()	  ###
#########################################################################################
# Esta funcion es la que imprime todos los menus de la aplicacion
# dichas opciones, en versiones posteriores podria ser extraida de una base de datos
# a fin de poder agregar opciones al menu.

sub menus()
{
	print "\n";
	print "Escoja el router que desea diagnosticar\n";
		ip();
		borrar();
		men();
}


sub comandos()
{              
			if ($choice =='1')
			{
				  borrar();
				  print "################### INTERFACES ##################\n\n";
				  print "#################################################\n\n";
				  print "Las interfaces de el router que eligio son:\n";
				  print "\n";
				  $coman="show ip interface brief";
				          conectar_router($coman,$dat);
				          filtro();
						  print "Menu Principal:1		Menu Anterior: 2\n";
						  $opcion=<STDIN>;
						  borrar();
				          opmenu();
			 }
			if ($choice =='2')
			{
					  borrar();
					  print "########## PROTOCOLOS DE ENRUTAMIENTO ###########\n\n";
					  print "#################################################\n\n";
					  print "Los protocolos de el router que eligio son:\n";
					  print "\n";
					  $coman="show ip protocol";
					  conectar_router($coman,$dat);
					  filtro();
							  print "Menu Principal:1		Menu Anterior: 2\n";
							  $opcion=<STDIN>;
							  borrar();
					  opmenu();
			 }
			 if ($choice =='3')
			 {
					  borrar();
					  print "########### CAPACIDAD DE MEMORIA FLASH ##########\n\n";
					  print "############################################\n\n";
					  print "La capacidad de memoria flash del router es:\n";
					  print "\n";
					  $coman="show flash";
					  conectar_router($coman,$dat);
					  filtro();
							  print "Menu Principal:1		Menu Anterior: 2\n";
							  $opcion=<STDIN>;
							  borrar();
						  opmenu();
			 }
			 if ($choice =='4')
			 {
					 borrar();
					 print "################# TABLA DE HOST #################\n\n";
					 print "#############################################\n\n";
					 print "La tabla de host del router elegido es:\n";
					 print "\n";
					  $coman="show host";
					  conectar_router($coman,$dat);
					  filtro();
							  print "Menu Principal:1		Menu Anterior: 2\n";
							  $opcion=<STDIN>;
							  borrar();
						      opmenu();
			 }                    
			 if ($choice =='5')
			 {
					  borrar();
					  print "################ LISTAS DE ACCESO ###############\n\n";
					  print "#################################################\n\n";
					  print "Esta es la lista de acceso del router elegido :\n";
					  print "\n";
					  $coman="show ip acces list";
					  conectar_router($coman,$dat);
					  filtro();
							  print "Menu Principal:1		Menu Anterior: 2\n";
							  $opcion=<STDIN>;
							  borrar();
						      opmenu();
			  }
			  if ($choice =='6')
			 {
					  borrar();
					  print "###############CONFIGURACION INICIAL ############\n\n";
					  print "#################################################\n\n";
					  print "Esta es la configuracion inicial del router elegido:\n";
					  print "\n";
					  $coman="show startup-config";
					  conectar_router($coman,$dat);
					  filtro();
							  print "Menu Principal:1		Menu Anterior: 2\n";
							  $opcion=<STDIN>;
							  borrar();
						      opmenu();
			 }
			 if ($choice =='7')
			 {
					  borrar();
					  print "###############CONFIGURACION ACTIVA ############\n\n";
					  print "#################################################\n\n";
					  print "Esta es la configuracion activa del router elegido :\n";
					  print "\n";
					  $coman="show running-config";
					  conectar_router($coman,$dat);
					  filtro();
					 print "Menu Principal:1		Menu Anterior: 2\n";
							  $opcion=<STDIN>;
							  borrar();
						  opmenu();

			  }
			  if ($choice =='8')
			  {
					  borrar();
					   print "#####################VERSION####################\n\n";
					   print "################################################\n\n";
					   print "La version del router elegido es:\n";
					   print "\n";
					  $coman="show version";
					  conectar_router($coman,$dat);
					  filtro();
					          print "Menu Principal:1		Menu Anterior: 2\n";
							  $opcion=<STDIN>;
							  borrar();
						      opmenu();

			   }
				if ($choice =='9')
				{
					  borrar();
					   print "###############SECUENCIA DE ARRANQUE############\n\n";
					   print "################################################\n\n";
					   print "La secuencia de arranque del router elegido es:\n";
					   print "\n";
					  $coman="show boot system";
					  conectar_router($coman,$dat);
					  filtro();
					          print "Menu Principal:1		Menu Anterior: 2\n";
							  $opcion=<STDIN>;
							  borrar();
						      opmenu();

				}
				if ($choice =='10')
 			   {
					   borrar();
					   men();
					  $choice="";
				}
				 else
						{
						  print "esta es una AAAAAAAAAAAA:\n";
						  men();
						  $choice="";   
						 }
}
	

sub comandos2()
{         
			if ($choice =='1')
			{
				  borrar();
				  print "############RUTAS ESTATICAS Y DINAMICAS#########\n\n";
				  print "################################################\n\n";
				  print "Puede ver las rutas estatica y dinamica a continuacion:\n";
				  print "\n";
				  $coman="show ip rout";
				  conectar_router($coman,$dat);
				  filtro();
						  print "Menu Principal:1		Menu Anterior: 2\n";
						  $opcion=<STDIN>;
						  borrar();
					      opmenu2();
			}
			if ($choice =='2')
			{

				   print "###################ROUTER VECINOS###############\n\n";
				  print "################################################\n\n";
				  print "Estos son los vecinos de su router:\n";
				  print "\n";
				  $coman="show cdp neighbors";
				  conectar_router($coman,$dat);
				  filtro();
				print "Menu Principal:1		Menu Anterior: 2\n";
						  $opcion=<STDIN>;
						  borrar();
					      opmenu2();
			}
			if ($choice =='3')
			{
				
				borrar();
				men();
				$choice="";
			}
			  else
			 {
			 borrar();
			  print "esta es una opcion no valida:\n";
			  men();   
			  $choice="";
			  }
}#Fin de comandos 2


sub comandos3()
{
		 if ($choice =='1')
			{
				  borrar();
				  print "########INFORMACION DE INTERFACE ETHERNET#######\n\n";
				  print "################################################\n\n";
				  print "Informacion de interface Ethernet:\n";
				  print "\n";

				  if ($serie>='12.0')
				  {
					$coman="show ip interface eth0";
				  }
				  else
						{
						  $coman="show ip interface eth0/0";
						 }
							  conectar_router($coman,$dat);
							  filtro();
							  print "Menu Principal:1		Menu Anterior: 2\n";
							 $opcion=<STDIN>;
								  borrar();
								  opmenu3();
			}
			if ($choice =='2')
			{
			borrar();
				   print "########INFORMACION DE INTERFACE SERIAL#########\n\n";
				  print "################################################\n\n";
				  print "Informacion de interface Serial:\n";
				  print "\n";
				  if ($serie>='12.0')
				  {
				  $coman="show ip interface serial0";
				  }
				  else
				  {
				  $coman="show ip interface serial0/0";
				  }
				  conectar_router($coman,$dat);
				 filtro();
				print "Menu Principal:1		Menu Anterior: 2\n";
						  $opcion=<STDIN>;
						  borrar();
					  opmenu3();
			}
			if ($choice =='3')
			{
				borrar();
				  print "########INFORMACION DE INTERFACE ISDN#########\n\n";
				  print "##############################################\n\n";
				  print "Informacion de interface ISDN:\n";
				  print "\n";
				  $coman="show ip interface bri";
				  conectar_router($coman,$dat);
				  filtro();
				  print "Menu Principal:1		Menu Anterior: 2\n";
						  $opcion=<STDIN>;
						  borrar();
					  opmenu3();
			}
			if ($choice =='4')
			{
				borrar();
				men();
				$choice="";
			}
			 else
			 {
			  print "esta es una opcion no valida:\n";
			  men();   
			  }
}#Fin de comandos 3

sub comandos4()
{
		if ($choice =='1')
		{
			borrar();
			print "###########MODULO DE INSERTAR USUARIOS########\n\n";
			print "##############################################\n\n";
					insertar_usuarios();
			         print "Menu Principal:1		Menu Anterior: 2\n";
					  $opcion=<STDIN>;
					  borrar();
				      opmenu4();
		}
		if ($choice =='2')
		{
			borrar();
			print "###########MODULO DE INSERTAR ROUTERS########\n\n";
			print "##############################################\n\n";
			insertar_routers();
			print "Menu Principal:1		Menu Anterior: 2\n";
					  $opcion=<STDIN>;
					  borrar();
				  opmenu4();
		}
		if ($choice =='3')
		{
			borrar();
			print "#####MODULO INSERTAR ROUTERS POR USUARIOS#####\n\n";
			print "##############################################\n\n";
			asignar_routers_por_usuario();
			print "Menu Principal:1		Menu Anterior: 2\n";
					  $opcion=<STDIN>;
					  borrar();
				  opmenu4();
		}
		if ($choice =='4')
		{
			 borrar();
			 men();
			 $choice="";
		}
		 else
		 {
		  print "esta es una opcion no valida:\n";
		  menus();   
		  }
}#Fin de comandos 4

sub comandos5()
{
			   borrar();
	           monitoreo($dat,$cli);
}# fin de la funcion 


##############################################################################################################
###		monitoreo($dat)   ###
##############################################################################################################
# Esta es la funcion que cumple con rutinas de monitoreo por medio de comandos establecidos
# ping,traceroute y nslookup, para ello requiere el paso de la variable $dat que contiene la direccion ip a consultar

sub monitoreo($dat,$cli)	
{	
		print "###############MODULO MONITOREO DE ROUTERS##########\n\n";
		print "##############################################\n\n";
		print "	Elija la opcion de la actividad que desea hacer con el router:\n\n";
		print "1. Ping\n";
		print "2. Trace\n";
		print "3. DNS LOOK Up\n";

		if($cli=='1' )
		{
			print "4. Consola\n";
		}
		print "5. Salir\n";
		print " Escoja la opcion que desea:\n";
			$choice=<STDIN>;

			if ($choice =='1')
			{
				print "	Usted esta haciendo ping al router:\n\n";
				system("logsave -a pin.log ping $dat");
				sleep(2);
				print "Menu Principal:1	   Volver al menu Anterior : 2\n";
							  $opcion=<STDIN>;
							  borrar();
						  opmenu2();
				}
				if ($choice =='2')
				{
				   print "	Usted esta haciendo trace al router:\n\n";
				   system("logsave -a tra.log traceroute $dat");
				   print "Menu Principal:1	   Volver al menu Anterior : 2\n";
					$opcion=<STDIN>;
					borrar();
					pmenu2();
				}
				if ($choice =='3')
				{
					print "	Usted esta haciendo nslookup al router:\n\n";
					system("logsave -a dns.log nslookup $dat");
					 print "Menu Principal:1	   Volver al menu Anterior : 2\n";
							  $opcion=<STDIN>;
							  borrar();
						  opmenu2();
				}
				 if ($choice =='4')
				 {
				  consola($dat);
				 }
											
				 if ($choice =='5')
				 {
					 borrar();
					 men();
					 $choice="";
				  }
					else
						 {
							borrar();
							print "esta es una opcion no valida:\n";
							menus();   
						  }
}# Fin de la funcion 


##############################################################################
###	tux()	   ###
##############################################################################
# Esta funcion crea un grafico de tux e imprime el nombre del software alisson

sub tux()
{
		print "				##############################################\n\n";
		print " 		        	 	           .^.  \n";
		print " 		        	         	  //V\\\  \n";
		print " 		        	        	 //  \\\\  \n";
		print "  		            		        //(   )\\\  \n";
		print "  		                		 ^^ ^^   \n";
		print " 	               			  E-ROUTER Alisson  \n";
		print "  	           			   Powered by: LINUX \n";
		print "				##############################################\n\n";
		print "			CARGANDO......................................\n\n";
		sleep(2);
		acces_usr();
}
################ fin de la funcion 


######################################################
###	acces_usr()	   ###
######################################################

# Esta funcion es la que solicita el usuario y password al usuario de la aplicacion
# para verificar la existencia y dejar entrar al ucuario o negarle el accesso
sub acces_usr()
{
	conectar();
	print" ##########MODULO DE LOGEO A LA APLICACION#######\n\n";
	print"Por favor digite el nombre de usuario\n";
	$usr=<STDIN>;
	chop $usr;
	print"Por favor digite su password\n";
	ocultar_password();
	$use ="select id_usuario,consola from usuarios  where login_usuario='$usr' and pwd_usuario='$password'" ;
	$st = $dbh->prepare($use);
	$st->execute();
	while(@datos=$st->fetchrow_array())
	{
	$cli=@datos[1];
	}
	if ($cli>'0')	
	{
	procusr();
	}
	else
	{
	borrar();
	print"!!!!!!!!!!!!!!!!!!!!!!!!!SU USUSARIO Y SU PASSWORD NO SON VALIDOS!!!!!!!!!!!!!!!!!!!!\n";
	acces_usr();
	}
	return($cli);
}
################ fin de la funcion 


######################################################
######procusr() #################
######################################################
#Esta funcion lista los router pertenecientes a un usuario
#se le debe pasar como parametro el usuario $usr

sub procusr()
{
borrar();
conectar();
	$use ="select id_usuario from usuarios  where login_usuario='$usr'";
	$st = $dbh->prepare($use);
	$st->execute();
	@datos=$st->fetchrow_array;
	$cod=@datos[0];
 	$query ="select rt.id_router,rt.nombre_router from usuarios us 
	inner join routers rt on ra.id_router=rt.id_router 
	inner join routers_asignados ra on ra.id_usuario=us.id_usuario
	where us.id_usuario=@datos";
	$sth = $dbh->prepare($query);
	$sth->execute();
	print "\n";
	print "#############################################\n\n";
	print "########ESTOS SON LOS ROUTER QUE USTED TIENE ASIGNADOS#####\n";
	while(@row=$sth->fetchrow_array()) 
	{
		print "		@row\n";
	}
	menus();
}
################ fin de la funcion 


######################################################
######ip()     ##############
######################################################
#
#Funcion simple para obtener la direccion ip desde la tabla de routers, el usuario debe de digitar el id de router

sub ip()
  { 	
	$rou=<STDIN>;
	$q ="select rt.ip_router,rt.ios_router from routers rt where rt.id_router=$rou";
	$st = $dbh->prepare($q);
	$st->execute();
	while(@row=$st->fetchrow_array()) 
	{
		$dat=@row[0];
		$serie=@row[1];
	}
	return($dat,$serie);
}
################ fin de la funcion 


   
######################################################
######conectar()	######
######################################################
#Esta funcion realiza la conexion a la base de datos Mysql
#a fin de poder insertar datos y consultarlos cuando la opciones
#del menu asi lo necesiten, OJO:::: deberia de recibir por parametros encriptados los valores de conexion

sub conectar()	
{
use DBI;
$db="tesis";
$host="localhost";
$port="3306";
$userid="root";
$passwd="";
$connectionInfo="DBI:mysql:database=$db;$host:$port";
# Realizamos la conexiÃ³n a la base de datos
$dbh = DBI->connect($connectionInfo,$userid,$passwd);
}
################ fin de la funcion 


#########################################################################################################
######		 insertar_usuarios()#####
#########################################################################################################
#Esta es la funcion encargada de insertar los usuarios , a la base de datos
#cuando el usuario agrega uno nuevo, no sin antes verificar que el router no exista

sub insertar_usuarios()
{
		conectar();
		print"Por favor digite el nombre de usuario\n";
		$usuario=<STDIN>;
		chop $usuario;

		$error="Usuario ya existe";
		$ok="Insertando";
	
		$validar ="select * from usuarios where login_usuario='$usuario'";
		$sth = $dbh->prepare($validar);
		$sth->execute();
		@validados=$sth->fetchrow_array;
		if(@validados)
		{
			print $error;
		}
		else
		    {
			ocultar_password();		
			print"Por favor digite el mail\n";
			$mail=<STDIN>;
			chop $mail;

			print"Desea habilitar la consola del router?? SI(1) / NO(2)\n";
			$consola=<STDIN>;
			chop $consola;
		
		if (($consola=='1') or ($consola=='2'))
		{
			$listado ="insert into usuarios values('NULL','$usuario','$consola','$password','$mail')";
			$sth = $dbh->prepare($listado);
			$sth->execute();
			print "Registros Agregados Satisfactoriamente";
		}
			 else
			    {
			     print"Error, por favor verifique los datos que ingresa";
			    }
		    }		
}
################ fin de la funcion 

#################################################
######		 insertar_routers()#####
#################################################
#Esta es la funcion encargada de insertar los routers, a la base de datos
#cuando el usuario agrega uno nuevo, claaro no sin antes verificar que el router no exista
sub insertar_routers()
{
	$error="Error registro duplicado";
	$ok="Insertando";

	conectar();
	print"Por favor digite el nombre del Router\n";
		$router=<STDIN>;
		chop $router;

		$validar ="select * from routers where nombre_router='$router'";
		$sth = $dbh->prepare($validar);
		$sth->execute();
		@validados=$sth->fetchrow_array;
		if(@validados)
		{
		print $error;
		}
		else
		   {
			print"Por favor digite la IP del router\n";
			$ip=<STDIN>;
			chop $ip;

			$validar2 ="select * from routers where ip_router='$ip'";
			$sth = $dbh->prepare($validar2);
			$sth->execute();
			@validados=$sth->fetchrow_array;
			if(@validados)
			{
				print $error;
			}
			else
			{
				print"Por favor digite el prompt del del router\n";
				$prompt=<STDIN>;
				chop $prompt;
		
				print"Por favor digite la serie del router\n";
				$se=<STDIN>;
				chop $se;
		
				ocultar_password();
				ocultar_password_e();
				
				print"Por favor digite el IOS del router\n";
				$ios=<STDIN>;
				chop $ios;

$query="insert into routers values('NULL','$router','$password','$pas_e',$se,'$ip','$ios','$prompt')";	
				
				$sth = $dbh->prepare($query);
				$sth->execute();
				
				print "Menu Principal:1 Menu Anterior:2\n";
				$opcion=<STDIN>;
				borrar();
				opmenu2();
			}		
		    }		
}
################ fin de la funcion 


###############################################################################################################
############                     conectar_router($coman,$dat)		   ############
###############################################################################################################
#Esta es una funcion para conectarse al router y extraer informacion de un comando dado mediante una conexion telnet
#Parametros a recibir: $ip,$prompt,$password_usuario,$password_administrador,$dat
#$ip: Direccion ip del router a conectarse,sacada de la base de datos segun el usuario logueado al sistema
#$prompt:Prompt del router, este parametro es opcional, ya que por default es Router#, pero debido a que este puede cambiar  es sacado de la base de datos
#$password_usuario: Este es el password de usuario general del router
#$password_administrador:Este es el password de usuario Administrador que permite habilitar el modo enable en el router
# Como se llama a la funcion:  conectar_router($ip,$prompt,$password_usuario,$password_administrador,$dat)

#conectar_router(168.x.x.x,Tesis,Jueves!,!independencia,interfaces.txt)

sub conectar_router($coman,$dat)
{
system("rm datos");
use Expect;
		$exp = Expect->spawn("telnet $dat ")or die "Cannot spawn telnet: $!\n";;
		$exp->log_user(0);
		$patidx = $exp->expect(30, 'Password');
		$exp->send("cisco\r");

		$patidx = $exp->expect(30, 'Router>');
		$exp->send("enable\r");

		$patidx = $exp->expect(30, 'Password');
		$exp->send("cisco\r");

		$patidx = $exp->expect(30, 'Router#');
		
		$exp->log_file(datos);
		$exp->send($coman,"\r");

		$patidx = $exp->expect(30, 'Router#');
		$exp->send("quit\r");
		$exp->log_file;
		$exp->interact();
}
################ fin de la funcion 


###########################################################################################################
######                                  filtro()                                             ##############
###########################################################################################################
#Essta funcion permite el filtrado de la informacion de el retorno de un comando.

sub filtro()
{
open(DAT,datos) or die "i cant open the file";
while(<DAT>)
{
		s/Router#quit//eg;
		s/Connection closed by foreign host.//eg;
		print;
	
	}
}
################ fin de la funcion 



###########################################################################################################
######                                  volver()                                            ##############
###########################################################################################################
#Essta funcion permite el retorno de una opcion del menu hacia el menu principal.

sub volver()
{
	print "Si desea volver al menu ppal presione Y";
		$con=<STDIN>;
if ($con =='y')
{
	#procusr();
}
}
################ fin de la funcion 


##############################################################################################
######                                  asignar_routers_por_usuario()           ##############
######################################### ####################################################
#Essta funcion permite la asignacion de routersa usuarios, estafuncion no es maas que el
#uso de 6 funciones extras del sitema.
sub asignar_routers_por_usuario()
{
	list_router();
	verif_routers($id_r);
	list_usuarios();
	verif_usuarios($id_u);
	verif_routerXusr($id_r,$id_u);
   menus();
}
################ fin de la funcion 


#############################################################################
################         list_router()                  #####################
#############################################################################
#Esta funcion lista los routers del sistema
#Parametros que recibe:N-A
#Parametros que retorna:  $id_r: Identificador del router,$ip: direccion ip del router

sub list_router()
{		
		conectar();
		$validar ="select id_router,nombre_router,ip_router from routers";
		$sth = $dbh->prepare($validar);
		$sth->execute();
		print "Asignacion de Routers por usuario\n";
		print "Nombre del router\n";
		while(@row=$sth->fetchrow_array()) 
		{
print "  @row\n";
$ip=@row[2];
		}
		print "Seleccione el Id de  router:\n";
		$id_r=<STDIN>;
		chop $id_r;
		return($id_r,$ip);
}
################ fin de la funcion 

		
######################################################
###         list_usuarios()		   ###
######################################################
#Esta funcion lista los usuarios dell sistema
#Parametros que recibe:N-A
#Parametros que retorna:  $id_u: Identificador de el usuario

sub list_usuarios()
{		
		conectar();
		$validar ="select id_usuario,login_usuario from usuarios";
		$sth = $dbh->prepare($validar);
		$sth->execute();
		print "Nombre del usuario\n";
		while(@row=$sth->fetchrow_array()) 
		{
print "  @row\n";
		}
		print "Seleccione el Id de  Usuario:\n";
		$id_u=<STDIN>;
		chop $id_u;
		return($id_u);
}
################ fin de la funcion 


######################################################
###     verif_routers($id_r)             ####
######################################################
#Esta funcion Verifica los routers del sistema contra la eleecciion del usuario
#Parametros que recibe: $id_r: Identificador del routter
#Parametros que retorna:N-A

sub verif_routers($id_r)
{		
		conectar();
		$validar ="select id_router,nombre_router from routers where id_router='$id_r'";
		$sth=$dbh->prepare($validar);
		$sth->execute();
		@row=$sth->fetchrow_array();
if(@row)
{
 return(3);
 }  	 
else
{
   borrar();
   print "router incorrecto\n";
		list_router();
	}
}
################ fin de la funcion 



######################################################
###         verif_usuarios($id_u)   ###
######################################################
#Esta funcion Verifica los usuarios dell sistema
#Parametros que recibe: $id_u: Identificador de el usuario
#Parametros que retorna:N-A

sub verif_usuarios($id_u)
{		
		conectar();
		$validar ="select id_usuario,login_usuario from usuarios where id_usuario='$id_u'";
		$sth = $dbh->prepare($validar);
		$sth->execute();
		@row=$sth->fetchrow_array();
if(@row)
{
	return(6);
 }  	 
else
{
	borrar();
		print "usuario incorrecto\n";
		list_usuarios();
	}
	
}
################ fin de la funcion 



######################################################
###         verif_routerXusr($id_r,$id_u)		   ###
######################################################
#Esta funcion Verifica los routers que tiene asignados cada usuario
#Parametros que recibe:$id_r: Identificador de router, $id_u: Identificador de el usuario
#Parametros que retorna:N-A

sub verif_routerXusr($id_r,$id_u)
{		
		conectar();
		$validar ="select id_router,id_usuario FROM routers_asignados where id_router='$id_r' and id_usuario='$id_u'";
		$sth = $dbh->prepare($validar);
		$sth->execute();
		@row=$sth->fetchrow_array();
if(@row)
{
borrar();
print "Registro existente\n";
asignar_routers_por_usuario();
 }  	 
else
{
$query ="insert into routers_asignados values('NULL','$id_r','$id_u')";
		$sth = $dbh->prepare($query);
		$sth->execute();
		borrar();
		print "Usuario Agregado Correctamente\n";
	}
}
################ fin de la funcion 



######################################################
####ocultar_password()   ###
######################################################
#Esta funcion oculta el password en general de tal manera que cuando el password es solicitado
#no es visto por el usuario
#Parametros que recibe: N-A
#Valores que retorna:$pasword; El password capturado 

sub ocultar_password()
{
	use Term::ReadPassword;
	$password = read_password('password: ');
	redo unless defined $password;
	return ($password);
}
################ fin de la funcion 


######################################################
###	ocultar_password_e()          ####
######################################################

# Esta funcion oculta el password en modo enable de tal manera que cuando el password es solicitado
# no es visto por el usuario
# Parametros que recibe: N-A
# Valores que retorna:$pas_e; El password capturado 
sub ocultar_password_e()
{
	use Term::ReadPassword;
	$pas_e = read_password('Digite el password de super usuario: ');
	redo unless defined $pas_e;
	return ($pas_e);
}
################ fin de la funcion 
 


######################################################################
###	                       consola()																															###
######################################################################
# Funcion para generarle al usuaio una ventana de consola para el manejo del router mediante una conexion telnet

# Parametros a recibir: $ip,$prompt,$password_usuario,$password_administrador
# $ip: Direccion ip del router a conectarse,sacada de la base de datos segun el usuario logueado al sistema
# $prompt:Prompt del router, este parametro es opcional, ya que por default es Router
#, pero debido a que este puede cambiar  es sacado de la base de datos
# $password_usuario: Este es el password de usuario general del router
# $password_administrador:Este es el password de usuario Administrador que permite habilitar el modo enable en el router
# Como se llama a la funcion:  consola($ip,$prompt,$password_usuario,$password_administrador)
#consola(168.x.x.x,Tesis,Jueves!,!independencia)


sub consola()
{
	use Expect;
	$exp = Expect->spawn("telnet $dat") or die "Cannot spawn telnet: $!\n";
	$exp->log_user(0);
	$patidx = $exp->expect(30, 'Password:');
	$exp->send("cisco\r");

	$patidx = $exp->expect(30, 'Router>');
	$exp->send("enable\r");
	$patidx = $exp->expect(30, 'Password');
	$exp->send("cisco\r");
	$patidx = $exp->expect(30, 'Router#');
	#$exp->log_file(datos);
	$exp->send($coman,"\r");
	#$patidx = $exp->expect(30, 'Router#');	
	#$exp->send("quit\r");
	#$exp->log_file;
	$exp->interact();
}
################ fin de la funcion 
################ MENU DE INFORMACION  GENERAL DE ROUTER################ 
sub minforouter()
 {
borrar();
 print "####### INFORMACION GENERAL DE ROUTER############\n\n";
 print "#################################################\n\n";
 print "	1. Interfaces\n";
 print "	2. Protocolo de Enrutamiento\n";
 print "	3. Menoria Flash\n";
 print "	4. Tablas de host\n";
 print "	5. Listas de acceso\n";
 print "	6. Configuaracion inicial (NVRAM)\n";
 print "	7. Configuracion Activa(RAM)\n";
 print "	8. Version del IOS\n";
 print "	9. Secuencia de arranque\n";
 print "	10. Salir\n";
 print "#################################################\n\n";
 print "	\n";
 print "	Escoja el numero que identifica la actividad:\n";                      
 $choice=<STDIN>;
comandos();
return $choice;
 }


sub merutas()
{
borrar();
	print "#####################MENU RUTAS#################\n\n";
	print "################################################\n\n";
	print "\n";
	print "	1. Estaticas Y Dinamicas\n";
	print "	2. Router Vecinos\n";
	print "	3. Salir\n";
	print "################################################\n\n";
	print "	\n";
	print "	Escoja el numero que identifica la actividad:\n";                        
	$choice=<STDIN>;
	comandos2();
	return $choice
}

sub meinfointer()
	{
borrar();
	print "########MENU INFORMACION DE INTERFACES##########\n\n";
	print "             ################################################\n\n";
	print "	1. Ethernet\n";
	print "	2. Serial\n";
	print "	3. ISDN\n";
	print "	4. Salir\n";
	print "#################################################\n\n";
	print "	\n";
	print "	Escoja el numero que identifica la actividad:\n";      
	$choice=<STDIN>;
	comandos3();
	return $choice;
	}

sub memant()
{
	if ($cod=='1') {
	
	    	borrar();
			print "#################MENU MANTENIMIENTOS##########\n\n";
			print "##############################################\n\n";
			print "	1. Agregar Usuarios\n";
			print "	2. Agregar Routers\n";
			print "	3. Agregar Usuarios a Routers\n";
			print "	4. Salir\n";
			print "#################################################\n\n";
			print "	\n";
			print "	Escoja el numero que identifica la actividad:\n";      
			$choice=<STDIN>;
			comandos4();
			return $choice;
			}
			else
			{
			print "USTED NO TIENE ACCESO A ESTA OPCION!!!!!\n";
			sleep(2);
			borrar();
			men();
			}
}	

sub men()
{
			borrar();
			print "################  MENU PRINCIPAL ################\n";
			print "#################################################\n";
			print "	1. Informacion General del Router\n";
			print "	2. Rutas\n";
			print "	3. Informacion de Interfaces\n";
			print "	4. Mantenimiento\n";
			print "	5. Monitoreo\n"; 
			print "	6. Acerca del sistema\n";
			print "	7. Salir\n";
			print "#################################################\n";
			print "	\n";
			print "Escoja el numero que identifica la actividad:\n";  
			$choice=<STDIN>;
			if ($choice=='1')
			{
				minforouter();
			}
			else
				{
						if ($choice=='2')
						{
							merutas();
						}
						else
								{
									if ($choice=='3')
									{
										meinfointer();
									}
									else
										   {
													if ($choice=='4')
													{
														memant();
													}
													else
														  {
																if ($choice=='5')
																{
																	borrar();
																	comandos5();
																}
																else
																	  {	
																			if ($choice=='6')
																			{
																				acerca();
																			}
																	  }
																			if ($choice=='7')
																			{
																				print"Hasta pronto...";
																				print "	\n";
																				exit();
																			}
																			else
																				{
																				print"Opcion no valida";
																				 }
														  }
											}
								}
				}
}

sub opmenu()
{
		if ($opcion=='1')
		{
			borrar();
			print $dat;
			menus();
		}	
	  	else
			 {
				   $choice="";
					borrar();
					minforouter();
			 }
}

sub opmenu2()
{
		if ($opcion=='1')
		{
			$choice="";
			borrar();
			menus();
		 }
		 else
			  {
				 $choice="";
				 borrar();
				 merutas();
			  }
}

sub opmenu3()
{
		if ($opcion=='1')
		 {
			$choice="";
			 borrar();
			menus();
		 }
		  else
				{
					 $choice=""; 
					 borrar();
					 meinfointer();
				 }
}

sub opmenu4()
{
		if ($opcion=='1')
		{
			$choice="";
			 borrar();
			  menus();
		 }
		  else
				{
					  $choice="";
					 borrar();
					 memant();
				  }
}

sub acerca()
{
		  borrar();

print"                              e-router alisson										  ";
print"																							  ";
print"Herramienta Centralizada de Acceso Remoto a Routers Cisco";
print"																				  ";
print"Desarrollada por														  ";
print"		Isis C. Pineda Velasquez									  ";
print"		Xochitl Yasmin Diaz Cantizano							  ";
print"		Romeo Ernesto Quijano									  ";
print"																				  ";
print"Powered By Linux Debian & PERL 5.0.1					  ";
print "	\n";
print "Menu Principal:1														  ";
$opcion=<STDIN>;
men();
}