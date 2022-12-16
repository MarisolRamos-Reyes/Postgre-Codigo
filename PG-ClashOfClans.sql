Create Table Adorno
(
	IdAdorno serial primary key,
	Nombre varchar (50) not null,
	Costo int Not null,
	MaximoDisponible int Not null,
 	NivelNecesario int Not null,
 	Estatus boolean NOT NULL DEFAULT TRUE
);
Create Table Aldea
(
	IdAldea serial primary key,
	NumPlantas int Not null,
	NumEstructura int Not null,
	NumDefensas int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Animal
(
	IdAnimal serial Primary Key,
	IdHeroe int Not null,
	Nombre varchar (50) Not null,
	Vida int Not Null,
	Estatus BOOLEAN Not null DEFAULT TRUE
);
Create Table Asalto
(
	IdAsalto serial primary key,
	IdMagiaClan int Not null,
	ClanRival varchar (50) Not null,
	NombreCapitalCR varchar (50) Not null,
	Nivel int Not null,
	TiempoAsalto timestamp Not null,
	Estatus BOOLEAN Not null DEFAULT TRUE
);
Create Table Aspecto 
(
	IdAspecto serial primary key,
	IdHeroe int Not null,
	IdAnimal int Not null,
	NombreInactivo varchar (50) Not null,
	NombrePose varchar (50) Not null,
	NumDerivado int Not null,
	NumAvatido int Not null,
	NumPrevilisuacion int Not null,
	Estatus BOOLEAN Not null DEFAULT TRUE
);
Create Table Ataque
(
	IdAtaque serial primary key,
	IdAsalto Int Not null,
	NumTropas Int Not null,
	NumHechisos Int Not null,
	Estatus BOOLEAN Not null DEFAULT TRUE
);
Create Table AyuntamientoBaseConstructor
(
	IdAyuntamientoBaseConstructor serial primary key,
	IdObjetoMagico int Not Null,
	Nivel int Not null,
	CanitdadObjetosMagicos int Not null,
	Descripcion varchar (200) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Banco
(
 	IdBanco serial primary key,
	Nombre varchar (50) Not null,
	Telefono varchar (50) Not null,
 	Correo varchar (50) Not Null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Chat
(
	IdChat serial primary key,
	NombreJugador varchar (50) Not null,
	Mensaje varchar (50) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Clan
(
	IdClan serial primary key,
	IdChat int Not null,
	IdMagiaClan int Not null,
	Nombre varchar (50) Not null,
	Descipcion varchar (50) Not null,
	TipoDeClan varchar (50) Not null,
	MinimoTropas int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table ClanDonacion
(
	IdClanDonacion serial primary key,
	IdClan int Not null,
	IdDonacion int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table ClanJuegoClan
(
	IdClanJuegoClan serial primary key,
	IdClan int Not null,
	IdJuegoClan int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table ClanOfertaSemanal
(
	IdClanOfertaSemanal serial primary key,
	IdClan int Not null,
	IdOfertaSemanal int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table ClanPedido
(
	IdClanPedido serial primary key,
	IdClan int Not null,
	IdPedido int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table CompaniaIndividual
(
	IdCompaniaIndividual serial primary key,
	Nivel int Not null,
	CantidadEstrellas int Not null,
	CantidadGemas int Not null,
	CatidadOro int Not null,
	CantidadElixir int Not null,
	CantidadNegro int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Compra
(
	IdCompra serial primary key,
	IdRecompensa int Not null,
	IdPaisaje int Not null,
	IdAdorno int Not null,
	IdFormaPago int Not null,
	IdConstructor int Not null,
	IdPaseBatalla int Not null,
	IdForja int Not null,
	IdAspecto int Not null,
	IdEstructura int Not null,
	IdDefensa int Not null,
	IdTienda int Not null,
	IdRecurso int Not null,
	NombreProducto varchar (50) Not null,
	Recurso varchar (50) Not null,
	PrecioProducto int Not null,
	CantidadProducto int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table CompraDefensa
(
	IdCompraDefensa serial primary key,
	IdCompra int Not null,
	IdDefensa int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table CompraHechiso
(
	IdCompraHechiso serial primary key,
	IdCompra int Not null,
	IdHechiso int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table CompraMuro
(
	IdCompraMuro serial primary key,
	IdCompra int Not null,
	IdMuro int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table CompraTienda
(
	IdCompraTienda serial primary key,
	IdCompra int Not null,
	IdTienda int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table CompraTropa
(
	IdCompraTropa serial primary key,
	IdCompra int Not null,
	IdTropa int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Constructor
(
	IdConstructor serial primary key,
	NumChosa int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Defensa
(
	IdDefensa serial primary key,
	Nombre varchar (50) Not null,
	Nivel int Not null,
	Funcion varchar (200) Not null, 
	Cantidad int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Desafio 
(
	IdDesafio serial primary key,
	IdJugador int Not null,
	Nombre varchar (50) Not null,
	Descripcion varchar (200) Not null, 
	Puntos int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
); 
Create Table Donacion
(
	IdDonacion serial primary key,
	NombreJugador varchar (50) Not null,
	NunTropas int Not null,
	NumumHechisos int Not null,
	NumDefensas int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Ejercito
(
	IdEjercito serial primary key,
	IdJugador int Not null,
	NumDefensa int Not null,
	NumHechiso int Not null,
	NumHeroe int Not null,
	NumEjercito int Not null,
	MaquinaAsendio varchar (50) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Estructura
(
	IdEstructura serial primary key,
	Nombre varchar (50) Not null,
	Descripcion varchar (200) Not null,
	PosimaAceleracion int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Evento
(
	IdEvento serial primary key,
	IdTemporada int Not null,
	Nombre varchar (50) Not null,
	FechaInicio TIMESTAMP Not null,
	FechaFinal TIMESTAMP Not null,
	Descripcion varchar (200) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Forja
(
	IdForja serial primary key,
	NombreRecurso varchar (50) Not null,
	CantidadRecurso int Not null,
	TiempoForjado TIMESTAMP Not null,
	NumConstructores int Not null,
	CantidadForjada int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table FormaPago
(
	IdFormaPago serial primary key,
	IdBanco int Not null,
	TipoTarjeta varchar (50) Not null,
	NumTarjeta int Not null,
	FechaVencimiento TIMESTAMP Not null,
	CVV int Not null,
	TotalCompra int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table GuerraClan
(
	IdGuerraClan serial primary key,
	IdClan int Not null,
	NombreCR varchar (50) Not null,
	NumParticipantesCR int Not null,
	NumEstrellasCR int Not null, 
	RecompensaOroCR int Not null, 
	RecompensaElixirCR int Not null, 
	NumTrofeosCR int Not null, 
	NombreCC varchar (50) Not null,
	NumParticipantesCC int Not null,
	NumEstrellasCC int Not null, 
	RecompensaOroCC int Not null, 
	RecompensaElixirCC int Not null, 
	NumTrofeosCC int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table GuerraClanMedalla
(
	IdGuerraClanMedalla serial primary key,
	IdGuerraClan int Not null,
	IdMedalla int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Hechiso
(
	IdHechiso serial primary key,
	Nombre varchar (50) Not null,
	Nivel int Not null,
	Dano int Not null,
	Costo int Not null,
	Tiempo TIMESTAMP Not null, 
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Heroe
(
	IdHeroe serial primary key,
	IdAyuntamientoBaseConstuctor int Not null,
	Nombre varchar (50) Not null,
	Dano int Not null,
	Vida int Not null,
	TiempoRegeneracion TIMESTAMP Not null,
	NivelHabilidad int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Investigacion
(
	IdInvestigacion serial primary key,
	NombreInvestigacion varchar (50) Not null,
	SiguienteNivel int Not null,
	Vida int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table InvestigacionHechiso
(
	IdInvestigacionHechiso serial primary key,
	IdInvestigacion int Not null, 
	IdHechiso int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table InvestigacionTropa
(
	IdInvestigacionTropa serial primary key,
	IdInvestigacion int Not null,
	IdTropa int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table JuegoClan
(
	IdJuegoClan serial primary key,
	NombreJuegoClan varchar (50) Not null,
	NombreJugador varchar (50) Not null,
	puntos int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Jugador
(
	IdJugador serial primary key,
	IdTesoreria int Not null,
	IdAldea int Not null,
	IdClan int Not null,
	IdCompaniaIndividual int Not null,
	Alias varchar (50) Not null,
	Nombre varchar (50) Not null,
	APaterno varchar (50) Not null,
	AMaterno varchar (50) Not null,
	Correo varchar (50) Not null,
	Contrasena varchar (50) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table JugadorLigaJugador
(
	IdJugadorLigaJugador serial primary key,
	IdJugador int Not null,
	IdLigaJugador int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table JugadorModoJuego
(
	IdJugadorModoJuego serial primary key,
	IdJugador int Not null,
	IdModoJuego int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table JugadorRango
(
	IdJugadorRango serial primary key,
	IdJugador int Not null,
	IdRango int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table JugadorTemporada
(
	IdJugadorTemporada serial primary key,
	IdJugador int Not null,
	IdTemporada int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table JugadorTienda
(
	IdJugadorTienda serial primary key,
	IdJugador int Not null,
	IdTienda int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table JugadorTutorial
(
	IdJugadorTutorial serial primary key,
	IdJugador int Not null,
	IdTutorial int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table LigaJugador
(
	IdLigaJugador serial primary key,
	NumeroLiga int Not null,
	JugadorRival varchar (50) Not null,
	JugadorContricante varchar (50) Not null,
	NumElixirint int Not null,
	NumOro int Not null,
	NumNegro int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table LigaJugadorRecompensa
(
	IdLigaJugadorRecompensa serial primary key,
	IdLigaJugador int Not null,
	IdRecompensa int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Logro
(
	IdLogro serial primary key,
	IdLigaJugador int Not null,
	Nombre varchar (50) Not null,
	Experiencia int Not null,
	Gemas int Not null,
	Descripcion varchar (200) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table MagiaClan
(
	IdMagiaClan serial primary key,
	NombreCapital varchar (50) Not null,
	Nivel int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table MaquinaAsedio
(
	IdMaquinaAsedio serial primary key,
	IdEjercito int Not null,
	Nombre varchar (50) Not null,
	Funcion varchar (100) Not null,
	Dano int Not null,
	Cantidad int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Medalla
(
	IdMedalla serial primary key,
	Nombre varchar (50) Not null,
	Victoria int Not null,
	Estrella int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Mejora
(
	IdMejora serial primary key,
	IdDefensa int Not null,
	IdTropa int Not null,
	IdHechiso int Not null,
	IdEstructura int Not null,
	IdMuro int Not null,
	IdJugador int Not null,
	IdAyuntamientoBaseConstuctor int Not null,
	NombreMejora varchar (50) Not null,
	TiempoUtilisado TIMESTAMP Not null,
	NombreRecurso varchar (50) Not null,
	Cantidad int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table ModoJuego
(
	IdModoJuego serial primary key,
	IdCompania int Not null,
	IdLigaGuerraClanes int Not null,
	IdPractica int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Muro
(
	IdMuro serial primary key,
	Nombre varchar (50) Not null,
	Nivel int Not null,
	Costo int Not null,
	NivelDano int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE 
);
Create Table ObjetoMagico
(
	IdObjetoMagico serial primary key,
	Nombre varchar (50) Not null,
	MaximoCapacidad int Not null,
	PrecioVenta int Not null,
	uso varchar (50) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE 
);
Create Table OfertaSemanal
(
	IdOfertaSemanal serial primary key,
	NombreProducto varchar (50) Not null,
	CantidadGemas int Not null,
	MaximoDisponible int Not null,
	TiempoCarga TIMESTAMP Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE 
);
Create Table Paisaje 
(
	IdPaisaje serial primary key,
	IdAldea int Not null,
	Nombre varchar (50) Not null,
	Descripcion varchar (100) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE 
);
Create Table PaseBatalla
(
	IdPaseBatalla serial primary key,
	NoTemporada int Not null,
	Duracion TIMESTAMP Not null,
	Donaciones int Not null, 
	Beneficios varchar (200) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Pedido
(
	IdPedido serial primary key,
	NombreJugador varchar (50) Not null,
	NumTropas int Not null,
	NumHechisos int Not null,
	NumDefensas int Not null,
	Tiempo TIMESTAMP Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Practica
(
	IdPractica serial primary key,
	IdCompaniaIndividual int Not null,
	Nivel int Not null,
	NumTropasRemplaso int Not null,
	NombreCampoBatalla varchar (50) Not null,
	CantidadOro int Not null,
	CantidadElixir int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Rango
(
	IdRango serial primary key,
	Nombre varchar (50) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table RangoMedalla
(
	IdRangoMedalla serial primary key,
	IdRango int Not null,
	IdMedalla int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Recompensa
(
	IdRecompensa serial primary key,
	Nombre varchar (50) Not null,
	Requerimiento varchar (50) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Recurso
(
	IdRecurso serial primary key,
	IdTesoreria int Not null,
	Nombre varchar (50) Not null,
	LugarAlmacen varchar (50) Not null,
	Cantidad int Not null,
	Descripcion varchar (50) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Temporada
(
	IdTemporada serial primary key,
	Numero int Not null,
	Nombre varchar (50) Not null,
	FechaInicial TIMESTAMP Not null,
	FechaFinal TIMESTAMP Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Tesoreria
(
	IdTesoreria serial primary key,
	NombreRecurso varchar (50) Not null,
	CantidadAoE int Not null,
	LugarAlmacen varchar (50) Not null,
	CantidadTotal int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Tienda
(
	IdTienda serial primary key,
	NombreProducto varchar (50) Not null,
	Recurso varchar (50) Not null,
	PrecioProducto int Not null,
	MaxCantidad int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Tropa
(
	IdTropa serial primary key,
	Nombre varchar (50) Not null,
	Nivel int Not null,
	DanoxSegundo int Not null,
	Vida int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Tutorial
(
	IdTutorial serial primary key,
	Nombre varchar (50) Not null,
	Duracion TIMESTAMP Not null,
	Descripcion varchar (100) Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Create Table Venta
(
	IdVenta serial primary key,
	IdObjetoMagico int Not null,
	NombreObjetoMagico varchar (50) Not null,
	CanitidadGemas int Not null,
	CanitdadObjetoMagico int Not null,
	Estatus BOOLEAN NOT NULL DEFAULT TRUE
);
Alter Table Animal add constraint FK_AnimalHeroe foreign key (IdHeroe)References
Heroe(IdHeroe);
Alter Table Asalto add constraint FK_AsaltoMagiaClan foreign key (IdMagiaClan)References
MagiaClan(IdMagiaClan);
Alter Table Aspecto add constraint FK_AspectoHeroe foreign key (IdHeroe)References
Heroe(IdHeroe);
Alter Table Aspecto add constraint FK_AspectoAnimal foreign key (IdAnimal)References
Animal(IdAnimal);
Alter Table Ataque add constraint FK_AtaqueAsalto foreign key (IdAsalto)References
Asalto(IdAsalto);
Alter Table AyuntamientoBaseConstructor add constraint FK_AyuntamientoBaseConstructorObjetoMagico foreign key (IdObjetoMagico)References
ObjetoMagico(IdObjetoMagico);
Alter Table Clan add constraint FK_ClanChat foreign key (IdChat)References
Chat(IdChat);
Alter Table Clan add constraint FK_ClanMagiaClan foreign key (IdMagiaClan)References
MagiaClan(IdMagiaClan);
Alter Table ClanDonacion add constraint FK_ClanDonacionClan foreign key (IdClan)References
Clan(IdClan);
Alter Table ClanDonacion add constraint FK_ClanDonacionDonacion foreign key (IdDonacion)References
Donacion(IdDonacion);
Alter Table ClanJuegoClan add constraint FK_ClanJuegoClanClan foreign key (IdClan)References
Clan(IdClan);
Alter Table ClanJuegoClan add constraint FK_ClanJuegoClanJuegoClan foreign key (IdJuegoClan)References
JuegoClan(IdJuegoClan);
Alter Table ClanOfertaSemanal add constraint FK_ClanOfertaSemanalClan foreign key (IdClan)References
Clan(IdClan);
Alter Table ClanOfertaSemanal add constraint FK_ClanOfertaSemanalOfertaSemanal foreign key (IdOfertaSemanal)References
OfertaSemanal(IdOfertaSemanal);
Alter Table ClanPedido add constraint FK_ClanPedidoClan foreign key (IdClan)References
Clan(IdClan);
Alter Table ClanPedido add constraint FK_ClanPedidoPedido foreign key (IdPedido)References
Pedido(IdPedido);
Alter Table Compra add constraint FK_CompraRecompensa foreign key (IdRecompensa)References
Recompensa(IdRecompensa);
Alter Table Compra add constraint FK_CompraPaisaje foreign key (IdPaisaje)References
Paisaje(IdPaisaje);
Alter Table Compra add constraint FK_CompraAdorno foreign key (IdAdorno)References
Adorno(IdAdorno);
Alter Table Compra add constraint FK_CompraFormaPago foreign key (IdFormaPago)References
FormaPago(IdFormaPago);
Alter Table Compra add constraint FK_CompraConstructor foreign key (IdConstructor)References
Constructor(IdConstructor);
Alter Table Compra add constraint FK_CompraPaseBatalla foreign key (IdPaseBatalla)References
PaseBatalla(IdPaseBatalla);
Alter Table Compra add constraint FK_CompraForja foreign key (IdForja)References
Forja(IdForja);
Alter Table Compra add constraint FK_CompraAspecto foreign key (IdAspecto)References
Aspecto(IdAspecto);
Alter Table Compra add constraint FK_CompraEstructura foreign key (IdEstructura)References
Estructura(IdEstructura);
Alter Table Compra add constraint FK_CompraDefensa foreign key (IdDefensa)References
Defensa(IdDefensa);
Alter Table Compra add constraint FK_CompraTienda foreign key (IdTienda)References
Tienda(IdTienda);
Alter Table Compra add constraint FK_CompraRecurso foreign key (IdRecurso)References
Recurso(IdRecurso);
Alter Table CompraDefensa add constraint FK_CompraDefensaCompra foreign key (IdCompra)References
Compra(IdCompra);
Alter Table CompraDefensa add constraint FK_CompraDefensaDefensa foreign key (IdDefensa)References
Defensa(IdDefensa);
Alter Table CompraHechiso add constraint FK_CompraHechisoCompra foreign key (IdCompra)References
Compra(IdCompra);
Alter Table CompraHechiso add constraint FK_CompraHechisoHechiso foreign key (IdHechiso)References
Hechiso(IdHechiso);
Alter Table CompraMuro add constraint FK_CompraMuroCompra foreign key (IdCompra)References
Compra(IdCompra);
Alter Table CompraMuro add constraint FK_CompraMuroMuro foreign key (IdMuro)References
Muro(IdMuro);
Alter Table CompraTienda add constraint FK_CompraTiendaCompra foreign key (IdCompra)References
Compra(IdCompra);
Alter Table CompraTienda add constraint FK_CompraTiendaTienda foreign key (IdTienda)References
Tienda(IdTienda);
Alter Table CompraTropa add constraint FK_CompraTropaCompra foreign key (IdCompra)References
Compra(IdCompra);
Alter Table CompraTropa add constraint FK_CompraTropaTropa foreign key (IdTropa)References
Tropa(IdTropa);
Alter Table Desafio add constraint FK_DesafioJugador foreign key (IdJugador)References
Jugador(IdJugador);
Alter Table Ejercito add constraint FK_EjercitoJugador foreign key (IdJugador)References
Jugador(IdJugador);
Alter Table Evento add constraint FK_EventoTemporada foreign key (IdTemporada)References
Temporada(IdTemporada);
Alter Table FormaPago add constraint FK_FormaPagoBanco foreign key (IdBanco)References
Banco(IdBanco);
Alter Table GuerraClan add constraint FK_GuerraClanClan foreign key (IdClan)References
Clan(IdClan);
Alter Table GuerraClanMedalla add constraint FK_GuerraClanMedallaGuerraClan foreign key (IdGuerraClan)References
GuerraClan(IdGuerraClan);
Alter Table GuerraClanMedalla add constraint FK_GuerraClanMedallaMedalla foreign key (IdMedalla)References
Medalla(IdMedalla);
Alter Table Heroe add constraint FK_HeroeAyuntamientoBaseConstructor foreign key (IdAyuntamientoBaseConstuctor)References
AyuntamientoBaseConstructor(IdAyuntamientoBaseConstructor);
Alter Table InvestigacionHechiso add constraint FK_InvestigacionHechisoInvestigacion foreign key (IdInvestigacion)References
Investigacion(IdInvestigacion);
Alter Table InvestigacionHechiso add constraint FK_InvestigacionHechisoHechiso foreign key (IdHechiso)References
Hechiso(IdHechiso);
Alter Table InvestigacionTropa add constraint FK_InvestigacionTropaInvestigacion foreign key (IdInvestigacion)References
Investigacion(IdInvestigacion);
Alter Table InvestigacionTropa add constraint FK_InvestigacionTropaTropa foreign key (IdTropa)References
Tropa(IdTropa);
Alter Table Jugador add constraint FK_JugadorTesoreria foreign key (IdTesoreria)References
Tesoreria(IdTesoreria);
Alter Table Jugador add constraint FK_JugadorAldea foreign key (IdAldea)References
Aldea(IdAldea);
Alter Table Jugador add constraint FK_JugadorClan foreign key (IdClan)References
Clan(IdClan);
Alter Table Jugador add constraint FK_JugadorCompaniaIndividual foreign key (IdCompaniaIndividual)References
CompaniaIndividual(IdCompaniaIndividual);
Alter Table JugadorLigaJugador add constraint FK_JugadorLigaJugadorJugador foreign key (IdJugador)References
Jugador(IdJugador);
Alter Table JugadorLigaJugador add constraint FK_JugadorLigaJugadorLigaJugador foreign key (IdLigaJugador)References
LigaJugador(IdLigaJugador);
Alter Table JugadorModoJuego add constraint FK_JugadorModoJuegorJugador foreign key (IdJugador)References
Jugador(IdJugador);
Alter Table JugadorModoJuego add constraint FK_JugadorModoJuegoModoJugador foreign key (IdModoJuego)References
ModoJuego(IdModoJuego);
Alter Table JugadorRango add constraint FK_JugadorRangoJugador foreign key (IdJugador)References
Jugador(IdJugador);
Alter Table JugadorRango add constraint FK_JugadorRangoRango foreign key (IdRango)References
Rango(IdRango);
Alter Table JugadorTemporada add constraint FK_JugadorTemporadaJugador foreign key (IdJugador)References
Jugador(IdJugador);
Alter Table JugadorTemporada add constraint FK_JugadorTemporadaTemporada foreign key (IdTemporada)References
Temporada(IdTemporada);
Alter Table JugadorTienda add constraint FK_JugadorTiendaJugador foreign key (IdJugador)References
Jugador(IdJugador);
Alter Table JugadorTienda add constraint FK_JugadorTiendaTienda foreign key (IdTienda)References
Tienda(IdTienda);
Alter Table JugadorTutorial add constraint FK_JugadorTutorialJugador foreign key (IdJugador)References
Jugador(IdJugador);
Alter Table JugadorTutorial add constraint FK_JugadorTutorialTutorial foreign key (IdTutorial)References
Tutorial(IdTutorial);
Alter Table LigaJugadorRecompensa add constraint FK_LigaJugadorRecompensaLigaJugador foreign key (IdLigaJugador)References
LigaJugador(IdLigaJugador);
Alter Table LigaJugadorRecompensa add constraint FK_LigaJugadorRecompensaRecompensa foreign key (IdRecompensa)References
Recompensa(IdRecompensa);
Alter Table MaquinaAsedio add constraint FK_MaquinaAsedioEjercito foreign key (IdEjercito)References
Ejercito(IdEjercito);
Alter Table Mejora add constraint FK_MejoraDefensa foreign key (IdDefensa)References
Defensa(IdDefensa);
Alter Table Mejora add constraint FK_MejoraTropa foreign key (IdTropa)References
Tropa(IdTropa);
Alter Table Mejora add constraint FK_MejoraHechiso foreign key (IdHechiso)References
Hechiso(IdHechiso);
Alter Table Mejora add constraint FK_MejoraEstructura foreign key (IdEstructura)References
Estructura(IdEstructura);
Alter Table Mejora add constraint FK_MejoraMuro foreign key (IdMuro)References
Muro(IdMuro);
Alter Table Mejora add constraint FK_MejoraJugador foreign key (IdJugador)References
Jugador(IdJugador);
Alter Table Mejora add constraint FK_MejoraAyuntamientoBaseConstructor foreign key (IdAyuntamientoBaseConstuctor)References
AyuntamientoBaseConstructor(IdAyuntamientoBaseConstructor);
Alter Table ModoJuego add constraint FK_ModoJuegoCompaniaIndividual foreign key (IdCompania)References
CompaniaIndividual(IdCompaniaIndividual);
Alter Table ModoJuego add constraint FK_ModoJuegoLigaJugador foreign key (IdLigaGuerraClanes)References
LigaJugador(IdLigaJugador);
Alter Table ModoJuego add constraint FK_ModoJuegoPractica foreign key (IdPractica )References
Practica (IdPractica);
Alter Table Paisaje add constraint FK_PaisajeAldea foreign key (IdAldea)References
Aldea(IdAldea);
Alter Table Practica add constraint FK_PracticaCompaniaIndividual foreign key (IdCompaniaIndividual)References
CompaniaIndividual(IdCompaniaIndividual);
Alter Table RangoMedalla add constraint FK_RangoMedallaRango foreign key (IdRango)References
Rango(IdRango);
Alter Table RangoMedalla add constraint FK_RangoMedallaMedalla foreign key (IdMedalla)References
Medalla(IdMedalla);
Alter Table Recurso add constraint FK_RecursoTesoreria foreign key (IdTesoreria)References
Tesoreria(IdTesoreria);
Alter Table Venta add constraint FK_VentaObjetoMagico foreign key (IdObjetoMagico)References
ObjetoMagico(IdObjetoMagico);
Alter Table Logro add constraint FK_LogroLigaJugador foreign key (IdLigaJugador) References
LigaJugador(IdLigaJugador);

Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Antorcha', 500, 4, 5);
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Maciso de acianos', 2500, 4, 2);
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Maciso de girasoles', 2500, 4, 5);
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Valeta', 10000, 1, 7);
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Calavera antigua', 500000,1, 10);
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Estatua de la P.E.K.K.A', 1000000, 1, 3);
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Bandera blanca', 5000, 1, 6);
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Bandera pirata', 500, 1, 7);
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Estatua de poder de héroe', 500, 4, 5);
Insert Into Adorno(Nombre,Costo,MaximoDisponible,NivelNecesario) values ('Bandera de reunion', 15000, 5, 5);
UPDATE Adorno Set Nombre ='Bandera clan' WHERE IdAdorno = '1';
Delete from  Adorno where IdAdorno ='3';
Select * from Adorno;

--Tabla Aldea
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (20, 50, 40);
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (23, 43, 33);
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (27, 65, 30);
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (40, 25, 10);
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (50, 20, 40);
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (29, 31, 45);
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (34, 34, 43);
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (7, 18, 15);
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (27, 13, 32);
Insert Into Aldea(NumPlantas,NumDefensas,NumEstructura) values (18, 26, 46);
UPDATE Aldea Set NumDefensas ='23' WHERE IdAldea = '6';
Delete from  Aldea where IdAldea ='1';
Select * from Aldea;

--Tabla Banco
Insert Into Banco(Nombre,Telefono,Correo) values ('Afirme','800-223-47-63','Afirme@gmail.com');
Insert Into Banco(Nombre,Telefono,Correo) values ('HSBC','55-5721-22-22','mexico_une@hsbc.com.mx');
Insert Into Banco(Nombre,Telefono,Correo) values ('Banorte','55-5268-16-78','www.banorte.com');
Insert Into Banco(Nombre,Telefono,Correo) values ('BBVA','55-5621-3434','www.bbva.mx');
Insert Into Banco(Nombre,Telefono,Correo) values ('Scotiabank','55-5123-0000','www.scotiabank.com.mx');
Insert Into Banco(Nombre,Telefono,Correo) values ('BancoMultiva','55 5284 6200','www.multiva.com.mx');
Insert Into Banco(Nombre,Telefono,Correo) values ('ABCCapitalBanco','(81) 4000 5000','www.abccapital.com.mx');
Insert Into Banco(Nombre,Telefono,Correo) values ('BancaMifel','55 5282 7800','www.mifel.com.mx');
Insert Into Banco(Nombre,Telefono,Correo) values ('BancoAsteca','55 1720 7000','www.bancoasteca.com.mx');
Insert Into Banco(Nombre,Telefono,Correo) values ('BancoInversa','55 5625 4900','www.inbursa.com.mx');
UPDATE Banco Set Nombre ='Santander' WHERE IdBanco = '19';
Delete from  Banco where IdBanco ='2';
Select * from Banco;

--Tabla chat
Insert Into Chat(NombreJugador,Mensaje ) values ('Marisol2804','hola');
Insert Into Chat(NombreJugador,Mensaje ) values ('Brandon1812','¿cuando inicia la temporda?');
Insert Into Chat(NombreJugador,Mensaje ) values ('Marisol2804','la tempoprada inicia cada dia primero del mes');
Insert Into Chat(NombreJugador,Mensaje ) values ('Evelin0115','Juemos una guerra clan');
Insert Into Chat(NombreJugador,Mensaje ) values ('Pablo1017','necesito tropas ');
Insert Into Chat(NombreJugador,Mensaje ) values ('Yahir0923','yo tengo 10 arqueras');
Insert Into Chat(NombreJugador,Mensaje ) values ('Gilberto1289','tambien dono 5 montapuercos');
Insert Into Chat(NombreJugador,Mensaje ) values ('Raquel2315','necesito que se conecten  las 10:00PM');
Insert Into Chat(NombreJugador,Mensaje ) values ('Marisol2804','okey raquel2315');
Insert Into Chat(NombreJugador,Mensaje ) values ('Marcos0630','incio de guerra de clanes a las 9:30');
UPDATE Chat Set NombreJugador ='Ruben2360' WHERE IdChat = '9';
Delete from  Chat where IdChat ='2';
Select * from Chat;
--Tabla Compania individual
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (5,500,56,20000000,2365000, 23541);
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (8,1298,263,63035507,3232365, 87561);
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (9,9841,789,4203500,25452454, 44245274);
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (6,632,5345,5212044,45440000, 45544);
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (4,124,20,424457,45400, 42430);
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (5,526,56,324124440,242424244, 45242);
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (9,10013,74,455,2365000,54542);
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (5,526,56,324124440,242424244, 45242);
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (9,10013,74,455,2365000,54542);
Insert Into CompaniaIndividual(Nivel,CantidadEstrellas,CantidadGemas,CatidadOro,CantidadElixir,CantidadNegro ) values (4,124,20,424457,45400, 42430);
UPDATE CompaniaIndividual Set Nivel ='14' WHERE IdCompaniaIndividual = '7';
Delete from  CompaniaIndividual where IdCompaniaIndividual ='4';
Select * from CompaniaIndividual;

--Tabla constructor
Insert Into Constructor(NumChosa) values (31);
Insert Into Constructor(NumChosa) values (2);
Insert Into Constructor(NumChosa) values (43);
Insert Into Constructor(NumChosa) values (54);
Insert Into Constructor(NumChosa) values (5);
Insert Into Constructor(NumChosa) values (16);
Insert Into Constructor(NumChosa) values (27);
Insert Into Constructor(NumChosa) values (48);
Insert Into Constructor(NumChosa) values (19);
Insert Into Constructor(NumChosa) values (10);
UPDATE Constructor Set NumChosa ='14' WHERE IdConstructor = '2';
Delete from  Constructor where IdConstructor ='5';
Select * from Constructor;

--Tabla defensa
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Canon',7,'Defender cualquier sona de la aldea',7);
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Torre de arqueras',8,'Pueden atacar enemigos voladores',4);
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Muro',5,'Mantener a los aldeanos a salvo',300);
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Mortero',4,'Puede acabar con ordas de enemigos',2);
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Cohete de defensa',4,'Solamente ataca enemigos voladores',6);
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Torre mago',9,'Lasan potentes hechisos',5);
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Conntrolador aéreo',2,'Controla los cielos con potentes rafagas',8);
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Torre Tesla',4,'Si un enemigo se acerca esta inicia el ataque',2);
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Ballesta',7,'Lansa rayos misticos a los enemigos',4);
Insert Into Defensa(Nombre,Nivel,Funcion,Cantidad) values ('Aguila de artilleria',9,'Tiene un alcance casi limitado y lansa obuses',4);
UPDATE Defensa Set Nombre ='Catapulta' WHERE IdDefensa = '2';
Delete from  Defensa where IdDefensa ='9';
Select * from Defensa ;

--Tabla Donación
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Marisol2804',9,4,1);
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Brandon1812',6,2,9);
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Evelin0115',10,12,3);
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Pablo1017',6,3,1);
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Yahir0923',9,11,2);
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Gilberto1289',11,6,3);
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Raquel2315',7,2,12);
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Marcos0630',15,5,14);
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Dany0105',20,13,8);
Insert Into Donacion(NombreJugador,NunTropas,NumumHechisos,NumDefensas) values ('Oscar1202',12,5,10);
UPDATE Donacion Set NombreJugador ='Carlos4576' WHERE IdDonacion = '5';
Delete from  Donacion where IdDonacion ='7';
Select * from Donacion;
--Tabla Estructura

Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Caldero de hechisos','Creación de hechisos para enfretamientos',1);
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Laboratorio','Mejora de las defensas',2);
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Caldero de hechisos oscucuros','Creación de hechisos oscuros para enfretamientos',6);
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Campamento oscucuros','Creación del ejercito',3);
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Caldero de hechisos oscucuros','Creación de hechisos oscuros para enfretamientos',6);
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Torre del reloj','Acelerea el tiempo e la aldea oscura',5);
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Caldero de hechisos','Creación de hechisos para enfretamientos',1);
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Campamento oscucuros','Creación del ejercito',5);
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Caldero de hechisos oscucuros','Creación de hechisos oscuros para enfretamientos',10);
Insert Into Estructura(Nombre,Descripcion,PosimaAceleracion) values ('Torre del reloj','Acelerea el tiempo e la aldea oscura',7);
UPDATE Estructura Set Nombre ='Laboratorio' WHERE IdEstructura = '10';
Delete from  Estructura where IdEstructura ='7';
Select * from Estructura;

--Tabla forja 
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oro',4200000,2,1,14000);
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Elixir',4200000,'2022-12-03 01:00:00.000',2,14000);
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oscuro',2100000,'2022-12-03 03:30:00.000',1,7000);
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Elixir',3600000,'2022-12-03 04:00:00.000',2,10000);
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oscuro',4200000,'2022-12-03 02:30:00.000' ,1,14000);
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oro',6500000,'2022-12-03 05:00:00.000',1,20000);
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oro',100000,'2022-12-03 02:00:00.000',1,12000);
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oro',4200000,'2022-12-03 02:21:00.000',1,14000);
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Elixir',4200000,'2022-12-03 02:45:00.000',2,14000);
Insert Into Forja(NombreRecurso,CantidadRecurso,TiempoForjado,NumConstructores,CantidadForjada) values ('Oscuro',2100000,'2022-12-03 03:00:00.000',1,7000);
UPDATE Forja Set NombreRecurso ='Oro' WHERE IdForja = '4';
UPDATE Forja Set TiempoForjado ='2022-12-03 02:00:00.000' WHERE IdForja = '1';
Delete from  Forja where IdForja ='7';
Select * from Forja;

--Tabla Hechiso
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Rayo',3,210,5,'0:02:00.000');
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Furia',2,220,8,'0:06:00.000');
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Hielo',3,150,4,'0:03:00.000');
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Curativo',5,0,2,'0:06:00.000');
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Salto',2,250,6,'0:06:00.000');
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Clonador',2,300,10,'0:09:00.000');
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Invisibilidad',1,280,5,'0:03:00.000');
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Veneno',1,150,5,'0:03:00.000');
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Aceleración',2,150,5,'0:03:00.000');
Insert Into Hechiso(Nombre,Nivel,Dano,Costo,Tiempo) values ('Terremoto',1,200,9,'0:03:00.000');
UPDATE Hechiso Set Nombre = 'Esqueleto' WHERE IdHechiso = '5';
Delete from  Hechiso where IdHechiso ='7';
Select * from Hechiso;
--Tabla Investigacion
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Barbaro',4,82);
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Arquera',8,52);
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Duende',4,50);
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Esqueleto',2,24);
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Gigante',5,800);
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Mago',4,135);
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Dragón',6,3400);
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Curandera',3,900);
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('P.E.K.K.A',5,5000);
Insert Into Investigacion(NombreInvestigacion,SiguienteNivel,Vida) values('Bebe dragón',3,1400);
UPDATE Investigacion Set NombreInvestigacion = 'Valquiria' WHERE IdInvestigacion = '8';
Delete from Investigacion where IdInvestigacion ='7';
Select * from Investigacion;

--Juego clan
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Elimina canones', 'Marisol2804',30);
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Elimina vallestas', 'Brandon1812',50);
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Usar arqueras', 'Evelin0115',25);
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Mejorar almacen de elixir', 'Pablo1017',45);
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Elaborar hechiso venenoso', 'Yahir0923',15);
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Mejoarar al dragon', 'Gilberto1289',20);
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Donar a un companero', 'Raquel2315',27);
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Ganar 3 juegos seguidos', 'Oscar1202',32);
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Ganar 3 estrellas en una sola partida ', 'Dany0105',43);
Insert Into JuegoClan(NombreJuegoClan,NombreJugador,puntos) values ('Donar tropas ', 'Genaro2812',43);
UPDATE JuegoClan Set NombreJugador = 'Fernada0627' WHERE IdJuegoClan = '10';
Delete from JuegoClan where IdJuegoClan ='6';
Select * from JuegoClan;
--LigaJugador
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Genaro2812','Dany0105',20000,30000,35000);
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Marisol2804','Dany0105',15000,32000,20000);
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Oscar1202','David1298',280000,40000,2002);
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Raquel2315','Gilberto1289',2389000,353000,353000);
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Evelin0115','Brandon1812',30000,40000,15000);
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'MariaJose3004','Fernada0232',67000,2300,5000);
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Litssi','Melissa3940',454300,82300,23200);
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Karen0118','Claudia2309',2389000,353000,456400);
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Esteban4564','Alan4545',9868700,344500,7665000);
Insert Into LigaJugador(NumeroLiga,JugadorRival,JugadorContricante,NumElixirint,NumOro,NumNegro) values(1, 'Monica2423','Marcela2342',280000,40000,2002);
UPDATE LigaJugador Set JugadorContricante = 'Fernada0627' WHERE IdLigaJugador = '10';
Delete from LigaJugador where IdLigaJugador ='7';
Select * from LigaJugador;
--Tabla logro
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Donar gemas', 50,23,'Dono de gemas en la magia clan');
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Costruir el laboratorio', 20,30,'Construir laboratorio en la aldea');
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Colocar estatua ',20,15,'Colocar una estuata de cualquier clase');
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Mejorar reir barbaro',30,10,'Mejorar los atribiutos del rey barbaro');
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Mejorar torre de arqueras', 13,5,'Dono de gemas en la magia clan');
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Donar gemas', 50,23,'Dono de gemas en la magia clan');
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Costruir el laboratorio', 20,30,'Construir laboratorio en la aldea');
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Colocar estatua ',20,15,'Colocar una estuata de cualquier clase');
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Mejorar reir barbaro',30,10,'Mejorar los atribiutos del rey barbaro');
Insert Into Logro(Nombre,Experiencia,gemas,Descripcion) values('Mejorar torre de arqueras', 13,5,'Dono de gemas en la magia clan');
UPDATE Logro Set Descripcion = 'Mejor los atribitos de la torre' WHERE IdLogro = '10';
Delete from Logro where IdLogro ='7';
Select * from Logro;
--Tabla Magia clan
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Cima de la capital',1,1);
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Valle de magos',1,1);
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Campamento de bárbaros',1,1);
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Laguna de globos',1,0);
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Cantera de golems',2,0);
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Penasco de dragones',3,0);
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Cima de la capital oscura',1,1);
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Taller constructor',1,1);
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Cuarto de defensas',1,1);
Insert Into MagiaClan(NombreCapital,Nivel,Estatus)values ('Casa de aldeanos',1,1);
UPDATE MagiaClan Set Estatus = '1' WHERE IdMagiaClan = '10';
Delete from MagiaClan where IdMagiaClan ='11';
Select * from MagiaClan;
--Tabla Medalla
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Bronce',400,100);
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Plata',500,150);
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Oro',600,200);
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Cristal',700,250);
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Prodijio',800,300);
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Maestro',900,350);
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Campeones',1000,400);
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Titán',1100,450);
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Amateur',1200,500);
Insert Into Medalla(Nombre,Victoria,Estrella) values ('Leyenda',1300,550);
UPDATE Medalla Set Nombre = 'Imparable' WHERE IdMedalla = '9';
Delete from Medalla where IdMedalla ='5';
Select * from Medalla;
--Tabla Muro
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Madera',1 ,500,300);
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Roca',2 ,1000,500);
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Marmol',3 ,5000,700);
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Plata',4 ,10000,900);
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Oro',5,20000,1400);
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Diamante',6 ,30000,2000);
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Diamante Tornasol',7 ,50000,2500);
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('AceroFino',8 ,75000,3000);
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Platino',9 ,100000,4000);
Insert Into Muro(Nombre,Nivel,Costo,NivelDano)values('Acero Luminoso',10 ,200000,5500);
UPDATE Muro Set Nombre = 'Platino Fuerte' WHERE IdMuro = '9';
Delete from Muro where IdMuro ='5';
Select * from Muro;
--Tabla Objeto Magico
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Libro de lucha',4,50, 'se salta los temporizadores de las tropas');
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Libro de construccion',3,50,'Se salta los tiempos de las construcciones ');
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Libro de hechizos',4,50,'Se salta los tiempos de los hechizos.');
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Libro de Univrsal',1,50,'puede saltarse cualquier temporizador');
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Posima de fuerza',8,10,'mejora  las tropas y hechizos ');
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Posima de recursos',10,10,'Potencia algunas algunas estructuras durante 1 día');
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Posima de entrenamiento',6,10,'Da potencia en la guerra');
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Posima de constructor',4,15,'Acelera todos los trabajos de construcción.');
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Posima del tiempo',5,10,'Da 30 minutos de impulso para los temporizadores.');
Insert Into ObjetoMagico(Nombre,MaximoCapacidad,PrecioVenta,uso) values ('Runa de oro',2,50,'Llenan los almacenes de recursos.');
UPDATE ObjetoMagico Set Nombre = 'Runa de elixir' WHERE IdObjetoMagico = '10';
Delete from ObjetoMagico where IdObjetoMagico ='5';
Select * from ObjetoMagico;

--Tabla Oferta Semanal
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de entrenamiento',10,4,'2022-12-05 03:00:00.000');
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Elixir de 500000',15,3,'2022-12-06 08:00:00.000');
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de aceleracion',5,3,'2022-12-02 02:00:00.000');
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Oro de 200000',15,5,'2022-12-06 08:00:00.000');
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de hielo',5,20,'2022-12-07 05:00:00.000');
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de entrenamiento',10,4,'2022-12-05 03:00:00.000');
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Elixir de 500000',15,3,'2022-12-06 08:00:00.000');
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de aceleracion',5,3,'2022-12-02 02:00:00.000');
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Oro de 200000',15,5,'2022-12-06 08:00:00.000');
Insert Into OfertaSemanal(NombreProducto,CantidadGemas,MaximoDisponible,TiempoCarga)values('Posima de hielo',5,20,'2022-12-07 05:00:00.000');
UPDATE OfertaSemanal Set TiempoCarga = '2022-12-07 05:00:00.000' WHERE IdOfertaSemanal = '9';
Delete from OfertaSemanal where IdOfertaSemanal ='4';
Select * from OfertaSemanal;
--Tabla Pase Batalla
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(1,'2022-12-07 05:00:00.000',10,'Titánide Eléctrica');
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(2,'2022-12-05 03:00:00.000',7,'Monolito');
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(3,'2022-12-02 02:00:00.000',8,'excavadora de batalla');
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(4,'2022-12-06 08:00:00.000',15,'Hechizo de invocación');
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(5,'2022-12-07 05:00:00.000',13,'Morsa glacial');
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(6,'2022-12-05 03:00:00.000',20,'Pangolín excavador');
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(7,'2022-12-06 08:00:00.000',12,'Lagarto venenoso');
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(8,'2022-12-02 02:00:00.000',19,'Cambios en los Cuarteles');
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(9,'2022-12-06 08:00:00.000',11,'Fénix');
Insert Into PaseBatalla(NoTemporada,Duracion,Donaciones,Beneficios)values(1,'2022-12-07 05:00:00.000',16,'Nuevo niveles de defensas y edificios');
UPDATE  PaseBatalla Set Beneficios = 'Balance del juego' WHERE IdPaseBatalla  = '9';
UPDATE ObjetoMagico Set Nombre = 'Runa de elixir' WHERE IdObjetoMagico = '10';
Delete from ObjetoMagico where IdObjetoMagico ='5';
Select * from ObjetoMagico;
--Tabla pedido
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Marisol2804',9,4,1,'2022-12-07 05:00:00.000');
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Brandon1812',6,2,9,'2022-12-05 03:00:00.000');
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Evelin0115',10,12,3,'2022-12-02 02:00:00.000');
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Pablo1017',6,3,1,'2022-12-06 08:00:00.000');
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Yahir0923',9,11,2,'2022-12-07 05:00:00.000');
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Gilberto1289',11,6,3,'2022-12-05 03:00:00.000');
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Raquel2315',7,2,12,'2022-12-06 08:00:00.000');
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Marcos0630',15,5,14,'2022-12-02 02:00:00.000');
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Dany0105',20,13,8,'2022-12-06 08:00:00.000');
Insert Into Pedido(NombreJugador,NumTropas,NumHechisos,NumDefensas,Tiempo) values ('Oscar1202',12,5,10,'2022-12-07 05:00:00.000');
UPDATE Pedido Set NombreJugador ='Carlos4576' WHERE IdPedido = '5';
Delete from  Pedido where IdPedido ='7';
Select * from Pedido;
--Tabla Rango
Insert Into Rango(Nombre)values('Lider');
Insert Into Rango(Nombre)values('Colider Principal');
Insert Into Rango(Nombre)values('Colider Secundario');
Insert Into Rango(Nombre)values('Veterano principal');
Insert Into Rango(Nombre)values('Segundo Veterano');
Insert Into Rango(Nombre)values('Tercer Veterano');
Insert Into Rango(Nombre)values('Primer miembro');
Insert Into Rango(Nombre)values('Segundo miembro');
Insert Into Rango(Nombre)values('Tercer miembro');
Insert Into Rango(Nombre)values('Cuarto miembro');
UPDATE Rango Set Nombre='Miembro Principal' WHERE IdRango = '10';
Delete from  Rango where IdRango ='7';
Select * from Rango;
--Tabla recompensa
Insert Into Recompensa(Nombre,Requerimiento)values('Asolamiento de talleres, ','Destruye 5Xtalleresde costructor en enfretamiento');
Insert Into Recompensa(Nombre,Requerimiento)values('Mil cañones por banda, ','Destruye 40x cañon en batallas multijugador');
Insert Into Recompensa(Nombre,Requerimiento)values('As de asaltos, ','Realiza 5 asaltos a la capital');
Insert Into Recompensa(Nombre,Requerimiento)values('Racha ganadora, ','Gana 3 batallas multijugadores seguidas');
Insert Into Recompensa(Nombre,Requerimiento)values('Curación magica, ','Gana 8 batallas usando hechizos');
Insert Into Recompensa(Nombre,Requerimiento)values('Victoria calcinada ','Gana 8 batallas usando dragones');
Insert Into Recompensa(Nombre,Requerimiento)values('que ardan los cañones','Destruye 10x mortero multiples');
Insert Into Recompensa(Nombre,Requerimiento)values('Jugada estelar','Consigue el bonus 4 veces seguidas');
Insert Into Recompensa(Nombre,Requerimiento)values('Racha ganadora, ','Gana 3 batallas multijugadores seguidas');
Insert Into Recompensa(Nombre,Requerimiento)values('Curación magica, ','Gana 8 batallas usando hechizos');
UPDATE Recompensa Set Nombre='Full bonus' WHERE IdRecompensa = '8';
Delete from  Recompensa where IdRecompensa ='10';
Select * from Recompensa;
--Tabla Temporada
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (1,'Enero','2022-01-01 00:00:00.000','2022-01-31 12:59:59.000',0);
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (1,'Enero','2022-01-01 00:00:00.000','2022-01-31 12:59:59.000',0);
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (2,'Febrero','2022-02-01 00:00:00.000','2022-02-28 12:59:59.000',0);
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (3,'Marzo','2022-03-01 00:00:00.000','2022-03-31 12:59:59.000',0);
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (4,'Abril','2022-04-01 00:00:00.000','2022-04-30 12:59:59.000',0);
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (5,'Mayo','2022-05-01 00:00:00.000','2022-05-31 12:59:59.000',1);
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (6,'Junio','2022-06-01 00:00:00.000','2022-06-30 12:59:59.000',0);
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (7,'Julio','2022-07-01 00:00:00.000','2022-07-31 12:59:59.000',0);
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (8,'Agosto','2022-08-01 00:00:00.000','2022-08-31 12:59:59.000',0);
Insert Into Temporada(Numero,Nombre,FechaInicio,FechaFinal,Estatus) values (9,'Septiembre','2022-09-01 00:00:00.000','2022-09-30 11:59:59.000',0);
UPDATE Temporada Set Nombre='Diciembre' WHERE IdTemporada = '6';
Delete from  Temporada where IdTemporada ='2';
Select * from Temporada;

--Tabla de Tesoreria 
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Oro',-5000,'Almacen de oro',80000000);
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Elixir',20000,'Almacen de elixir',20000000);
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Negro',6000,'Almacen de negro',300000);
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Forja',4000,'Almacen de magia clan',950000);
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Oro',-5000,'Almacen de oro',80000000);
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Elixir',20000,'Almacen de elixir',20000000);
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Negro',6000,'Almacen de negro',300000);
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Forja',4000,'Almacen de magia clan',950000);
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Oro',10000,'Almacen de oro',80000000);
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Elixir',630000,'Almacen de elixir',20000000);
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Negro',6000,'Almacen de negro',300000);
Insert Into Tesoreria(NombreRecurso,CantidadAoE,LugarAlmacen,CantidadTotal)values ('Forja',4000,'Almacen de magia clan',950000);
UPDATE Tesoreria Set NombreRecurso='Elixir' WHERE IdTesoreria = '10';
Delete from  Tesoreria where IdTesoreria ='6';
Select * from Tesoreria;
--Tabla Tienda
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('2500000 de elixer', 'negro',25,1);
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Posima de entrenamiento', 'oro ',10,2);
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Martillo de llucha', 'elixir',120,1);
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Martillo de construccion', 'dinero',120,1);
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Estatua de combatientes', 'negro',250,2);
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('2500000 de elixer', 'negro',25,2);
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Posima de entrenamiento', 'oro ',10,2);
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Martillo de llucha', 'elixir',120,1);
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Martillo de construccion', 'dinero',120,1);
Insert Into Tienda(NombreProducto,Recurso,PrecioProducto,MaxCantidad)values('Estatua de combatientes', 'negro',25,2);
UPDATE Tienda Set Recurso='Elixir' WHERE IdTienda = '10';
Delete from  Tienda where IdTienda ='6';
Select * from Tienda;
--Tabla Tropa
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Barbaro',3,14,65);
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Arquera',7,25,48);
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Golem',3,45,5700);
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Valquiria',3,119,950);
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Esbirro',2,41,63);
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Bruja',3,140,400);
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Sabueso de lava',2,12,6500);
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Lanzarrocas',2,70,350);
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Rompemuros',1,6,20);
Insert Into Tropa(Nombre,Nivel,DanoxSegundo,Vida)values('Dragon',5,240,3100);
UPDATE Tropa Set Nombre='Curandera' WHERE IdTropa  = '6';
Delete from  Tropa where IdTropa  ='9';
Select * from Tropa ;
--Tabla Tutorial
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Mecánica del juego','2022-09-01 00:05:00.000','Explica lo basico del juego');
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('La Aldea','2022-09-01 00:03:00.000','Explica lo basico de la aldea');
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('El Castillo','2022-09-01 00:03:00.000','Funciones del castillo');
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Tropas','2022-09-01 00:03:00.000','Uso de las tropas');
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Copas','2022-09-01 00:03:00.000','como se optienen las copas');
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Edificios','2022-09-01 00:03:00.000','como son los edificios');
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Recursos','2022-09-01 00:03:00.000','como son los edificios');
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Ejército','2022-09-01 00:03:00.000','como funciona el ejercito');
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Estrategias','2022-09-01 00:03:00.000','para mejorar tus partidas');
Insert Into Tutorial(Nombre,Duracion,Descripcion)values('Tips','2022-09-01 00:03:00.000','para mejorar la aldea');
UPDATE Tutorial Set Nombre='tips aldea' WHERE IdTutorial  = '10';
Delete from  Tutorial where IdTutorial  ='9';
Select * from Tutorial;

--Llaves foraneas---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Tabla Asalto 
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(3,'outOFservice','Campamento de barbaros',1,'2022-09-01 00:01:30.000');
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(7,'Bangladesh','Cima de la capital oscura',1,'2022-09-01 00:01:30.000');
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(10,'Dragon King','Casa de aldeanos',1,'2022-09-01 00:01:30.000');
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto,Estatus)values(6,'Freestyle CWL','Penasco de dragones',3,'2022-09-01 00:01:30.000',0);
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto,Estatus)values(5,'ESC e-sports','Cantera de golems',2,'2022-09-01 00:01:30.000',0);
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(3,'outOFservice','Campamento de barbaros',1,'2022-09-01 00:01:30.000');
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(7,'Bangladesh','Cima de la capital oscura',1,'2022-09-01 00:01:30.000');
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(10,'Dragon King','Casa de aldeanos',1,'2022-09-01 00:01:30.000');
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(10,'Freestyle CWL','Penasco de dragones',3,'2022-09-01 00:01:30.000');
Insert Into Asalto (IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(10,'ESC e-sports','Cantera de golems',2,'2022-09-01 00:01:30.000');
UPDATE Asalto Set ClanRival='casino lao caiz' WHERE IdAsalto = '10';
Delete from  Asalto where IdAsalto  ='1';
Select * from Asalto;
--Ayuntamiento constructor
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(7,1,3,'Lugar posima entrenamiento');
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(3,9,2,'Lugar del libro de construccion');
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(8,5,4,'Lugar del libro universal');
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(5,7,6,'Lugar de posima de recurso');
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(9,4,1,'Lugar del libro de lucha');
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(7,1,3,'Lugar posima entrenamiento');
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(3,9,2,'Lugar del libro de construccion');
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(8,5,4,'Lugar del libro universal');
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(5,7,6,'Lugar de posima de recurso');
Insert Into AyuntamientoBaseConstructor(IdObjetoMagico,Nivel,CanitdadObjetosMagicos,Descripcion)values(9,4,1,'Lugar del libro de lucha');
UPDATE AyuntamientoBaseConstructor set CanitdadObjetosMagicos ='2' WHERE IdAyuntamientoBaseConstructor = '10';
UPDATE AyuntamientoBaseConstructor set Descripcion ='Lugar del libro de construccion' WHERE IdAyuntamientoBaseConstructor = '10';
Delete from  AyuntamientoBaseConstructor where IdAyuntamientoBaseConstructor  ='1';
Select * from AyuntamientoBaseConstructor;
--Tabla clam
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(1,2,'outOFservice','famili,lost,sneh','Solo Invitacion',0);
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(2,9,'Bangladesh','clan,vip','Solo invitacion',1000);
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(3,8,'Dragon King','welcome to persian gulf','Solo invitacion',0);
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(4,7,'Freestyle CWL','Family:Freestyle CWL','Solo invitacion',0);
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(5,6,'ESC e-sports','december offer coming soon','libre',1000);
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(6,5,'outOFservice','famili,lost,sneh','Solo Invitacion',0);
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(7,4,'Bangladesh','clan,vip','Solo invitacion',1000);
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(8,3,'Dragon King','welcome to persian gulf','Solo invitacion',0);
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(9,2,'casino lao caiz','Family:casino lao caiz','Solo invitacion',0);
Insert Into Clan (IdChat, IdMagiaClan,Nombre,Descipcion,TipoDeClan,MinimoTropas)values(10,1,'Exalt might','december offer coming soon','libre',1000);
UPDATE Clan Set Nombre='Bushido' WHERE IdClan= '10';
Delete from  Clan where IdClan  ='1';
Select * from Clan;
--Tabla CLAN DONACION
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(5,6);
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(8,4);
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(3,4);
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(9,3);
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(2,5);
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(4,8);
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(6,9);
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(10,2);
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(4,10);
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(5,4);
Insert Into ClanDonacion(IdClan,IdDonacion)VALUES(3,3);
UPDATE ClanDonacion Set IdClan='4' WHERE IdClanDonacion= '10';
Delete from  ClanDonacion where IdClanDonacion  ='1';
Select * from ClanDonacion;

--Tabla clanjuegoclan
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(5,8);
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(8,4);
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(3,4);
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(9,3);
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(3,5);
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(4,8);
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(4,9);
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(10,2);
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(4,10);
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(5,4);
Insert Into ClanJuegoClan(IdClan,IdJuegoClan)VALUES(3,3);
UPDATE ClanJuegoClan Set IdClan='4' WHERE IdClanJuegoClan= '10';
Delete from  ClanJuegoClan where IdClanJuegoClan  ='1';
Select * from ClanJuegoClan;
--Tabla clanOfertaSemanal
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(5,8);
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(8,5);
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(3,8);
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(9,3);
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(3,5);
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(9,8);
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(4,9);
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(10,2);
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(4,2);
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(5,3):
Insert Into ClanOfertaSemanal(IdClan,IdOfertaSemanal)VALUES(3,3);
UPDATE ClanJuegoClan Set IdClan='4' WHERE IdClanJuegoClan= '10';
Delete from  ClanJuegoClan where IdClanJuegoClan  ='1';
Select * from ClanJuegoClan;

--Tabla ClanPedido
Insert Into ClanPedido(IdClan,IdPedido)VALUES(5,8);
Insert Into ClanPedido(IdClan,IdPedido)VALUES(8,5);
Insert Into ClanPedido(IdClan,IdPedido)VALUES(3,8);
Insert Into ClanPedido(IdClan,IdPedido)VALUES(9,3);
Insert Into ClanPedido(IdClan,IdPedido)VALUES(3,5);
Insert Into ClanPedido(IdClan,IdPedido)VALUES(9,8);
Insert Into ClanPedido(IdClan,IdPedido)VALUES(4,9);
Insert Into ClanPedido(IdClan,IdPedido)VALUES(10,2);
Insert Into ClanPedido(IdClan,IdPedido)VALUES(4,2);
Insert Into ClanPedido(IdClan,IdPedido)VALUES(5,3);
Insert Into ClanPedido(IdClan,IdPedido)VALUES(3,3);
UPDATE ClanPedido Set IdClan='4' WHERE IdClanPedido= '10';
Delete from  ClanPedido where IdClanPedido  ='1';
Select * from ClanPedido;
--Tabla jugador
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(5,3,3,6,'Marisol2804','Marisol','Ramos','Reyes','Marisol@gmail.com','123');
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(4,6,7,9,'Brandon1812','Brandon','Lugo','Costilla','Brandon@gmail.com','456');
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(5,8,8,6,'Evelin0115','Evelin','Barrera','Torres','Evelin@gmail.com','789');
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(9,3,4,7,'Pablo1017','Pablo','Ramirez','Ortiz','Pablo@gmail.com','321');
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(1,3,8,9,'Yahir0923','Yahir','Diaz','Martinez','Yahir@gmail.com','654');
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(7,3,3,7,'Gilberto1289','Gilberto','Treviño','Borrego','Gilbert@gmail.com','987');
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(8,3,7,8,'Raquel2315','Raquel','Maya','Martinez','Raquel@gmail.com','159');
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(9,3,4,5,'Dany0105','Dany','Ramos','Reyes','Dany@gmail.com','357');
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(10,6,6,3,'Oscar1202','Oscar','Cortes','Morales','Oscar@gmail.com','357');
Insert Into Jugador(IdTesoreria,IdAldea,IdClan,IdCompaniaIndividual,Alias,Nombre,APaterno,AMaterno,Correo,Contrasena)values(3,3,6,7,'Karen5623','Karen','Robledo','Lugo','Karen@gmail.com','258');
UPDATE Jugador Set IdClan='4' WHERE IdJugador= '10';
Delete from  Jugador where IdJugador  ='1';
Select * from Jugador;
--Tabla JugadorLigaJugador
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(41,8);
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(12,5);
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(18,8);
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(22,3);
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(23,5);
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(29,8);
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(33,9);
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(35,2);
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(36,2);
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(38,3);
Insert Into JugadorLigaJugador(IdJugador,IdLigaJugador)VALUES(39,3);
UPDATE JugadorLigaJugador Set IdLigaJugador='4' WHERE IdJugadorLigaJugador= '10';
Delete from  JugadorLigaJugador where IdJugadorLigaJugador  ='1';
Select * from JugadorLigaJugador;
--Tabla JugadorModoJuego
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(41,8);
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(12,5);
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(18,8);
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(22,5);
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(23,5);
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(29,8);
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(33,9);
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(35,2);
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(36,2);;
Insert Into JugadorModoJuego(IdJugador,IdModoJuego)VALUES(39,3);
UPDATE JugadorModoJuego Set IdModoJuego='4' WHERE IdJugadorModoJuego= '10';
Delete from  JugadorModoJuego where IdJugadorModoJuego  ='1';
Select * from JugadorModoJuego;
--Tabla JugadorRango
Insert Into JugadorRango(IdJugador,IdRango)VALUES(41,8);
Insert Into JugadorRango(IdJugador,IdRango)VALUES(12,5);
Insert Into JugadorRango(IdJugador,IdRango)VALUES(18,8);
Insert Into JugadorRango(IdJugador,IdRango)VALUES(22,3);
Insert Into JugadorRango(IdJugador,IdRango)VALUES(23,5);
Insert Into JugadorRango(IdJugador,IdRango)VALUES(29,8);
Insert Into JugadorRango(IdJugador,IdRango)VALUES(33,9);
Insert Into JugadorRango(IdJugador,IdRango)VALUES(35,2);
Insert Into JugadorRango(IdJugador,IdRango)VALUES(36,2);
Insert Into JugadorRango(IdJugador,IdRango)VALUES(38,3);
Insert Into JugadorRango(IdJugador,IdRango)VALUES(39,3);
UPDATE JugadorRango Set IdJugador='4' WHERE IdJugadorRango= '10';
Delete from  JugadorRango where IdJugadorRango  ='3';
Select * from JugadorRango;
--Tabla JugadorTemporada
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(41,8);
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(12,5);
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(18,8);
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(22,3);
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(23,4);
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(29,2);
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(33,7);
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(35,8);
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(36,2);
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(38,3);
Insert Into JugadorTemporada(IdJugador,IdTemporada)VALUES(39,3);
UPDATE JugadorTemporada Set IdJugador='4' WHERE IdJugadorTemporada= '10':
Delete from  JugadorTemporada where IdJugadorTemporada ='3';
Select * from JugadorTemporada;

--Tabla JugadorTienda
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(41,8);
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(12,5);
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(18,8);
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(23,4);
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(29,2);
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(33,7);
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(35,8);
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(36,2);
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(38,3);
Insert Into JugadorTienda(IdJugador,IdTienda)VALUES(39,3);
UPDATE JugadorTienda Set IdJugador='38' WHERE IdJugadorTienda= '10';
Delete from  JugadorTienda where IdJugadorTienda='3';
Select * from JugadorTienda;


--Tabla JugadorTutorial
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(41,8);
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(12,5);
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(18,8);
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(22,3);
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(23,4);
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(29,2);
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(33,7);
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(35,8);
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(36,2);
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(38,3);
Insert Into JugadorTutorial(IdJugador,IdTutorial)VALUES(39,3);
UPDATE JugadorTutorial Set IdJugador='35' WHERE IdJugadorTutorial= '10';
Delete from  JugadorTutorial where IdJugadorTutorial='3';
Select * from ModoJuego;

--Tabla LigaJugadorRecompensa
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(1,3);
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(9,5);
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(7,1);
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(1,6);
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(2,7);
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(9,2);
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(3,9);
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(5,8);
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(6,2);
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(8,4);
Insert Into LigaJugadorRecompensa(IdLigaJugador,IdRecompensa)VALUES(9,3);
UPDATE LigaJugadorRecompensa Set IdLigaJugador='7' WHERE IdLigaJugadorRecompensa= '10';
Delete from  LigaJugadorRecompensa where IdLigaJugadorRecompensa='3';
Select * from LigaJugadorRecompensa;

--Tabla paisaje
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(2,'Clásico','Un bosque. Una cascada y unos acantilados se sitúan en la parte trasera.');
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(3,'Clásico (Otoño)','El bosque clásico pero los árboles ahora representan la temporada de otoño.');
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(4,'Clásico (Invierno)','El mismo bosque que en otoño pero con varios detalles de hielo y nieve mezclados.');
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(4,'Creaciones Mecánicas','Un bosque de pinos con estructuras y minas que rodean su pueblo.');
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(5,'Creaciones Mecánicas','Un área nevada con una cueva nevada en un lado.');
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(6,'Clásico','Un bosque. Una cascada y unos acantilados se sitúan en la parte trasera.');
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(7,'Clásico (Otoño)','El bosque clásico pero los árboles ahora representan la temporada de otoño.');
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(8,'Clásico (Invierno)','El mismo bosque que en otoño pero con varios detalles de hielo y nieve mezclados.');
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(9,'Creaciones Mecánicas','Un bosque de pinos con estructuras y minas que rodean su pueblo.');
Insert Into Paisaje(IdAldea,Nombre,Descripcion)values(6,'Creaciones Mecánicas','Un área nevada con una cueva nevada en un lado.');
UPDATE Paisaje Set Nombre='La Montaña del Cerdo' WHERE IdPaisaje= '10';
Delete from  Paisaje where IdPaisaje='3';
Select * from Paisaje;
--Tabla RangoMedalla
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(1,3);
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(9,4);
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(7,1);
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(1,6);
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(2,7);
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(9,2);
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(3,9);
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(5,8);
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(6,2);
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(8,4);
Insert Into RangoMedalla(IdRango,IdMedalla)VALUES(9,3);
UPDATE RangoMedalla Set IdRango='7' WHERE IdRangoMedalla= '10';
Delete from  RangoMedalla where IdRangoMedalla='3';
Select * from RangoMedalla;
Select * from AyuntamientoBaseConstructor;
--Tabla Heroe
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(2,'Reina Arquera',20000,500,0,80);
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(3,'Rey Barbaro',30000,600,100,90);
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(5,'MaquinaBelica',15000,500,50,60);
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(6,'GranCentinela',60000,200,50,60);
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(7,'Luchador real',50000,400,750,90);
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(8,'Reina Arquera',20000,500,0,80);
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(10,'Rey Barbaro',30000,600,100,90);
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(11,'MaquinaBelica',15000,500,50,60);
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(12,'GranCentinela',60000,200,50,80);
Insert Into Heroe(IdAyuntamientoBaseConstuctor,Nombre,Dano,Vida,TiempoRegeneracion,NivelHabilidad)values(7,'Luchador real',50000,400,750,90);
UPDATE Heroe Set Vida='70000' WHERE IdHeroe= '10';
Delete from  Heroe where IdHeroe='3';
Select * from Heroe;
--Tabla animal
Insert Into Animal(IdHeroe,Nombre,Vida)values(9,'L.A.S.S.I',700);
Insert Into Animal(IdHeroe,Nombre,Vida)values(2,'Búho eléctrico',800);
Insert Into Animal(IdHeroe,Nombre,Vida)values(7,'Yak',900);
Insert Into Animal(IdHeroe,Nombre,Vida)values(6,'Unicornio',1000);
Insert Into Animal(IdHeroe,Nombre,Vida)values(5,'Morsa glacial',1050);
Insert Into Animal(IdHeroe,Nombre,Vida)values(4,'Pangolín excavador',1100);
Insert Into Animal(IdHeroe,Nombre,Vida)values(10,'Lagarto venenoso',1150);
Insert Into Animal(IdHeroe,Nombre,Vida)values(9,'Fénix',1200);
Insert Into Animal(IdHeroe,Nombre,Vida)values(5,'Morsa glacial',1050);
Insert Into Animal(IdHeroe,Nombre,Vida)values(4,'Pangolín excavador',1100);
UPDATE Animal Set Vida='70000' WHERE IdAnimal= '10';
Delete from  Animal where IdAnimal='3';
Select * from Animal;
Select * from MagiaClan;
--Tabla Asalto 
Insert Into Asalto(IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(2,'outOFservice','Valle de magos',1,'2022-09-01 00:01:30.000');
Insert Into Asalto(IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(5,'Bangladesh','Cantera de golems',2,'2022-09-01 00:01:30.000');
Insert Into Asalto(IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(7,'Dragon King','Cima de la capital oscura',1,'2022-09-01 00:01:30.000');
Insert Into Asalto(IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(9,'Freestyle CWL','Cuarto de defenzas',1,'2022-09-01 00:01:30.000');
Insert Into Asalto(IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(3,'ESC e-sports','Campamento de barbaros',1,'2022-09-01 00:01:30.000');
Insert Into Asalto(IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(10,'outOFservice','Casa de aldeanos',1,'2022-09-01 00:01:30.000');
Insert Into Asalto(IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(8,'Bangladesh','Taller constructor',1,'2022-09-01 00:01:30.000');
Insert Into Asalto(IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(6,'Dragon King','Penasco de dragones',3,'2022-09-01 00:01:30.000');
Insert Into Asalto(IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(4,'casino lao caiz','Laguna de globos',1,'2022-09-01 00:01:30.000');
Insert Into Asalto(IdMagiaClan,ClanRival,NombreCapitalCR,Nivel,TiempoAsalto)values(9,'Freestyle CWL','Cuarto de defenzas',1,'2022-09-01 00:01:30.000');
UPDATE Asalto Set ClanRival='Bangladesh' WHERE IdAsalto= '10';
Delete from  Asalto where IdAsalto='3';
Select * from Asalto;
--Tabla Aspecto
Insert Into Aspecto(IdHeroe,IdAnimal,NombreInactivo,NombrePose,NumDerivado,NumAvatido,NumPrevilisuacion)values(2,2,'Rey gladeador','Lucha',2,3,12);
Insert Into Aspecto(IdHeroe,IdAnimal,NombreInactivo,NombrePose,NumDerivado,NumAvatido,NumPrevilisuacion)values(2,2,'Rey automata','Saludo',25,20,8);
Insert Into Aspecto(IdHeroe,IdAnimal,NombreInactivo,NombrePose,NumDerivado,NumAvatido,NumPrevilisuacion)values(2,6,'Reina Valquiria','Lucha',27,6,3);
Insert Into Aspecto(IdHeroe,IdAnimal,NombreInactivo,NombrePose,NumDerivado,NumAvatido,NumPrevilisuacion)values(20,2,'Centinela pirata','defensa',9,22,4);
Insert Into Aspecto(IdHeroe,IdAnimal,NombreInactivo,NombrePose,NumDerivado,NumAvatido,NumPrevilisuacion)values(8,2,'Luchador Invernal','ganador',29,25,26);
Insert Into Aspecto(IdHeroe,IdAnimal,NombreInactivo,NombrePose,NumDerivado,NumAvatido,NumPrevilisuacion)values(1,11,'L.A.S.S.I','Robot',2,3,12);
Insert Into Aspecto(IdHeroe,IdAnimal,NombreInactivo,NombrePose,NumDerivado,NumAvatido,NumPrevilisuacion)values(1,9,'Frosti','peligro',17,6,3);
Insert Into Aspecto(IdHeroe,IdAnimal,NombreInactivo,NombrePose,NumDerivado,NumAvatido,NumPrevilisuacion)values(1,10,'Phoenix','ataque',9,11,4);
Insert Into Aspecto(IdHeroe,IdAnimal,NombreInactivo,NombrePose,NumDerivado,NumAvatido,NumPrevilisuacion)values(1,4,'Unicorn','feliz',19,15,16);
Insert Into Aspecto(IdHeroe,IdAnimal,NombreInactivo,NombrePose,NumDerivado,NumAvatido,NumPrevilisuacion)values(1,6,'Mighty Yak','alerta',15,20,8);
UPDATE Aspecto Set NombreInactivo='Electro Owl' WHERE IdAspecto= '10';
Delete from  Aspecto where IdAspecto='3';
Select * from Aspecto;

--Tabla Ataque 
Insert Into Ataque(IdAsalto,NumTropas,NumHechisos)values(5,20,15);
Insert Into Ataque(IdAsalto,NumTropas,NumHechisos)values(14,23,20)
Insert Into Ataque(IdAsalto,NumTropas,NumHechisos)values(11,18,14);
Insert Into Ataque(IdAsalto,NumTropas,NumHechisos)values(8,27,17);
Insert Into Ataque(IdAsalto,NumTropas,NumHechisos)values(6,16,21);
Insert Into Ataque(IdAsalto,NumTropas,NumHechisos)values(17,20,15);
Insert Into Ataque(IdAsalto,NumTropas,NumHechisos)values(18,23,20);
Insert Into Ataque(IdAsalto,NumTropas,NumHechisos)values(13,18,14);
Insert Into Ataque(IdAsalto,NumTropas,NumHechisos)values(2,27,17);
Insert Into Ataque(IdAsalto,NumTropas,NumHechisos)values(9,16,21);
UPDATE Ataque Set NumTropas='34' WHERE IdAtaque = '10';
Delete from  Ataque  where IdAtaque ='3';
Select * from Jugador

--Tabla desafio
Insert Into Desafio(IdJugador,Nombre,descripcion,puntos)values(12,'Pirata','Juego pirata',200);
Insert Into Desafio(IdJugador,Nombre,descripcion,puntos)values(18,'Hallowen','Juego Hallowen',250);
Insert Into Desafio(IdJugador,Nombre,descripcion,puntos)values(22,'Magico','Juego Magico',250);
Insert Into Desafio(IdJugador,Nombre,descripcion,puntos)values(23,'Clash Fest','Juego de fiesta de clanes ',400)
Insert Into Desafio(IdJugador,Nombre,descripcion,puntos)values(29,'Clan Noviembre rojo','Juego del mes de noviembre',250);
Insert Into Desafio(IdJugador,Nombre,descripcion,puntos)values(33,'Pirata','Juego pirata',200);
Insert Into Desafio(IdJugador,Nombre,descripcion,puntos)values(35,'Hallowen','Juego Hallowen',250);
Insert Into Desafio(IdJugador,Nombre,descripcion,puntos)values(36,'Magico','Juego Magico',250);
Insert Into Desafio(IdJugador,Nombre,descripcion,puntos)values(38,'Clash Fest','Juego de fiesta de clanes ',400);
Insert Into Desafio(IdJugador,Nombre,descripcion,puntos)values(39,'Clan Noviembre rojo','Juego del mes de noviembre',250);
UPDATE Desafio Set Nombre='Dia de muertos' WHERE IdDesafio = '10';
Delete from  Desafio  where IdDesafio ='3';
Select * from Desafio;
--Tabal ejercito
Insert Into Ejercito(IdJugador,NumDefensa,NumHechiso,NumHeroe,NumEjercito,MaquinaAsendio)values(12,23,54,2,32,'Destrozamuros');
Insert Into Ejercito(IdJugador,NumDefensa,NumHechiso,NumHeroe,NumEjercito,MaquinaAsendio)values(18,84,36,3,42,'Dirigible bélico');
Insert Into Ejercito(IdJugador,NumDefensa,NumHechiso,NumHeroe,NumEjercito,MaquinaAsendio)values(22,75,39,1,12,'Arrojapiedras');
Insert Into Ejercito(IdJugador,NumDefensa,NumHechiso,NumHeroe,NumEjercito,MaquinaAsendio)values(23,98,17,3,56,'Cuartel de asedio');
Insert Into Ejercito(IdJugador,NumDefensa,NumHechiso,NumHeroe,NumEjercito,MaquinaAsendio)values(29,89,40,2,27,'Lanzatroncos');
Insert Into Ejercito(IdJugador,NumDefensa,NumHechiso,NumHeroe,NumEjercito,MaquinaAsendio)values(33,23,54,1,32,'Lanzallamas');
Insert Into Ejercito(IdJugador,NumDefensa,NumHechiso,NumHeroe,NumEjercito,MaquinaAsendio)values(35,84,36,3,42,'AtrapaTropas');
Insert Into Ejercito(IdJugador,NumDefensa,NumHechiso,NumHeroe,NumEjercito,MaquinaAsendio)values(36,75,39,2,12,'ArrojaHechizos');
Insert Into Ejercito(IdJugador,NumDefensa,NumHechiso,NumHeroe,NumEjercito,MaquinaAsendio)values(38,98,17,1,56,'Congelador');
Insert Into Ejercito(IdJugador,NumDefensa,NumHechiso,NumHeroe,NumEjercito,MaquinaAsendio)values(39,89,40,3,27,'DuermeHeroes');
Insert Into Ejercito(IdJugador,NumDefensa,NumHechiso,NumHeroe,NumEjercito,MaquinaAsendio)values(42,23,54,2,32,'ArrojaTropas');
UPDATE Ejercito Set NumDefensa='15' WHERE IdEjercito = '10';
Delete from  Ejercito  where IdEjercito  ='3';
Select * from Ejercito;

--Tabla recurso
Insert Into Recurso(IdTesoreria,Nombre,LugarAlmacen,cantidad,Descripcion)values(1,'Oro','Almacen de oro',20000,'oro del jugador');
Insert Into Recurso(IdTesoreria,Nombre,LugarAlmacen,cantidad,Descripcion)values(2,'Elixir','Almacen de elixir',125000,'Elixir del jugador');
Insert Into Recurso(IdTesoreria,Nombre,LugarAlmacen,cantidad,Descripcion)values(3,'Negro','Tesoreria del Jugador',4520,'Negro del jugador');
Insert Into Recurso(IdTesoreria,Nombre,LugarAlmacen,cantidad,Descripcion)values(4,'Forja','Tesoreria del clan',45600,'Forja que dona el jugador al clan');
Insert Into Recurso(IdTesoreria,Nombre,LugarAlmacen,cantidad,Descripcion)values(5,'Oro','Almacen de oro',75000,'oro del jugador');
Insert Into Recurso(IdTesoreria,Nombre,LugarAlmacen,cantidad,Descripcion)values(7,'Elixir','Almacen de elixir',452100,'Elixir del jugador');
Insert Into Recurso(IdTesoreria,Nombre,LugarAlmacen,cantidad,Descripcion)values(8,'Negro','Almacen de negro',85623,'Negro del jugador');
Insert Into Recurso(IdTesoreria,Nombre,LugarAlmacen,cantidad,Descripcion)values(9,'Forja','Tesoreria del clan',313000,'Forja que dona el jugador al clan');
Insert Into Recurso(IdTesoreria,Nombre,LugarAlmacen,cantidad,Descripcion)values(10,'Oro','Almacen de oro',2315000,'oro del jugador');
Insert Into Recurso(IdTesoreria,Nombre,LugarAlmacen,cantidad,Descripcion)values(11,'Elixir','Almacen de elixir',63239,'Elixir del jugador');
UPDATE Recurso Set Descripcion='Elixir que almacena el juador' WHERE IdRecurso = '10';
Delete from  Recurso  where IdRecurso  ='3';
Select * from Recurso;

--Tabla maquina de asedio
Insert Into MaquinaAsedio(IdEjercito,Nombre,Funcion,Dano,Cantidad)values(23,'Destrozamuros','Destroza los muros de las aldeas',200,1);
Insert Into MaquinaAsedio(IdEjercito,Nombre,Funcion,Dano,Cantidad)values(24,'Dirigible bélico','Se dirigi hacia el ayuntamiento para destruitlo',300,1);
Insert Into MaquinaAsedio(IdEjercito,Nombre,Funcion,Dano,Cantidad)values(25,'Arrojapiedras','Arroja piedras en los edificios de las aldeas',400,1);
Insert Into MaquinaAsedio(IdEjercito,Nombre,Funcion,Dano,Cantidad)values(26,'Inflamable','Abienta fuejo a los edificios',500,1);
Insert Into MaquinaAsedio(IdEjercito,Nombre,Funcion,Dano,Cantidad)values(27,'Lanzatroncos','Lanza troncos desde las alturas',600,1);
Insert Into MaquinaAsedio(IdEjercito,Nombre,Funcion,Dano,Cantidad)values(28,'Lanzallamas','Abienta fuego a los heroes',700,1);
Insert Into MaquinaAsedio(IdEjercito,Nombre,Funcion,Dano,Cantidad)values(29,'Atrapa Tropas','Atrapa las tropas que tengan menos vida',200,1);
Insert Into MaquinaAsedio(IdEjercito,Nombre,Funcion,Dano,Cantidad)values(30,'Arroja hechizos','Arroja hechizos en la aldea de lucha',300,1);
Insert Into MaquinaAsedio(IdEjercito,Nombre,Funcion,Dano,Cantidad)values(31,'Congelador','Congela todo a su paso cada 10 segundos',400,1);
Insert Into MaquinaAsedio(IdEjercito,Nombre,Funcion,Dano,Cantidad)values(32,'Duerme herores','Duerme a los heroes cada 10 segundos por 5 segundos',400,1);
UPDATE MaquinaAsedio Set Dano ='1000' WHERE IdMaquinaAsedio = '10';
Delete from MaquinaAsedio where IdMaquinaAsedio  ='3';
Select * from MaquinaAsedio;

--Tabla de InvestigacionHechizo
Insert Into InvestigacionHechiso(IdInvestigacion,IdHechiso)	values (1,1);
Insert Into InvestigacionHechiso(IdInvestigacion,IdHechiso)	values (2,10);
Insert Into InvestigacionHechiso(IdInvestigacion,IdHechiso)	values (3,9);
Insert Into InvestigacionHechiso(IdInvestigacion,IdHechiso)	values (4,8);
Insert Into InvestigacionHechiso(IdInvestigacion,IdHechiso)	values (5,6);
Insert Into InvestigacionHechiso(IdInvestigacion,IdHechiso)	values (6,5);
Insert Into InvestigacionHechiso(IdInvestigacion,IdHechiso)	values (8,4);
Insert Into InvestigacionHechiso(IdInvestigacion,IdHechiso)	values (9,3);
Insert Into InvestigacionHechiso(IdInvestigacion,IdHechiso)	values (10,2);
Insert Into InvestigacionHechiso(IdInvestigacion,IdHechiso)	values (1,1);
UPDATE InvestigacionHechiso Set IdHechiso ='5' WHERE IdInvestigacionHechiso = '10';
Delete from InvestigacionHechiso where IdInvestigacionHechiso  ='3';
Select * from InvestigacionHechiso;
Select*from Tropa;

--Tabla Investigacion tropa
Insert Into InvestigacionTropa(IdInvestigacion,IdTropa)values(10,1);
Insert Into InvestigacionTropa(IdInvestigacion,IdTropa)values(9,10);
Insert Into InvestigacionTropa(IdInvestigacion,IdTropa)values(8,5);
Insert Into InvestigacionTropa(IdInvestigacion,IdTropa)values(5,6);
Insert Into InvestigacionTropa(IdInvestigacion,IdTropa)values(4,5);
Insert Into InvestigacionTropa(IdInvestigacion,IdTropa)values(3,4);
Insert Into InvestigacionTropa(IdInvestigacion,IdTropa)values(2,3);
Insert Into InvestigacionTropa(IdInvestigacion,IdTropa)values(1,2);
Insert Into InvestigacionTropa(IdInvestigacion,IdTropa)values(10,1);
UPDATE InvestigacionTropa Set IdInvestigacion ='5' WHERE IdInvestigacionTropa = '10';
Delete from InvestigacionTropa where IdInvestigacionTropa  ='3';
Select * from InvestigacionTropa;
--Tabla FormaPago
Insert Into FormaPago(IdBanco,TipoTarjeta,NumTarjeta,FechaVencimiento,CVV,TotalCompra)values(1,'credito',54552452,'2022-09-01 00:01:30.000',420,123);
Insert Into FormaPago(IdBanco,TipoTarjeta,NumTarjeta,FechaVencimiento,CVV,TotalCompra)values(3,'debito',452252424,'2024-09-01 00:00:00.000',236,4520);
Insert Into FormaPago(IdBanco,TipoTarjeta,NumTarjeta,FechaVencimiento,CVV,TotalCompra)values(4,'credito',424243454,'2024-09-01 00:00:00.000',652,10);
Insert Into FormaPago(IdBanco,TipoTarjeta,NumTarjeta,FechaVencimiento,CVV,TotalCompra)values(5,'debito',524242145,'2024-09-01 00:00:00.000',031,423);
Insert Into FormaPago(IdBanco,TipoTarjeta,NumTarjeta,FechaVencimiento,CVV,TotalCompra)values(6,'credito',424524654,'2024-09-01 00:00:00.000',754,96);
Insert Into FormaPago(IdBanco,TipoTarjeta,NumTarjeta,FechaVencimiento,CVV,TotalCompra)values(7,'debito',786645124,'2024-09-01 00:00:00.000',452,145);
Insert Into FormaPago(IdBanco,TipoTarjeta,NumTarjeta,FechaVencimiento,CVV,TotalCompra)values(8,'credito',42422485,'2024-09-01 00:00:00.000',785,654);
Insert Into FormaPago(IdBanco,TipoTarjeta,NumTarjeta,FechaVencimiento,CVV,TotalCompra)values(9,'debito',1212864522,'2024-09-01 00:00:00.000',255,127);
Insert Into FormaPago(IdBanco,TipoTarjeta,NumTarjeta,FechaVencimiento,CVV,TotalCompra)values(10,'credito',864524644,'2024-09-01 00:00:00.000',885,781);
Insert Into FormaPago(IdBanco,TipoTarjeta,NumTarjeta,FechaVencimiento,CVV,TotalCompra)values(1,'debito',452424245,'2024-09-01 00:00:00.000',542,424);
UPDATE FormaPago Set NumTarjeta ='1242424273' WHERE IdFormaPago= '10';
Delete from FormaPago where IdFormaPago  ='3';
Select * from FormaPago;

--Tabla guerra clan
Insert Into GuerraClan(IdClan, NombreCR,NumParticipantesCR,NumEstrellasCR,RecompensaOroCR,RecompensaElixirCR,NumTrofeosCR,NombreCC,NumParticipantesCC,NumEstrellasCC,RecompensaOroCC,RecompensaElixirCC,NumTrofeosCC)values(3,'outOFservice',10,20,1200,500,10,'Bangladesh',10,15,1200,500,10);
Insert Into GuerraClan(IdClan, NombreCR,NumParticipantesCR,NumEstrellasCR,RecompensaOroCR,RecompensaElixirCR,NumTrofeosCR,NombreCC,NumParticipantesCC,NumEstrellasCC,RecompensaOroCC,RecompensaElixirCC,NumTrofeosCC)values(4,'Bangladesh',8,15,1000,250,8,'Exalt might',8,20,1000,250,8);
Insert Into GuerraClan(IdClan, NombreCR,NumParticipantesCR,NumEstrellasCR,RecompensaOroCR,RecompensaElixirCR,NumTrofeosCR,NombreCC,NumParticipantesCC,NumEstrellasCC,RecompensaOroCC,RecompensaElixirCC,NumTrofeosCC)values(5,'casino lao caiz12',10,20,1200,500,10,'Bangladesh',10,20,1200,500,10);
Insert Into GuerraClan(IdClan, NombreCR,NumParticipantesCR,NumEstrellasCR,RecompensaOroCR,RecompensaElixirCR,NumTrofeosCR,NombreCC,NumParticipantesCC,NumEstrellasCC,RecompensaOroCC,RecompensaElixirCC,NumTrofeosCC)values(6,'outOFservice',8,15,1000,250,8,'Dragon King',8,15,1000,250,8);
Insert Into GuerraClan(IdClan, NombreCR,NumParticipantesCR,NumEstrellasCR,RecompensaOroCR,RecompensaElixirCR,NumTrofeosCR,NombreCC,NumParticipantesCC,NumEstrellasCC,RecompensaOroCC,RecompensaElixirCC,NumTrofeosCC)values(7,'Exalt might',10,20,1200,500,10,'Bangladesh',10,20,1200,500,10);
Insert Into GuerraClan(IdClan, NombreCR,NumParticipantesCR,NumEstrellasCR,RecompensaOroCR,RecompensaElixirCR,NumTrofeosCR,NombreCC,NumParticipantesCC,NumEstrellasCC,RecompensaOroCC,RecompensaElixirCC,NumTrofeosCC)values(8,'Dragon King',8,15,1000,250,8,'casino lao caiz12',8,15,1000,250,8);
Insert Into GuerraClan(IdClan, NombreCR,NumParticipantesCR,NumEstrellasCR,RecompensaOroCR,RecompensaElixirCR,NumTrofeosCR,NombreCC,NumParticipantesCC,NumEstrellasCC,RecompensaOroCC,RecompensaElixirCC,NumTrofeosCC)values(9,'Bangladesh',10,20,1200,500,10,'Exalt might',10,20,1200,500,10);
Insert Into GuerraClan(IdClan, NombreCR,NumParticipantesCR,NumEstrellasCR,RecompensaOroCR,RecompensaElixirCR,NumTrofeosCR,NombreCC,NumParticipantesCC,NumEstrellasCC,RecompensaOroCC,RecompensaElixirCC,NumTrofeosCC)values(10,'casino lao caiz12',8,15,1000,250,8,'Exalt might',8,15,1000,250,8);
Insert Into GuerraClan(IdClan, NombreCR,NumParticipantesCR,NumEstrellasCR,RecompensaOroCR,RecompensaElixirCR,NumTrofeosCR,NombreCC,NumParticipantesCC,NumEstrellasCC,RecompensaOroCC,RecompensaElixirCC,NumTrofeosCC)values(11,'Exalt might',10,20,1200,500,10,'Dragon King',10,15,1200,500,10);
Insert Into GuerraClan(IdClan, NombreCR,NumParticipantesCR,NumEstrellasCR,RecompensaOroCR,RecompensaElixirCR,NumTrofeosCR,NombreCC,NumParticipantesCC,NumEstrellasCC,RecompensaOroCC,RecompensaElixirCC,NumTrofeosCC)values(3,'Dragon King',8,15,1000,250,8,'Exalt might',10,20,1000,250,8);
UPDATE GuerraClan Set NombreCR ='outOFservice' WHERE IdGuerraClan= '10';
Delete from GuerraClan where IdGuerraClan  ='3';
Select * from GuerraClan;
--Tabla guerrra clan medella
Insert Into GuerraClanMedalla(IdGuerraClan,IdMedalla)values(10,1);
Insert Into GuerraClanMedalla(IdGuerraClan,IdMedalla)values(11,2);
Insert Into GuerraClanMedalla(IdGuerraClan,IdMedalla)values(12,3);
Insert Into GuerraClanMedalla(IdGuerraClan,IdMedalla)values(13,4);
Insert Into GuerraClanMedalla(IdGuerraClan,IdMedalla)values(14,5);
Insert Into GuerraClanMedalla(IdGuerraClan,IdMedalla)values(15,6);
Insert Into GuerraClanMedalla(IdGuerraClan,IdMedalla)values(16,7);
Insert Into GuerraClanMedalla(IdGuerraClan,IdMedalla)values(17,8);
Insert Into GuerraClanMedalla(IdGuerraClan,IdMedalla)values(18,9);
Insert Into GuerraClanMedalla(IdGuerraClan,IdMedalla)values(19,10);
UPDATE GuerraClanMedalla Set IdMedalla='5' WHERE IdGuerraClanMedalla= '10';
Delete from GuerraClanMedalla where IdGuerraClanMedalla  ='3';
Select * from GuerraClanMedalla;
--Tabla practica
Insert Into Practica(IdCompaniaIndividual,Nivel,NumTropasRemplaso,NombreCampoBatalla,CantidadOro,CantidadElixir)values(1,4,3,'Golpes gigantescos',5000,5000);
Insert Into Practica(IdCompaniaIndividual,Nivel,NumTropasRemplaso,NombreCampoBatalla,CantidadOro,CantidadElixir)values(2,5,3,'Desfile de globos',25000,25000);
Insert Into Practica(IdCompaniaIndividual,Nivel,NumTropasRemplaso,NombreCampoBatalla,CantidadOro,CantidadElixir)values(3,6,3,'Calcinacion',50000,50000);
Insert Into Practica(IdCompaniaIndividual,Nivel,NumTropasRemplaso,NombreCampoBatalla,CantidadOro,CantidadElixir)values(6,7,5,'Incursion aerea',100000,100000);
Insert Into Practica(IdCompaniaIndividual,Nivel,NumTropasRemplaso,NombreCampoBatalla,CantidadOro,CantidadElixir)values(7,7,5,'pesos pesados',100000,100000);
Insert Into Practica(IdCompaniaIndividual,Nivel,NumTropasRemplaso,NombreCampoBatalla,CantidadOro,CantidadElixir)values(8,8,5,'Hacha magica',200000,200000);
Insert Into Practica(IdCompaniaIndividual,Nivel,NumTropasRemplaso,NombreCampoBatalla,CantidadOro,CantidadElixir)values(9,8,7,'LavaLoon',200000,200000);
Insert Into Practica(IdCompaniaIndividual,Nivel,NumTropasRemplaso,NombreCampoBatalla,CantidadOro,CantidadElixir)values(10,8,7,'Bebes enojados',300000,300000);
Insert Into Practica(IdCompaniaIndividual,Nivel,NumTropasRemplaso,NombreCampoBatalla,CantidadOro,CantidadElixir)values(1,9,10,'Brujas al poder',300000,300000);
UPDATE Practica Set NombreCampoBatalla='Mineromania' WHERE IdPractica= '10';
Delete from Practica where IdPractica  ='3';
Select * from Practica;
--Tabla ModoMejora
Insert Into ModoJuego(IdCompania,IdLigaGuerraClanes,IdPractica)values(1,10,6);
Insert Into ModoJuego(IdCompania,IdLigaGuerraClanes,IdPractica)values(2,9,8);
Insert Into ModoJuego(IdCompania,IdLigaGuerraClanes,IdPractica)values(3,8,2);
Insert Into ModoJuego(IdCompania,IdLigaGuerraClanes,IdPractica)values(5,6,4);
Insert Into ModoJuego(IdCompania,IdLigaGuerraClanes,IdPractica)values(6,5,7);
Insert Into ModoJuego(IdCompania,IdLigaGuerraClanes,IdPractica)values(7,4,1);
Insert Into ModoJuego(IdCompania,IdLigaGuerraClanes,IdPractica)values(8,3,9);
Insert Into ModoJuego(IdCompania,IdLigaGuerraClanes,IdPractica)values(9,2,5);
Insert Into ModoJuego(IdCompania,IdLigaGuerraClanes,IdPractica)values(10,1,1);
Insert Into ModoJuego(IdCompania,IdLigaGuerraClanes,IdPractica)values(1,5,6);
UPDATE ModoJuego Set IdPractica='2' WHERE IdModoJuego= '10';
Delete from ModoJuego where IdModoJuego  ='3';
Select * from ModoJuego;
--Tabla mejora
Insert Into Mejora(IdDefensa,IdTropa,IdHechiso,IdEstructura,IdMuro,IdJugador,IdAyuntamientoBaseConstuctor,NombreMejora,TiempoUtilisado,NombreRecurso,Cantidad)values(1,6,3,8,3,12,2,'Ayuntamiento1','2022-09-01 05:00:00.000','Oro',1);
Insert Into Mejora(IdDefensa,IdTropa,IdHechiso,IdEstructura,IdMuro,IdJugador,IdAyuntamientoBaseConstuctor,NombreMejora,TiempoUtilisado,NombreRecurso,Cantidad)values(2,1,4,3,8,18,3,'Ayuntamiento2','2022-08-01 05:00:00.000','Elixir',1);
Insert Into Mejora(IdDefensa,IdTropa,IdHechiso,IdEstructura,IdMuro,IdJugador,IdAyuntamientoBaseConstuctor,NombreMejora,TiempoUtilisado,NombreRecurso,Cantidad)values(3,2,1,9,7,22,5,'Ayuntamiento3','2022-07-01 05:00:00.000','Oro',1);
Insert Into Mejora(IdDefensa,IdTropa,IdHechiso,IdEstructura,IdMuro,IdJugador,IdAyuntamientoBaseConstuctor,NombreMejora,TiempoUtilisado,NombreRecurso,Cantidad)values(3,3,8,5,6,23,6,'Ayuntamiento4','2022-06-01 05:00:00.000','Negro',1);
Insert Into Mejora(IdDefensa,IdTropa,IdHechiso,IdEstructura,IdMuro,IdJugador,IdAyuntamientoBaseConstuctor,NombreMejora,TiempoUtilisado,NombreRecurso,Cantidad)values(5,4,5,1,1,29,7,'Ayuntamiento5','2022-05-01 05:00:00.000','Elixir',1);
Insert Into Mejora(IdDefensa,IdTropa,IdHechiso,IdEstructura,IdMuro,IdJugador,IdAyuntamientoBaseConstuctor,NombreMejora,TiempoUtilisado,NombreRecurso,Cantidad)values(6,5,2,5,2,33,8,'Ayuntamiento6','2022-04-01 05:00:00.000','Negro',1);
Insert Into Mejora(IdDefensa,IdTropa,IdHechiso,IdEstructura,IdMuro,IdJugador,IdAyuntamientoBaseConstuctor,NombreMejora,TiempoUtilisado,NombreRecurso,Cantidad)values(7,6,6,3,9,35,10,'Ayuntamiento7','2022-03-01 05:00:00.000','Oro',1);
Insert Into Mejora(IdDefensa,IdTropa,IdHechiso,IdEstructura,IdMuro,IdJugador,IdAyuntamientoBaseConstuctor,NombreMejora,TiempoUtilisado,NombreRecurso,Cantidad)values(8,7,3,8,6,36,12,'Ayuntamiento8','2022-02-01 05:00:00.000','Negro',1);
Insert Into Mejora(IdDefensa,IdTropa,IdHechiso,IdEstructura,IdMuro,IdJugador,IdAyuntamientoBaseConstuctor,NombreMejora,TiempoUtilisado,NombreRecurso,Cantidad)values(10,8,4,6,3,38,11,'Ayuntamiento9','2022-01-01 05:00:00.000','Elixir',1);
Insert Into Mejora(IdDefensa,IdTropa,IdHechiso,IdEstructura,IdMuro,IdJugador,IdAyuntamientoBaseConstuctor,NombreMejora,TiempoUtilisado,NombreRecurso,Cantidad)values(1,10,3,4,1,39,2,'Ayuntamiento10','2021-12-01 05:00:00.000','Oro',1);
UPDATE Mejora Set IdMuro='2' WHERE IdMejora= '10';
Delete from Mejora where IdMejora  ='3';
Select * from Mejora;
--Tabla Evento
Insert Into Evento(IdTemporada,Nombre,FechaInicio,FechaFinal,Descripcion)values(1,'Guerra clanes','2022-01-01 00:00:00.000','2022-01-15 00:00:00.000','Los clanes pelean a lo grande');
Insert Into Evento(IdTemporada,Nombre,FechaInicio,FechaFinal,Descripcion)values(3,'Mejora tu tropa','2022-01-01 00:00:00.000','2022-01-15 00:00:00.000','Los jugadores mejoran sus tropas al maximo');
Insert Into Evento(IdTemporada,Nombre,FechaInicio,FechaFinal,Descripcion)values(4,'El rival se hacerca','2022-01-01 00:00:00.000','2022-01-15 00:00:00.000','Podras atacar dos veces');
Insert Into Evento(IdTemporada,Nombre,FechaInicio,FechaFinal,Descripcion)values(5,'Guerra clanes','2022-01-01 00:00:00.000','2022-01-15 00:00:00.000','Los clanes pelean a lo grande');
Insert Into Evento(IdTemporada,Nombre,FechaInicio,FechaFinal,Descripcion)values(6,'Mejora tu tropa','2022-01-01 00:00:00.000','2022-01-15 00:00:00.000','Los jugadores mejoran sus tropas al maximo');
Insert Into Evento(IdTemporada,Nombre,FechaInicio,FechaFinal,Descripcion)values(7,'El rival se hacerca','2022-01-01 00:00:00.000','2022-01-15 00:00:00.000','Podras atacar dos veces');
Insert Into Evento(IdTemporada,Nombre,FechaInicio,FechaFinal,Descripcion)values(8,'Mejora tu tropa','2022-01-01 00:00:00.000','2022-01-15 00:00:00.000','Los jugadores mejoran sus tropas al maximo');
Insert Into Evento(IdTemporada,Nombre,FechaInicio,FechaFinal,Descripcion)values(9,'Guerra clanes','2022-01-01 00:00:00.000','2022-01-15 00:00:00.000','Los clanes pelean a lo grande');
Insert Into Evento(IdTemporada,Nombre,FechaInicio,FechaFinal,Descripcion)values(10,'El rival se hacerca','2022-01-01 00:00:00.000','2022-01-15 00:00:00.000','Podras atacar dos veces');
Insert Into Evento(IdTemporada,Nombre,FechaInicio,FechaFinal,Descripcion)values(8,'Mejora tu tropa','2022-01-01 00:00:00.000','2022-01-15 00:00:00.000','Los jugadores mejoran sus tropas al maximo');
UPDATE Evento Set Nombre='Mejor que antes' WHERE IdEvento= '10';
Delete from Evento where IdEvento  ='3';
Select * from Evento;
--Tabla compra
Insert Into Compra(IdRecompensa,IdPaisaje,IdAdorno,IdFormaPago,IdConstructor,IdPaseBatalla,IdForja,IdAspecto,IdEstructura,IdDefensa,IdTienda,IdRecurso,NombreProducto,Recurso,PrecioProducto,CantidadProducto)values(1,2,9,8,2,9,8,8,10,2,4,10,'Estatua','Oro',230,1);
Insert Into Compra(IdRecompensa,IdPaisaje,IdAdorno,IdFormaPago,IdConstructor,IdPaseBatalla,IdForja,IdAspecto,IdEstructura,IdDefensa,IdTienda,IdRecurso,NombreProducto,Recurso,PrecioProducto,CantidadProducto)values(2,4,10,9,4,9,1,9,9,1,2,9,'bandera','Negro',50,2);
Insert Into Compra(IdRecompensa,IdPaisaje,IdAdorno,IdFormaPago,IdConstructor,IdPaseBatalla,IdForja,IdAspecto,IdEstructura,IdDefensa,IdTienda,IdRecurso,NombreProducto,Recurso,PrecioProducto,CantidadProducto)values(3,5,7,30,9,2,8,10,6,5,7,7,'Arbol','Oro',356,3);
Insert Into Compra(IdRecompensa,IdPaisaje,IdAdorno,IdFormaPago,IdConstructor,IdPaseBatalla,IdForja,IdAspecto,IdEstructura,IdDefensa,IdTienda,IdRecurso,NombreProducto,Recurso,PrecioProducto,CantidadProducto)values(4,6,1,31,7,2,2,11,5,1,5,8,'Forja','Dinero',50,1);
Insert Into Compra(IdRecompensa,IdPaisaje,IdAdorno,IdFormaPago,IdConstructor,IdPaseBatalla,IdForja,IdAspecto,IdEstructura,IdDefensa,IdTienda,IdRecurso,NombreProducto,Recurso,PrecioProducto,CantidadProducto)values(5,7,2,32,10,6,6,12,4,4,8,1,'Laboratorio','Elixir',240,1);
Insert Into Compra(IdRecompensa,IdPaisaje,IdAdorno,IdFormaPago,IdConstructor,IdPaseBatalla,IdForja,IdAspecto,IdEstructura,IdDefensa,IdTienda,IdRecurso,NombreProducto,Recurso,PrecioProducto,CantidadProducto)values(6,8,4,33,6,1,4,13,1,5,7,2,'Saludo','Negro',150,1);
Insert Into Compra(IdRecompensa,IdPaisaje,IdAdorno,IdFormaPago,IdConstructor,IdPaseBatalla,IdForja,IdAspecto,IdEstructura,IdDefensa,IdTienda,IdRecurso,NombreProducto,Recurso,PrecioProducto,CantidadProducto)values(7,9,5,34,3,8,5,14,2,8,10,6,'PaseBatallaEnero','Oro',15;
Insert Into Compra(IdRecompensa,IdPaisaje,IdAdorno,IdFormaPago,IdConstructor,IdPaseBatalla,IdForja,IdAspecto,IdEstructura,IdDefensa,IdTienda,IdRecurso,NombreProducto,Recurso,PrecioProducto,CantidadProducto)values(9,7,7,36,9,5,2,17,10,2,4,10,'Arbusto','Elixir',30,10);
Insert Into Compra(IdRecompensa,IdPaisaje,IdAdorno,IdFormaPago,IdConstructor,IdPaseBatalla,IdForja,IdAspecto,IdEstructura,IdDefensa,IdTienda,IdRecurso,NombreProducto,Recurso,PrecioProducto,CantidadProducto)values(1,5,8,37,10,6,1,18,9,1,2,9,'Gemas','Dinero',20,5);
UPDATE Compra Set NombreProducto='Posima' WHERE IdCompra= '8';
Delete from Compra where IdCompra  ='6';
Select * from Compra;
--Tabla compra defenza
Insert Into CompraDefensa(IdCompra,IdDefensa)values(8,1);
Insert Into CompraDefensa(IdCompra,IdDefensa)values(11,2);
Insert Into CompraDefensa(IdCompra,IdDefensa)values(12,3);
Insert Into CompraDefensa(IdCompra,IdDefensa)values(14,4);
Insert Into CompraDefensa(IdCompra,IdDefensa)values(16,5);
Insert Into CompraDefensa(IdCompra,IdDefensa)values(17,6);
Insert Into CompraDefensa(IdCompra,IdDefensa)values(19,7);
Insert Into CompraDefensa(IdCompra,IdDefensa)values(21,8);
Insert Into CompraDefensa(IdCompra,IdDefensa)values(25,10);
Insert Into CompraDefensa(IdCompra,IdDefensa)values(26,1);
UPDATE CompraDefensa Set IdCompra='27' WHERE IdCompraDefensa= '18';
Delete from CompraDefensa where IdCompraDefensa  ='12';
Select * from CompraDefensa;
--Tabla compra hechizo
Insert Into CompraHechiso(IdCompra,IdHechiso)values(8,1);
Insert Into CompraHechiso(IdCompra,IdHechiso)values(11,2);
Insert Into CompraHechiso(IdCompra,IdHechiso)values(12,3);
Insert Into CompraHechiso(IdCompra,IdHechiso)values(14,4);
Insert Into CompraHechiso(IdCompra,IdHechiso)values(16,5);
Insert Into CompraHechiso(IdCompra,IdHechiso)values(17,6),
Insert Into CompraHechiso(IdCompra,IdHechiso)values(19,8);
Insert Into CompraHechiso(IdCompra,IdHechiso)values(21,9);
Insert Into CompraHechiso(IdCompra,IdHechiso)values(25,10);
Insert Into CompraHechiso(IdCompra,IdHechiso)values(26,1);
UPDATE CompraHechiso Set IdCompra='27' WHERE IdCompraHechiso= '8';
Delete from CompraHechiso where IdCompraHechiso  ='9';
Select * from CompraHechiso;

--Tabla compra muro
Insert Into CompraMuro(IdCompra,IdMuro)values(8,1);
Insert Into CompraMuro(IdCompra,IdMuro)values(11,2);
Insert Into CompraMuro(IdCompra,IdMuro)values(12,3);
Insert Into CompraMuro(IdCompra,IdMuro)values(14,4);
Insert Into CompraMuro(IdCompra,IdMuro)values(16,7);
Insert Into CompraMuro(IdCompra,IdMuro)values(17,6);
Insert Into CompraMuro(IdCompra,IdMuro)values(19,8);
Insert Into CompraMuro(IdCompra,IdMuro)values(21,9);
Insert Into CompraMuro(IdCompra,IdMuro)values(25,7);
Insert Into CompraMuro(IdCompra,IdMuro)values(26,1);
UPDATE CompraMuro Set IdCompra='27' WHERE IdCompraMuro= '8';
Delete from CompraMuro where IdCompraMuro  ='9';
Select * from CompraMuro;
--Tabla compra tienda
Insert Into CompraTienda(IdCompra,IdTienda)values(8,1);
Insert Into CompraTienda(IdCompra,IdTienda)values(11,2);
Insert Into CompraTienda(IdCompra,IdTienda)values(12,3);
Insert Into CompraTienda(IdCompra,IdTienda)values(14,4);
Insert Into CompraTienda(IdCompra,IdTienda)values(16,7);
Insert Into CompraTienda(IdCompra,IdTienda)values(17,9);
Insert Into CompraTienda(IdCompra,IdTienda)values(19,8);
Insert Into CompraTienda(IdCompra,IdTienda)values(21,9);
Insert Into CompraTienda(IdCompra,IdTienda)values(25,7);
Insert Into CompraTienda(IdCompra,IdTienda)values(26,1);
UPDATE CompraTienda Set IdCompra='27' WHERE IdCompraTienda= '8';
Delete from CompraTienda where IdCompraTienda  ='9';
Select * from CompraTienda;
--Tabla compra tropa
Insert Into CompraTropa(IdCompra,IdTropa)values(8,1);
Insert Into CompraTropa(IdCompra,IdTropa)values(11,2);
Insert Into CompraTropa(IdCompra,IdTropa)values(12,3);
Insert Into CompraTropa(IdCompra,IdTropa)values(14,4);
Insert Into CompraTropa(IdCompra,IdTropa)values(16,7);
Insert Into CompraTropa(IdCompra,IdTropa)values(17,10);
Insert Into CompraTropa(IdCompra,IdTropa)values(19,8);
Insert Into CompraTropa(IdCompra,IdTropa)values(21,10);
Insert Into CompraTropa(IdCompra,IdTropa)values(25,7);
Insert Into CompraTropa(IdCompra,IdTropa)values(26,1);
UPDATE CompraTropa Set IdCompra='27' WHERE IdCompraTropa= '8';
Delete from CompraTropa where IdCompraTropa  ='9';
Select * from ObjetoMagico;
--Tabla venta
Insert Into Venta(IdObjetoMagico,NombreObjetoMagico,CanitidadGemas,CanitdadObjetoMagico)values(1,'Libro de lucha',50,1);
Insert Into Venta(IdObjetoMagico,NombreObjetoMagico,CanitidadGemas,CanitdadObjetoMagico)values(2,'Libro de construccion',50,1);
Insert Into Venta(IdObjetoMagico,NombreObjetoMagico,CanitidadGemas,CanitdadObjetoMagico)values(3,'Libro de hechizo',50,1);
Insert Into Venta(IdObjetoMagico,NombreObjetoMagico,CanitidadGemas,CanitdadObjetoMagico)values(4,'Libro Universal',50,1);
Insert Into Venta(IdObjetoMagico,NombreObjetoMagico,CanitidadGemas,CanitdadObjetoMagico)values(10,'Runa de elixir',50,1);
Insert Into Venta(IdObjetoMagico,NombreObjetoMagico,CanitidadGemas,CanitdadObjetoMagico)values(6,'Posima de recursos',10,1);
Insert Into Venta(IdObjetoMagico,NombreObjetoMagico,CanitidadGemas,CanitdadObjetoMagico)values(7,'Posima de entrenamiento',10,1);
Insert Into Venta(IdObjetoMagico,NombreObjetoMagico,CanitidadGemas,CanitdadObjetoMagico)values(8,'Posima de constructor',15,1);
Insert Into Venta(IdObjetoMagico,NombreObjetoMagico,CanitidadGemas,CanitdadObjetoMagico)values(9,'Posima del tiempo',10,1);
Insert Into Venta(IdObjetoMagico,NombreObjetoMagico,CanitidadGemas,CanitdadObjetoMagico)values(10,'Runa de elixir',50,1);
Insert Into Venta(IdObjetoMagico,NombreObjetoMagico,CanitidadGemas,CanitdadObjetoMagico)values(2,'Libro de construccion',50,1);
UPDATE Venta Set CanitidadGemas='100' WHERE IdVenta= '10';
Delete from Venta where IdVenta  ='9';
Select * from Venta;





