USE [master]
GO
/****** Object:  Database [Generacion23]    Script Date: 25/12/2023 07:32:38 p. m. ******/
CREATE DATABASE [Generacion23]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Generacion23', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Generacion23.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Generacion23_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Generacion23_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Generacion23] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Generacion23].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Generacion23] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Generacion23] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Generacion23] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Generacion23] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Generacion23] SET ARITHABORT OFF 
GO
ALTER DATABASE [Generacion23] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Generacion23] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Generacion23] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Generacion23] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Generacion23] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Generacion23] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Generacion23] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Generacion23] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Generacion23] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Generacion23] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Generacion23] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Generacion23] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Generacion23] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Generacion23] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Generacion23] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Generacion23] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Generacion23] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Generacion23] SET RECOVERY FULL 
GO
ALTER DATABASE [Generacion23] SET  MULTI_USER 
GO
ALTER DATABASE [Generacion23] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Generacion23] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Generacion23] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Generacion23] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Generacion23] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Generacion23] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Generacion23', N'ON'
GO
ALTER DATABASE [Generacion23] SET QUERY_STORE = ON
GO
ALTER DATABASE [Generacion23] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Generacion23]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[idAlumno] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellidoPaterno] [varchar](100) NULL,
	[apellidoMaterno] [varchar](100) NULL,
	[edad] [int] NULL,
	[correo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Canciones]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Canciones](
	[idCancion] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](200) NULL,
	[artista] [varchar](200) NULL,
	[album] [varchar](200) NULL,
	[duracion] [varchar](200) NULL,
	[fechaLanzamiento] [date] NULL,
	[Genero] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCancion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contactos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Paterno] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[UsuariosId] [int] NULL,
 CONSTRAINT [PK_Contactos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[idD] [int] IDENTITY(1,1) NOT NULL,
	[NombreD] [varchar](50) NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[idD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NULL,
	[numeroEmpleado] [char](5) NULL,
	[sueldo] [decimal](18, 2) NULL,
	[fechaNacimiento] [date] NULL,
	[tiempoCompleto] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[CveGpo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[CveGpo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[idM] [int] IDENTITY(1,1) NOT NULL,
	[NombreM] [varchar](50) NULL,
	[Estatus] [bit] NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[idM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[palabras]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[palabras](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[palabra1] [varchar](30) NULL,
	[palabra2] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Paterno] [varchar](50) NOT NULL,
	[Materno] [varchar](50) NOT NULL,
	[FechaAlta] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_persona] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Edad] [int] NULL,
	[FechaAlta] [smalldatetime] NULL,
	[Paterno] [varchar](50) NULL,
	[Materno] [varchar](50) NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[FechaCaducidad] [date] NULL,
	[Marcaid] [int] NULL,
	[Departamentoid] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos1]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos1](
	[Productos] [varchar](50) NOT NULL,
	[CveGpo] [varchar](50) NULL,
	[Estatus] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Auto] [varchar](50) NULL,
	[AñoInicio] [int] NULL,
	[AñoFin] [int] NULL,
	[Proveedor] [varchar](50) NULL,
	[Costo] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Productos1] PRIMARY KEY CLUSTERED 
