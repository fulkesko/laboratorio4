

CREATE TABLE [dbo].[Autor](
	[Id_Autor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL
	PRIMARY KEY (Id_Autor)
)


CREATE TABLE [dbo].[Libro](
	[Id_libro] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [int] NOT NULL,
	[Titulo] [varchar](100) NOT NULL,
	[ISBN] [varchar](30) NOT NULL,
	[Editorial] [varchar](60) NOT NULL,
	[NumPags] [tinyint] NOT NULL,
	PRIMARY KEY (Id_libro)


);

CREATE TABLE [dbo].[Auto_Libro](
	[Id_libro_Autor][int] IDENTITY(1,1) NOT NULL,
	[Id_libro_fk][int] NOT NULL,
	[Id_Autor_fk][int] NOT NULL
	PRIMARY KEY (Id_libro_Autor)
	FOREIGN KEY (Id_libro_fk) REFERENCES Libro(Id_libro),
	FOREIGN KEY (Id_Autor_fk) REFERENCES Autor(Id_Autor)
);

CREATE TABLE [dbo].[Usuario](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[NumUsuario] [int] NOT NULL,
	[NIF] [varchar](20) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Direccion] [varchar](255) NOT NULL,
	[Telefono] [varchar](20) NOT NULL
	PRIMARY KEY (Id_Usuario)
);

CREATE TABLE [dbo].[Prestamo](
	[Id_Prestamo] [int] IDENTITY(1,1) NOT NULL,
	[Id_libro_fk] [int] NOT NULL,
	[Id_usuario_fk] [int] NOT NULL,
	[Fec_prestamo] [datetime] NOT NULL,
	[Fec_devolucion] [datetime] NOT NULL
	PRIMARY KEY (Id_Prestamo)
	FOREIGN KEY (Id_libro_fk) REFERENCES Libro(Id_libro),
	FOREIGN KEY (Id_usuario_fk) REFERENCES Usuario(Id_Usuario) 

);