(
	[Productos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RFC]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RFC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](70) NULL,
	[apellidoPaterno] [varchar](70) NULL,
	[apellidoMaterno] [varchar](70) NULL,
	[fechaNacimiento] [date] NULL,
	[RFC] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NombreCompleto] [varchar](50) NULL,
	[NickName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoJuegos]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoJuegos](
	[idVideoJuego] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[precio] [decimal](18, 2) NULL,
	[FechaLanzamiento] [date] NULL,
	[imagen] [varchar](max) NULL,
 CONSTRAINT [PK_VideoJuegos] PRIMARY KEY CLUSTERED 
(
	[idVideoJuego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON 

INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (2, N'Jose', N'Variela', N'Lara', 51, N'joseruizla@correo.com')
INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (4, N'Bryan', N'Martinez', N'Perez', 24, N'bryanmp@correo.com')
INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (5, N'Armando', N'Osorio', N'Rodriguez', 23, N'Aror@correo.com')
INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (1002, N'Andrea', N'Martinez', N'Perez', 25, N'andreamarez@gmail.com')
INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (1004, N'Juan', N'Guitierrez', N'Mendez', 36, N'juangm@gmail.com')
INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (1005, N'Mario ', N'Ozorio', N'Chon', 38, N'marioozochom@correo.com')
INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (1006, N'Maria', N'Jin', N'Jon', 12, N'lujinjon12@gmail.com')
INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (1011, N'Mario ', N'Perez', N'Barrera', 75, N'mariperexbarrera@hotmail.com')
INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (1012, N'Manuel ', N'Lara', N'Osorio', 56, N'manuellaraOso@correo.com')
INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (1014, N'Hannah', N'Jonson', N'Bucanas', 21, N'hannajonnas@correo.com')
INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (1016, N'Angel ', N'Noroña', N'Bonilla', 68, N'norov68@gmail.com')
INSERT [dbo].[Alumno] ([idAlumno], [nombre], [apellidoPaterno], [apellidoMaterno], [edad], [correo]) VALUES (1017, N'Ana', N'Cortez', N'Aguilar', 89, N'ana89@correo.com')
SET IDENTITY_INSERT [dbo].[Alumno] OFF
GO
SET IDENTITY_INSERT [dbo].[Canciones] ON 

INSERT [dbo].[Canciones] ([idCancion], [titulo], [artista], [album], [duracion], [fechaLanzamiento], [Genero]) VALUES (1, N'Rosa Pastel', N'Belanova', N'Dulce beat', N'3:07', CAST(N'2006-06-05' AS Date), N'Dance-Rock')
INSERT [dbo].[Canciones] ([idCancion], [titulo], [artista], [album], [duracion], [fechaLanzamiento], [Genero]) VALUES (2, N'Natural', N'Imagine Dragons', N'Origins', N'3:09', CAST(N'2018-07-17' AS Date), N'Pop-Rock')
INSERT [dbo].[Canciones] ([idCancion], [titulo], [artista], [album], [duracion], [fechaLanzamiento], [Genero]) VALUES (3, N'I don´t know how to love', N'The drums', N'Portamento', N'3:22', CAST(N'2011-09-02' AS Date), N'Rock alternativo')
INSERT [dbo].[Canciones] ([idCancion], [titulo], [artista], [album], [duracion], [fechaLanzamiento], [Genero]) VALUES (5, N'Tu', N'Camila', N'Lagrimas', N'3:22', CAST(N'2008-06-12' AS Date), N'Balada')
INSERT [dbo].[Canciones] ([idCancion], [titulo], [artista], [album], [duracion], [fechaLanzamiento], [Genero]) VALUES (6, N'Can´t Help Falling in Love', N'Elvis Presley', N'Blue Hawaii', N'3:00', CAST(N'1961-05-15' AS Date), N'Soft rock')
SET IDENTITY_INSERT [dbo].[Canciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Contactos] ON 

INSERT [dbo].[Contactos] ([id], [Nombre], [Paterno], [Telefono], [UsuariosId]) VALUES (1, N'Carmen', N'Salas', N'5516251825', 1)
INSERT [dbo].[Contactos] ([id], [Nombre], [Paterno], [Telefono], [UsuariosId]) VALUES (2, N'Ale', N'Gon', N'5526158187', 1)
INSERT [dbo].[Contactos] ([id], [Nombre], [Paterno], [Telefono], [UsuariosId]) VALUES (6, N'Andy', N'Per', N'5615841526', 2)
INSERT [dbo].[Contactos] ([id], [Nombre], [Paterno], [Telefono], [UsuariosId]) VALUES (7, N'Enrique', N'Morales', N'155514541', 1)
SET IDENTITY_INSERT [dbo].[Contactos] OFF
GO
SET IDENTITY_INSERT [dbo].[Departamentos] ON 

INSERT [dbo].[Departamentos] ([idD], [NombreD]) VALUES (1, N'Electronica')
INSERT [dbo].[Departamentos] ([idD], [NombreD]) VALUES (2, N'Abarrotes')
INSERT [dbo].[Departamentos] ([idD], [NombreD]) VALUES (3, N'Blancos')
SET IDENTITY_INSERT [dbo].[Departamentos] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [numeroEmpleado], [sueldo], [fechaNacimiento], [tiempoCompleto]) VALUES (2, N'Carlos Ruiz', N'EMP09', CAST(15264.00 AS Decimal(18, 2)), CAST(N'2001-10-15' AS Date), 1)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [numeroEmpleado], [sueldo], [fechaNacimiento], [tiempoCompleto]) VALUES (3, N'Francisco Martinez', N'EMP03', CAST(9112.21 AS Decimal(18, 2)), CAST(N'1991-05-12' AS Date), 1)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [numeroEmpleado], [sueldo], [fechaNacimiento], [tiempoCompleto]) VALUES (4, N'Jose Manuel', N'EMP08', CAST(20156.00 AS Decimal(18, 2)), CAST(N'1996-12-31' AS Date), 1)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [numeroEmpleado], [sueldo], [fechaNacimiento], [tiempoCompleto]) VALUES (5, N'Jose Carlos Zabala', N'EMP05', CAST(56413.00 AS Decimal(18, 2)), CAST(N'1998-04-23' AS Date), 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [numeroEmpleado], [sueldo], [fechaNacimiento], [tiempoCompleto]) VALUES (6, N'Lizeth Martinez', N'EMP06', CAST(12313.00 AS Decimal(18, 2)), CAST(N'1997-07-23' AS Date), 1)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [numeroEmpleado], [sueldo], [fechaNacimiento], [tiempoCompleto]) VALUES (7, N'Ana', N'EMP07', CAST(15365.00 AS Decimal(18, 2)), CAST(N'1993-05-12' AS Date), 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [numeroEmpleado], [sueldo], [fechaNacimiento], [tiempoCompleto]) VALUES (9, N'Carlos', N'EMP01', CAST(10251.00 AS Decimal(18, 2)), CAST(N'1996-05-12' AS Date), 1)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [numeroEmpleado], [sueldo], [fechaNacimiento], [tiempoCompleto]) VALUES (10, N'Horacio', N'EMP04', CAST(15625.00 AS Decimal(18, 2)), CAST(N'1996-12-12' AS Date), 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [numeroEmpleado], [sueldo], [fechaNacimiento], [tiempoCompleto]) VALUES (11, N'Rosa', N'EMP02', CAST(15678.00 AS Decimal(18, 2)), CAST(N'1997-08-15' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
INSERT [dbo].[Grupo] ([CveGpo], [Descripcion]) VALUES (N'ATC', N'ATENCION A CLIENTES')
INSERT [dbo].[Grupo] ([CveGpo], [Descripcion]) VALUES (N'CAR', N'CARBURACION')
INSERT [dbo].[Grupo] ([CveGpo], [Descripcion]) VALUES (N'CRR', N'CARROCERIA')
INSERT [dbo].[Grupo] ([CveGpo], [Descripcion]) VALUES (N'ENC', N'ENCENDIDO')
INSERT [dbo].[Grupo] ([CveGpo], [Descripcion]) VALUES (N'ENF', N'ENFRIAMIENTO')
GO
SET IDENTITY_INSERT [dbo].[Marcas] ON 

INSERT [dbo].[Marcas] ([idM], [NombreM], [Estatus]) VALUES (1, N'HP', 1)
INSERT [dbo].[Marcas] ([idM], [NombreM], [Estatus]) VALUES (2, N'Gamesa', 1)
INSERT [dbo].[Marcas] ([idM], [NombreM], [Estatus]) VALUES (3, N'Coca-Cola', 1)
SET IDENTITY_INSERT [dbo].[Marcas] OFF
GO
SET IDENTITY_INSERT [dbo].[palabras] ON 

INSERT [dbo].[palabras] ([id], [palabra1], [palabra2]) VALUES (1, N'va', N'ba')
SET IDENTITY_INSERT [dbo].[palabras] OFF
GO
SET IDENTITY_INSERT [dbo].[persona] ON 

INSERT [dbo].[persona] ([id], [Nombre], [Paterno], [Materno], [FechaAlta]) VALUES (1, N'Oscar', N'Morales', N'Cruz', CAST(N'2023-12-04T11:44:00' AS SmallDateTime))
INSERT [dbo].[persona] ([id], [Nombre], [Paterno], [Materno], [FechaAlta]) VALUES (2, N'Oscar', N'Morales', N'Cruz', CAST(N'2023-12-04T11:51:00' AS SmallDateTime))
INSERT [dbo].[persona] ([id], [Nombre], [Paterno], [Materno], [FechaAlta]) VALUES (3, N'Omar', N'Morales', N'Cruz', CAST(N'2023-12-04T11:58:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[persona] OFF
GO
SET IDENTITY_INSERT [dbo].[Personas] ON 

INSERT [dbo].[Personas] ([Id], [Nombre], [Edad], [FechaAlta], [Paterno], [Materno]) VALUES (2, N'Juana', 29, CAST(N'1996-10-08T00:00:00' AS SmallDateTime), N'Montes', N'Alarcon')
INSERT [dbo].[Personas] ([Id], [Nombre], [Edad], [FechaAlta], [Paterno], [Materno]) VALUES (3, N'Ana', 5, CAST(N'1998-10-08T00:00:00' AS SmallDateTime), N'Robles', N'Salas')
INSERT [dbo].[Personas] ([Id], [Nombre], [Edad], [FechaAlta], [Paterno], [Materno]) VALUES (8, N'Enrique', 28, CAST(N'1997-01-01T00:00:00' AS SmallDateTime), N'Morales', N'Nieto')
INSERT [dbo].[Personas] ([Id], [Nombre], [Edad], [FechaAlta], [Paterno], [Materno]) VALUES (9, N'Gerardo', 36, CAST(N'1997-01-01T00:00:00' AS SmallDateTime), N'Gonzalez', N'Ochoa')
INSERT [dbo].[Personas] ([Id], [Nombre], [Edad], [FechaAlta], [Paterno], [Materno]) VALUES (10, N'Pedro', 16, CAST(N'1997-01-01T00:00:00' AS SmallDateTime), N'Acosta', N'Dominguez')
INSERT [dbo].[Personas] ([Id], [Nombre], [Edad], [FechaAlta], [Paterno], [Materno]) VALUES (1010, N'Maridel', 38, CAST(N'2023-12-04T00:00:00' AS SmallDateTime), N'Peña', N'Cruz')
INSERT [dbo].[Personas] ([Id], [Nombre], [Edad], [FechaAlta], [Paterno], [Materno]) VALUES (1013, N'Enrique', 26, CAST(N'2023-12-07T17:01:00' AS SmallDateTime), N'Becerril', N'Ocazo')
SET IDENTITY_INSERT [dbo].[Personas] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([id], [Nombre], [FechaCaducidad], [Marcaid], [Departamentoid]) VALUES (1009, N'Teclado', CAST(N'2050-06-02' AS Date), 1, 1)
INSERT [dbo].[Productos] ([id], [Nombre], [FechaCaducidad], [Marcaid], [Departamentoid]) VALUES (2006, N'Monito', CAST(N'2029-02-02' AS Date), 1, 1)
INSERT [dbo].[Productos] ([id], [Nombre], [FechaCaducidad], [Marcaid], [Departamentoid]) VALUES (2014, N'Galletas', CAST(N'2024-06-02' AS Date), 2, 2)
INSERT [dbo].[Productos] ([id], [Nombre], [FechaCaducidad], [Marcaid], [Departamentoid]) VALUES (2015, N'Galletas', CAST(N'2024-01-01' AS Date), 3, 2)
INSERT [dbo].[Productos] ([id], [Nombre], [FechaCaducidad], [Marcaid], [Departamentoid]) VALUES (2018, N'mouse', CAST(N'2024-01-01' AS Date), 3, 3)
INSERT [dbo].[Productos] ([id], [Nombre], [FechaCaducidad], [Marcaid], [Departamentoid]) VALUES (2019, N'Oblea', CAST(N'2040-01-01' AS Date), 3, 2)
INSERT [dbo].[Productos] ([id], [Nombre], [FechaCaducidad], [Marcaid], [Departamentoid]) VALUES (2020, N'Chocolate', CAST(N'2024-06-02' AS Date), 2, 2)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
INSERT [dbo].[Productos1] ([Productos], [CveGpo], [Estatus], [Descripcion], [Auto], [AñoInicio], [AñoFin], [Proveedor], [Costo]) VALUES (N'0-001-123-012', N'CRR', N'DFD', N'MARCHA COMPLETA', N'href', 1, 8, N'BRU', CAST(1635.25 AS Decimal(18, 2)))
INSERT [dbo].[Productos1] ([Productos], [CveGpo], [Estatus], [Descripcion], [Auto], [AñoInicio], [AñoFin], [Proveedor], [Costo]) VALUES (N'0-001-125-039', N'ENC', N'*', N'MARCHA COMPLETA', N'A3', 93, 99, N'BOE', CAST(3698.23 AS Decimal(18, 2)))
INSERT [dbo].[Productos1] ([Productos], [CveGpo], [Estatus], [Descripcion], [Auto], [AñoInicio], [AñoFin], [Proveedor], [Costo]) VALUES (N'0-040-402-001', N'CAR', N'*', N'BOBINA ENCENDIDO ELEC', N'A3', 93, 99, N'BOE', CAST(2125.57 AS Decimal(18, 2)))
INSERT [dbo].[Productos1] ([Productos], [CveGpo], [Estatus], [Descripcion], [Auto], [AñoInicio], [AñoFin], [Proveedor], [Costo]) VALUES (N'1-001-183-012', N'ATC', N'DFD', N'ALTERNADOR', N'SEDAN', 23, 89, N'BOS', CAST(3206.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos1] ([Productos], [CveGpo], [Estatus], [Descripcion], [Auto], [AñoInicio], [AñoFin], [Proveedor], [Costo]) VALUES (N'25-801-12-02', N'ATC', N'*', N'GENERADOR', N'few', 12, 28, N'BOE', CAST(365825.22 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[RFC] ON 

INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1149, N'Juan Antonio', N'Gonzalez', N'Tovar', CAST(N'2001-08-16' AS Date), N'GOTJ010816')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1150, N'Mary Rosa', N'Hurtado', N'Lopez', CAST(N'2003-07-16' AS Date), N'HULM030716')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1151, N'Pedro Antonio', N' ', N'Ichoa', CAST(N'2001-04-13' AS Date), N'ICXP010413')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1152, N'Nancy Elizabeth', N'Ochoa', N'Muñoz', CAST(N'2001-07-16' AS Date), N'OOME010716')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1162, N'Irma', N'Gonzalez', N'Ruiz', CAST(N'1994-08-19' AS Date), N'GORI940819')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1163, N'Ana Juana', N'Estrada', N'X', CAST(N'1996-08-19' AS Date), N'ESXA960819')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1164, N'Juan Eduardo ', N'Peña', N'X', CAST(N'1996-08-19' AS Date), N'PEXJ960819')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1165, N'Andres', N'Ich', N'Rodriguez', CAST(N'1992-05-19' AS Date), N'IXRA920519')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1166, N'Raul', N'Arreta', N'Molina', CAST(N'1976-08-19' AS Date), N'AEMR760819')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1167, N'Luis Gorge', N'Alcatras', N'Rodriguez', CAST(N'1994-06-02' AS Date), N'AARL940602')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1168, N'Irma', N'Gonzalez', N'Ruiz', CAST(N'1994-08-19' AS Date), N'GORI940819')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1169, N'Juliana Luz', N'Gonzalez', N'Antorcha', CAST(N'1986-08-16' AS Date), N'GOAJ860816')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1170, N'Maria Angustia', N'Rosales', N'Ortega', CAST(N'1980-08-19' AS Date), N'ROOA800819')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1171, N'Moises', N'Torres', N'Perez', CAST(N'2003-05-19' AS Date), N'TOPM030519')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1172, N'Jose Arturo', N'Castañeda', N'Clavel', CAST(N'2001-08-16' AS Date), N'CACX010816')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1173, N'Enrique', N'Peña', N'Nieto', CAST(N'2006-08-19' AS Date), N'PENX060819')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1174, N'Maria Guadalupe', N'Perez', N'X', CAST(N'1987-05-16' AS Date), N'PEXG870516')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1176, N'Ana', N'Rivas', N'Palacio', CAST(N'2006-05-19' AS Date), N'RIPA060519')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1177, N'Jose Arturo', N'Cardenaz', N'Cruz', CAST(N'1978-08-19' AS Date), N'CACX780819')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1178, N'Maria Guadalupe', N'Perez', N'X', CAST(N'1987-05-16' AS Date), N'PEXG870516')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1179, N'Fernando', N'Mateos', N'Ortiz', CAST(N'1997-11-30' AS Date), N'MAOF971130')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1180, N'Maria Blanca', N'Ortega', N'Moralez', CAST(N'1996-04-18' AS Date), N'OEMB960418')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1181, N'Pedro', N'Ruiz', N'X', CAST(N'1998-06-19' AS Date), N'RUXP980619')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1182, N'Eduardo', N'X', N'Contrera', CAST(N'1986-05-12' AS Date), N'COXE860512')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1183, N'Jorge Luis', N'Martinez', N'Cruz', CAST(N'1996-05-19' AS Date), N'MACJ960519')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1184, N'Maria Guadalupe', N'Torres', N'Rivaz', CAST(N'1986-07-19' AS Date), N'TORG860719')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1185, N'Antonio', N'Herrera', N'X', CAST(N'2001-06-19' AS Date), N'HEXA010619')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1186, N'Enrique', N'Peña', N'Nieto', CAST(N'2003-09-15' AS Date), N'PENX030915')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1187, N'Ana', N'Peralta', N'X', CAST(N'2001-06-19' AS Date), N'PEXA010619')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1188, N'Miriam', N'X', N'Perez', CAST(N'1986-05-16' AS Date), N'PEXM860516')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1189, N'Julia', N'Morales', N'Perez', CAST(N'1996-08-16' AS Date), N'MOPJ960816')
INSERT [dbo].[RFC] ([ID], [nombre], [apellidoPaterno], [apellidoMaterno], [fechaNacimiento], [RFC]) VALUES (1190, N'Juan', N'Morales', N'Ochoa', CAST(N'1986-04-13' AS Date), N'MOOJ860413')
SET IDENTITY_INSERT [dbo].[RFC] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id], [NombreCompleto], [NickName], [Password]) VALUES (1, N'Oscar Lop', N'Gasper', N'123')
INSERT [dbo].[Usuarios] ([id], [NombreCompleto], [NickName], [Password]) VALUES (2, N'Diego Rod', N'Diego', N'123')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[VideoJuegos] ON 

INSERT [dbo].[VideoJuegos] ([idVideoJuego], [nombre], [precio], [FechaLanzamiento], [imagen]) VALUES (2, N'Mario', CAST(121.51 AS Decimal(18, 2)), CAST(N'2004-04-10' AS Date), N'mario.jpg')
INSERT [dbo].[VideoJuegos] ([idVideoJuego], [nombre], [precio], [FechaLanzamiento], [imagen]) VALUES (3, N'Halo', CAST(1321.21 AS Decimal(18, 2)), CAST(N'2001-05-12' AS Date), N'halo.jpg')
INSERT [dbo].[VideoJuegos] ([idVideoJuego], [nombre], [precio], [FechaLanzamiento], [imagen]) VALUES (4, N'CallofDuty', CAST(1503.10 AS Decimal(18, 2)), CAST(N'2010-10-05' AS Date), N'CallofDuty')
INSERT [dbo].[VideoJuegos] ([idVideoJuego], [nombre], [precio], [FechaLanzamiento], [imagen]) VALUES (1004, N'Zelda', CAST(1230.12 AS Decimal(18, 2)), CAST(N'2003-05-15' AS Date), N'Zelda.jpg')
INSERT [dbo].[VideoJuegos] ([idVideoJuego], [nombre], [precio], [FechaLanzamiento], [imagen]) VALUES (1005, N'Mario Bros', CAST(1523.75 AS Decimal(18, 2)), CAST(N'2013-02-15' AS Date), N'MarioBros.jpg')
INSERT [dbo].[VideoJuegos] ([idVideoJuego], [nombre], [precio], [FechaLanzamiento], [imagen]) VALUES (1006, N'Zelda', CAST(1230.12 AS Decimal(18, 2)), CAST(N'1998-08-15' AS Date), N'Zelda.jpg')
SET IDENTITY_INSERT [dbo].[VideoJuegos] OFF
GO
ALTER TABLE [dbo].[Contactos]  WITH CHECK ADD  CONSTRAINT [FK_Contactos_Usuarios] FOREIGN KEY([UsuariosId])
REFERENCES [dbo].[Usuarios] ([id])
GO
ALTER TABLE [dbo].[Contactos] CHECK CONSTRAINT [FK_Contactos_Usuarios]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Departamentos] FOREIGN KEY([Departamentoid])
REFERENCES [dbo].[Departamentos] ([idD])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Departamentos]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Marcas] FOREIGN KEY([Marcaid])
REFERENCES [dbo].[Marcas] ([idM])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Marcas]
GO
ALTER TABLE [dbo].[Productos1]  WITH CHECK ADD  CONSTRAINT [FK_Productos1_Grupo] FOREIGN KEY([CveGpo])
REFERENCES [dbo].[Grupo] ([CveGpo])
GO
ALTER TABLE [dbo].[Productos1] CHECK CONSTRAINT [FK_Productos1_Grupo]
GO
/****** Object:  StoredProcedure [dbo].[AgregaRFC]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[AgregaRFC]
@nombre VARCHAR (100),
@apellidoPaterno VARCHAR (100),
@apellidoMaterno VARCHAR (100),
@fechaNacimiento DATE,
@RFC VARCHAR (20)
AS
BEGIN 
	INSERT INTO RFC(nombre, apellidoPaterno, apellidoMaterno,fechaNacimiento, RFC)
	VALUES (@nombre, @apellidoPaterno, @apellidoMaterno, @fechaNacimiento, @RFC);
END;
GO
/****** Object:  StoredProcedure [dbo].[agregaVideojuego]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[agregaVideojuego]
@nombre VARCHAR (100),
@precio DECIMAL(18,2),
@fechaLanzamiento DATE,
@imagen VARCHAR(MAX)
AS
BEGIN 
	INSERT INTO VideoJuegos(nombre, precio, FechaLanzamiento,imagen)
	VALUES (@nombre, @precio, @fechaLanzamiento, @imagen);
END;
GO
/****** Object:  StoredProcedure [dbo].[buscarEmpleados]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[buscarEmpleados]
@texto VARCHAR (50)
AS
BEGIN 
  SELECT idEmpleado, nombre, numeroEmpleado, sueldo, fechaNacimiento, tiempoCompleto
  FROM Empleados
  WHERE nombre LIKE '%'+@texto+'%' OR idEmpleado LIKE '%' + @texto+ '%' 
  OR numeroEmpleado LIKE '%' +@texto+'%'
END;
GO
/****** Object:  StoredProcedure [dbo].[buscarRFC]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[buscarRFC]
@texto VARCHAR (50)
AS
BEGIN 
  SELECT ID, nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento, RFC
  FROM RFC
  WHERE nombre LIKE '%'+@texto+'%' OR apellidoPaterno LIKE '%'+@texto+'%' OR
  apellidoMaterno LIKE '%'+@texto+'%' OR
  nombre + apellidoPaterno + apellidoMaterno LIKE '%'+@texto+'%' OR 
  ID LIKE '%' + @texto+ '%' OR RFC LIKE '%' + @texto+ '%' OR 
  fechaNacimiento LIKE '%'+@texto+'%'
END;
GO
/****** Object:  StoredProcedure [dbo].[editarProducto]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[editarProducto]
@nombre varchar (50),
@FechaCaducidad DATE,
@Marcaid int,
@Departamentoid int,
@id int
AS
BEGIN 
	UPDATE Productos SET Nombre = @nombre, FechaCaducidad = @FechaCaducidad, 
	Marcaid = @Marcaid, Departamentoid=@Departamentoid
	WHERE Productos.id = @id
END;
GO
/****** Object:  StoredProcedure [dbo].[editarProductos1]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create     PROCEDURE [dbo].[editarProductos1]
@Productos1 varchar (50),
@Productos varchar (50),
@CveGpo varchar (50),
@Estatus varchar (50),
@Descripcion varchar (50),
@Auto4 varchar(50),
@AñoInicio int,
@AñoFin int,
@Proveedor varchar(50),
@Costo Decimal (18,2)
AS
BEGIN 

	UPDATE Productos1 SET Productos = @Productos, CveGpo = @CveGpo, Estatus=@Estatus,
	 Descripcion= @Descripcion, Auto=@Auto4, AñoInicio =@AñoInicio, AñoFin=@AñoFin,
	 Proveedor =@Proveedor, Costo =@Costo
	WHERE Productos1.Productos = @Productos1
END;
GO
/****** Object:  StoredProcedure [dbo].[editarRFCPorId]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[editarRFCPorId]
@nombre varchar (50),
@apellidoPaterno varchar (50),
@apellidoMaterno varchar (100),
@fechaNacimiento DATE,
@RFC varchar (50),
@ID INT
AS
BEGIN 
	UPDATE RFC SET nombre=@nombre, apellidoPaterno=@apellidoPaterno, apellidoMaterno=@apellidoMaterno, 
	fechaNacimiento=@fechaNacimiento, RFC =@RFC
	WHERE ID = @ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[editarVideojuego]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[editarVideojuego]
@nombre VARCHAR(100),
@precio DECIMAL (18,2),
@fechaLanzamiento DATE,
@imagen VARCHAR(MAX),
@idVideojuego int 
AS
BEGIN
	UPDATE VideoJuegos SET nombre= @nombre, precio = @precio, 
	FechaLanzamiento = @fechaLanzamiento, imagen = @imagen
	WHERE idVideoJuego = @idVideojuego;
END;
GO
/****** Object:  StoredProcedure [dbo].[eliminarRFC]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarRFC]
@ID INT
AS
BEGIN 
	DELETE RFC WHERE ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[eliminarVideojuego]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[eliminarVideojuego]
@idVideojuego INT
AS
BEGIN 
	DELETE VideoJuegos WHERE idVideojuego = @idVideojuego;;
END;
GO
/****** Object:  StoredProcedure [dbo].[obtenerRFC]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerRFC]
AS
BEGIN 
	SELECT ID, nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento, RFC
	FROM RFC;
END;
GO
/****** Object:  StoredProcedure [dbo].[obtenerRFCPorId]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerRFCPorId]
@ID INT
AS
BEGIN 
	SELECT ID, nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento, RFC
	FROM RFC WHERE ID = @ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[obtenerVideoJuegoPorId]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[obtenerVideoJuegoPorId]
@idVideojuego int 
AS
BEGIN 
	SELECT idVideojuego, nombre, precio, fechaLanzamiento, imagen
	FROM VideoJuegos
	WHERE idVideoJuego = @idVideojuego
END;
GO
/****** Object:  StoredProcedure [dbo].[obtenerVideojuegos]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[obtenerVideojuegos]
AS
BEGIN 
	SELECT idVideojuego, nombre, precio, fechaLanzamiento, imagen
	FROM Videojuegos;
END;
GO
/****** Object:  StoredProcedure [dbo].[spActualizarProdcuto]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spActualizarProdcuto](
@id int,
@nombre varchar (50),
@fechaCaducidad date,
@marcaId int,
@DepartamentoId int
)
as
BEGIN
	update Productos set 
		Nombre = @nombre,
		FechaCaducidad = @fechaCaducidad,
		Marcaid = @marcaId,
		Departamentoid = @DepartamentoId
	where id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[spActualizarProdcutos1]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create    proc [dbo].[spActualizarProdcutos1](
@Productos varchar (50),
@CveGpo varchar (50),
@Estatus varchar (50),
@Descripcion varchar (50),
@Auto4 varchar(50),
@AñoInicio int,
@AñoFin int,
@Proveedor varchar(50),
@Costo Decimal (18,2)
)
as
BEGIN
	update Productos1 set 
     Productos = @Productos,
	 CveGpo = @CveGpo, 
	 Estatus=@Estatus,
	 Descripcion= @Descripcion,
	 Auto=@Auto4, 
	 AñoInicio =@AñoInicio,
	 AñoFin=@AñoFin,
	 Proveedor =@Proveedor,
	 Costo =@Costo
	where Productos = @Productos
END
GO
/****** Object:  StoredProcedure [dbo].[spAgregarProducto]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAgregarProducto](
@nombre varchar (50),
@fechaCaducidad date,
@MarcaId int,
@DepartamentoId int
)
as
BEGIN
	if (not exists (select * from Productos where Nombre= @nombre and Marcaid = @marcaId))
	begin 
		insert into Productos values (@nombre,@fechaCaducidad,@MarcaId,@DepartamentoId); 
	end
else
	begin
		raiserror('El producto ya existe con esa marca',
		16, -- Severity
		1 --State.
		);
	end
END
GO
/****** Object:  StoredProcedure [dbo].[spAgregarProductos1]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[spAgregarProductos1](
@Productos varchar (50),
@CveGpo varchar (50),
@Estatus varchar (50),
@Descripcion varchar (50),
@Auto4 varchar(50),
@AñoInicio int,
@AñoFin int,
@Proveedor varchar(50),
@Costo Decimal (18,2)
)
as
BEGIN
	if (not exists (select * from Productos1 where Productos= @Productos ))
	begin 
		insert into Productos1 values (@Productos,@CveGpo,@Estatus,@Descripcion,@Auto4,
		@AñoInicio,@AñoFin,@Proveedor,@Costo)
	end
else
	begin
		raiserror('El producto ya existe',
		16, -- Severity
		1 --State.
		);
	end
END
GO
/****** Object:  StoredProcedure [dbo].[spBorrarProducto]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[spBorrarProducto] (
@productoid int)
as BEGIN
delete from Productos where id =@productoid
END
GO
/****** Object:  StoredProcedure [dbo].[spBorrarProductoS1]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     procedure [dbo].[spBorrarProductoS1] (
@productos varchar (50))
as BEGIN
delete from Productos1 where Productos =@productos
END
GO
/****** Object:  StoredProcedure [dbo].[spBuscarProductos]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   proc [dbo].[spBuscarProductos](
@texto varchar (50)
)
as
BEGIN
	select * from Productos t1 inner join Marcas t2 on t1.Marcaid = t2.idM where Nombre like '%' +@texto+'%' or
	NombreM like '%'+@texto+'%' or id like '%'+@texto+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[spBuscarProductos1]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create     proc [dbo].[spBuscarProductos1](
@texto varchar (50)
)
as
BEGIN
	select * from Productos1 where Productos like '%' +@texto+'%' or
	CveGpo like '%'+@texto+'%' or Estatus like '%'+@texto+'%' or Descripcion like '%'+@texto+'%' 
	or AñoInicio like '%'+@texto+'%' or AñoFin like '%'+@texto+'%' or Proveedor like '%'+@texto+'%'
	or Costo like '%'+@texto+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[speditarProducto]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[speditarProducto]
@nombre varchar (50),
@FechaCaducidad DATE,
@Marcaid int,
@Departamentoid int,
@id int
AS
BEGIN 
	UPDATE Productos SET Nombre = @nombre, FechaCaducidad = @FechaCaducidad, 
	Marcaid = @Marcaid, Departamentoid=@Departamentoid
	WHERE Productos.id = @id
END;
GO
/****** Object:  StoredProcedure [dbo].[spObtenerDepartamentos]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[spObtenerDepartamentos]
as
BEGIN
	select * from Departamentos order by NombreD
END
GO
/****** Object:  StoredProcedure [dbo].[spObtenerGrupo]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spObtenerGrupo]
as
begin 

select * from Grupo order by CveGpo

end;
GO
/****** Object:  StoredProcedure [dbo].[spObtenerMarcas]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[spObtenerMarcas]
as
BEGIN
	select * from Marcas order by NombreM
END
GO
/****** Object:  StoredProcedure [dbo].[spObtenerProductos]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[spObtenerProductos]
as
BEGIN
select * from Productos
inner join Marcas on Productos.MarcaId = Marcas.IdM
inner join Departamentos on Productos.DepartamentoId = Departamentos.IdD
END
GO
/****** Object:  StoredProcedure [dbo].[spObtenerProductos1]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spObtenerProductos1]
as
begin 

select * from Productos1
inner join Grupo on Productos1.CveGpo = Grupo.CveGpo
end;
GO
/****** Object:  StoredProcedure [dbo].[spObtenerProductos1PorCveGpo]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spObtenerProductos1PorCveGpo] (
@CveGpo varchar (50))
as
begin 

select * from Productos1
inner join Grupo on Productos1.CveGpo = Grupo.CveGpo
where Productos1.CveGpo = @CveGpo
end;
GO
/****** Object:  StoredProcedure [dbo].[spObtenerProductosPorId]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spObtenerProductosPorId](
@id int
)
as 
BEGIN
SELECT * FROM Productos
inner join Marcas on Productos.Marcaid = Marcas.idM
inner join Departamentos on Productos.Departamentoid = Departamentos.idD
where Productos.id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[spObtenerProductosSimple]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     proc [dbo].[spObtenerProductosSimple](
@texto varchar (50)
)
as 
BEGIN
SELECT * FROM Productos
inner join Marcas on Productos.Marcaid = Marcas.idM
inner join Departamentos on Productos.Departamentoid = Departamentos.idD
where Productos.Nombre like '%'+@texto+'%' or Productos.id like '%'+@texto+'%'
or Marcas.NombreM like '%'+@texto+'%'  or 
Departamentos.NombreD like '%'+@texto+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[spValidarProductoMarca]    Script Date: 25/12/2023 07:32:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   proc [dbo].[spValidarProductoMarca](
@nombre varchar (50),
@fechaCaducidad date,
@MarcaId int,
@DepartamentoId int
)
as
BEGIN
	if (not exists (select * from Productos where Nombre= @nombre and Marcaid = @marcaId))
	begin 
		insert into Productos values (@nombre,@fechaCaducidad,@MarcaId,@DepartamentoId); 
	end
else
	begin
		raiserror('El producto ya existe con esa marca',
		16, -- Severity
		1 --State.
		);
	end
END
GO
USE [master]
GO
ALTER DATABASE [Generacion23] SET  READ_WRITE 
GO
