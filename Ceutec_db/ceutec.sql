USE [master]
GO
/****** Object:  Database [ceutec]    Script Date: 20/3/2023 10:41:51 ******/
CREATE DATABASE [ceutec]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ceutec', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ceutec.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ceutec_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ceutec_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ceutec] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ceutec].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ceutec] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ceutec] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ceutec] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ceutec] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ceutec] SET ARITHABORT OFF 
GO
ALTER DATABASE [ceutec] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ceutec] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ceutec] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ceutec] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ceutec] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ceutec] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ceutec] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ceutec] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ceutec] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ceutec] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ceutec] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ceutec] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ceutec] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ceutec] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ceutec] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ceutec] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ceutec] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ceutec] SET RECOVERY FULL 
GO
ALTER DATABASE [ceutec] SET  MULTI_USER 
GO
ALTER DATABASE [ceutec] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ceutec] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ceutec] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ceutec] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ceutec] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ceutec] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ceutec', N'ON'
GO
ALTER DATABASE [ceutec] SET QUERY_STORE = OFF
GO
USE [ceutec]
GO
/****** Object:  Table [dbo].[Actividad]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividad](
	[ActividadID] [int] NOT NULL,
	[codigo] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ActividadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BancoModuloInventario]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BancoModuloInventario](
	[BancoID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BancoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BancoModuloVenta]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BancoModuloVenta](
	[BancoID] [int] NOT NULL,
	[codigo] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BancoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bloque]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bloque](
	[BloqueID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[UrbanizacionID] [int] NULL,
	[tipo] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[BloqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casa]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casa](
	[CasaID] [int] NOT NULL,
	[codigo] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CasaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cobranza]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cobranza](
	[CobranzaID] [int] NOT NULL,
	[Urbanizacion] [int] NULL,
	[BancoID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CobranzaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colinda]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colinda](
	[ColindaID] [int] NOT NULL,
	[LoteID] [int] NULL,
	[tipo] [varchar](1) NULL,
	[descripcion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ColindaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuotaCab]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuotaCab](
	[CuotaCabID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[VentaID] [int] NULL,
	[valor] [float] NULL,
	[interes] [float] NULL,
	[tiempo] [int] NULL,
	[tipo] [varchar](1) NULL,
	[estado] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CuotaCabID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuotaCabPago]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuotaCabPago](
	[CuotaCabID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[VentaID] [int] NULL,
	[valor] [float] NULL,
	[interes] [float] NULL,
	[tiempo] [int] NULL,
	[tipo] [varchar](20) NULL,
	[estado] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CuotaCabID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuotaDet]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuotaDet](
	[CuotaDetID] [int] NOT NULL,
	[CuotaCablID] [int] NULL,
	[codigo] [varchar](20) NULL,
	[FechaProgreso] [datetime] NULL,
	[FechaVence] [datetime] NULL,
	[FechaPago] [datetime] NULL,
	[capital] [float] NULL,
	[interes] [float] NULL,
	[extra] [float] NULL,
	[mora] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[CuotaDetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuotaDetPago]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuotaDetPago](
	[CuotaDetID] [int] NOT NULL,
	[CuotaCabID] [int] NULL,
	[codigo] [varchar](20) NULL,
	[FechaProceso] [datetime] NULL,
	[FechaVence] [datetime] NULL,
	[FechaPago] [datetime] NULL,
	[capital] [float] NULL,
	[interes] [float] NULL,
	[extra] [float] NULL,
	[mora] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[CuotaDetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[EmpresaID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[nombre] [varchar](20) NULL,
	[ActividadID] [int] NULL,
	[ingreso] [datetime] NULL,
	[puesto] [varchar](50) NULL,
	[sueldo] [float] NULL,
	[tipo] [varchar](50) NULL,
	[web] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpresaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[LocalidadID] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LocalidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalidadInventario]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalidadInventario](
	[LocalidadID] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LocalidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lote]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lote](
	[LoteID] [int] NOT NULL,
	[BloqueID] [int] NULL,
	[codigo] [varchar](50) NULL,
	[area] [float] NULL,
	[matricula] [varchar](50) NULL,
	[catrastral] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoteGasto]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoteGasto](
	[LoteGastoID] [int] NOT NULL,
	[documento] [varchar](20) NULL,
	[tipodocumento] [varchar](20) NULL,
	[valor] [float] NULL,
	[LoteID] [int] NULL,
	[archivo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LoteGastoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoteInventario]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoteInventario](
	[LoteID] [int] NOT NULL,
	[BloueID] [int] NULL,
	[codigo] [varchar](20) NULL,
	[area] [float] NULL,
	[matricula] [varchar](20) NULL,
	[catrastral] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[LoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moneda]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moneda](
	[MonedaID] [int] NOT NULL,
	[codigo] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MonedaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacionalidad]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacionalidad](
	[NacionalidadID] [int] NOT NULL,
	[codigo] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[NacionalidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoCab]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoCab](
	[PagoCabID] [int] NOT NULL,
	[VentaID] [int] NULL,
	[WebTransaccionesID] [int] NULL,
	[fecha] [datetime] NULL,
	[estado] [varchar](1) NULL,
	[ReciboCabID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PagoCabID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoDet]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoDet](
	[PagoDetID] [int] NOT NULL,
	[PagoCabID] [int] NULL,
	[CuotaDet] [int] NULL,
	[tipo] [varchar](1) NULL,
	[valor] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[PagoDetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[PersonaID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[nombre] [varchar](20) NULL,
	[sexo] [varchar](1) NULL,
	[civil] [varchar](1) NULL,
	[identidad] [varchar](20) NULL,
	[tipoidentidad] [varchar](1) NULL,
	[rtn] [varchar](20) NULL,
	[fechaNac] [datetime] NULL,
	[localidadID] [int] NULL,
	[direccion] [varchar](70) NULL,
	[nacionalidad] [int] NULL,
	[ProfesionID] [int] NULL,
	[email] [varchar](40) NULL,
	[tipo] [varchar](1) NULL,
	[vehiculo] [bit] NULL,
	[modelo] [varchar](20) NULL,
	[año] [int] NULL,
	[placa] [varchar](20) NULL,
	[tipocasa] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonaLabor]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonaLabor](
	[PersonalLaborID] [int] NOT NULL,
	[PersonaID] [int] NULL,
	[EmpresaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonalLaborID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonaModuloVenta]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonaModuloVenta](
	[PersonaID] [int] NOT NULL,
	[codigo] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[sexo] [varchar](1) NULL,
	[civil] [varchar](1) NULL,
	[identidad] [varchar](20) NULL,
	[tipoidentidad] [varchar](1) NULL,
	[rtn] [varchar](20) NULL,
	[fechaNac] [datetime] NULL,
	[localidadID] [int] NULL,
	[direccion] [varchar](70) NULL,
	[nacionalidad] [int] NULL,
	[ProfesionID] [int] NULL,
	[email] [varchar](40) NULL,
	[tipo] [varchar](1) NULL,
	[vehiculo] [bit] NULL,
	[modelo] [varchar](20) NULL,
	[año] [int] NULL,
	[placa] [varchar](20) NULL,
	[tipocasa] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesion]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesion](
	[ProfesionID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[nombre] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProfesionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReciboCab]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReciboCab](
	[ReciboCabID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[FechaMovimiento] [datetime] NULL,
	[FechaProceso] [datetime] NULL,
	[valor] [float] NULL,
	[estado] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReciboCabID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referencia]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referencia](
	[ReferenciaID] [int] NOT NULL,
	[PersonaID] [int] NULL,
	[nombre] [varchar](50) NULL,
	[observacion] [varchar](200) NULL,
	[tipo] [varchar](1) NULL,
	[direccion] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReferenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urbanizacion]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urbanizacion](
	[UrbanizacionID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[nombre] [varchar](20) NULL,
	[LocalidadID] [int] NULL,
	[fraccionamiento] [varchar](20) NULL,
	[tomo] [varchar](20) NULL,
	[costo] [float] NULL,
	[inicio] [datetime] NULL,
	[observacion] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[UrbanizacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrbanizacionAcceso]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrbanizacionAcceso](
	[UrbanizacionAccesoID] [int] NOT NULL,
	[UsuarioID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UrbanizacionAccesoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[VentaID] [int] NOT NULL,
	[codigo] [varchar](50) NULL,
	[tipo] [varchar](1) NULL,
	[LoteID] [int] NULL,
	[ClienteID] [int] NULL,
	[SucesorID] [int] NULL,
	[CasaID] [int] NULL,
	[estado] [varchar](1) NULL,
	[BancoID] [int] NULL,
	[reserva] [varchar](20) NULL,
	[MonedaID] [int] NULL,
	[activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[VentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaPago]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaPago](
	[VentaID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[tipo] [varchar](1) NULL,
	[LoteID] [int] NULL,
	[Cliente] [int] NULL,
	[SucesorID] [int] NULL,
	[CasaID] [int] NULL,
	[estado] [varchar](1) NULL,
	[BancoID] [int] NULL,
	[reserva] [varchar](20) NULL,
	[Moneda] [int] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[VentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebRespuesta]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebRespuesta](
	[WebRespuestaID] [int] NOT NULL,
	[codigo] [varchar](20) NULL,
	[nombre] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[WebRespuestaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebTransaccion]    Script Date: 20/3/2023 10:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebTransaccion](
	[WebTransaccionesID] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[codigo] [varchar](20) NULL,
	[sucursal] [varchar](20) NULL,
	[agencia] [varchar](20) NULL,
	[WebRespuestaID] [int] NULL,
	[referencia] [varchar](20) NULL,
	[moneda] [varchar](20) NULL,
	[reversion] [varchar](20) NULL,
	[usuario] [varchar](20) NULL,
	[tasa] [float] NULL,
	[clave] [varchar](20) NULL,
	[banco] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[WebTransaccionesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Actividad] ([ActividadID], [codigo], [nombre]) VALUES (1, N'001', N'visitas')
INSERT [dbo].[Actividad] ([ActividadID], [codigo], [nombre]) VALUES (2, N'002', N'visitas')
INSERT [dbo].[Actividad] ([ActividadID], [codigo], [nombre]) VALUES (3, N'003', N'visitas')
GO
INSERT [dbo].[BancoModuloInventario] ([BancoID], [codigo], [nombre]) VALUES (1, N'001', N'Atlantida')
INSERT [dbo].[BancoModuloInventario] ([BancoID], [codigo], [nombre]) VALUES (2, N'002', N'banpais')
INSERT [dbo].[BancoModuloInventario] ([BancoID], [codigo], [nombre]) VALUES (3, N'003', N'Atlantida')
GO
INSERT [dbo].[BancoModuloVenta] ([BancoID], [codigo], [nombre]) VALUES (1, N'001', N'Banpais')
INSERT [dbo].[BancoModuloVenta] ([BancoID], [codigo], [nombre]) VALUES (2, N'002', N'Banrural')
INSERT [dbo].[BancoModuloVenta] ([BancoID], [codigo], [nombre]) VALUES (3, N'003', N'Atlantida')
GO
INSERT [dbo].[Bloque] ([BloqueID], [codigo], [UrbanizacionID], [tipo]) VALUES (1, N'001', 1, N'm')
INSERT [dbo].[Bloque] ([BloqueID], [codigo], [UrbanizacionID], [tipo]) VALUES (2, N'002', 1, N'm')
INSERT [dbo].[Bloque] ([BloqueID], [codigo], [UrbanizacionID], [tipo]) VALUES (3, N'003', 1, N'm')
GO
INSERT [dbo].[Casa] ([CasaID], [codigo], [nombre]) VALUES (1, N'001', N'Casa Roja')
INSERT [dbo].[Casa] ([CasaID], [codigo], [nombre]) VALUES (2, N'002', N'Casa Cabañas')
INSERT [dbo].[Casa] ([CasaID], [codigo], [nombre]) VALUES (3, N'003', N'Casa 1604')
GO
INSERT [dbo].[Cobranza] ([CobranzaID], [Urbanizacion], [BancoID]) VALUES (1, 1, 1)
INSERT [dbo].[Cobranza] ([CobranzaID], [Urbanizacion], [BancoID]) VALUES (2, 2, 2)
INSERT [dbo].[Cobranza] ([CobranzaID], [Urbanizacion], [BancoID]) VALUES (3, 3, 3)
GO
INSERT [dbo].[Colinda] ([ColindaID], [LoteID], [tipo], [descripcion]) VALUES (1, 1, N'a', N'Aislada')
GO
INSERT [dbo].[CuotaCab] ([CuotaCabID], [codigo], [VentaID], [valor], [interes], [tiempo], [tipo], [estado]) VALUES (1, N'001', 1, 5000, 15, 5, N'm', N'b')
INSERT [dbo].[CuotaCab] ([CuotaCabID], [codigo], [VentaID], [valor], [interes], [tiempo], [tipo], [estado]) VALUES (2, N'002', 2, 4500, 15, 4, N'm', N'b')
INSERT [dbo].[CuotaCab] ([CuotaCabID], [codigo], [VentaID], [valor], [interes], [tiempo], [tipo], [estado]) VALUES (3, N'003', 3, 6200, 15, 10, N'm', N'b')
GO
INSERT [dbo].[CuotaCabPago] ([CuotaCabID], [codigo], [VentaID], [valor], [interes], [tiempo], [tipo], [estado]) VALUES (1, N'001', 1, 500, 15, 2, N'c', N'actualizado')
GO
INSERT [dbo].[CuotaDet] ([CuotaDetID], [CuotaCablID], [codigo], [FechaProgreso], [FechaVence], [FechaPago], [capital], [interes], [extra], [mora]) VALUES (1, 1, N'001', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2023-05-01T00:00:00.000' AS DateTime), 2000, 15, 200, 15)
INSERT [dbo].[CuotaDet] ([CuotaDetID], [CuotaCablID], [codigo], [FechaProgreso], [FechaVence], [FechaPago], [capital], [interes], [extra], [mora]) VALUES (2, 2, N'002', CAST(N'2023-02-01T00:00:00.000' AS DateTime), CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2023-05-01T00:00:00.000' AS DateTime), 1500, 15, 100, 15)
INSERT [dbo].[CuotaDet] ([CuotaDetID], [CuotaCablID], [codigo], [FechaProgreso], [FechaVence], [FechaPago], [capital], [interes], [extra], [mora]) VALUES (3, 3, N'003', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2023-05-01T00:00:00.000' AS DateTime), 2500, 15, 100, 15)
GO
INSERT [dbo].[CuotaDetPago] ([CuotaDetID], [CuotaCabID], [codigo], [FechaProceso], [FechaVence], [FechaPago], [capital], [interes], [extra], [mora]) VALUES (1, 1, N'201', CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2023-08-01T00:00:00.000' AS DateTime), CAST(N'2023-08-01T00:00:00.000' AS DateTime), 1500, 15, 200, 15)
GO
INSERT [dbo].[Empresa] ([EmpresaID], [codigo], [nombre], [ActividadID], [ingreso], [puesto], [sueldo], [tipo], [web], [direccion]) VALUES (1, N'001', N'Casagri', 1, CAST(N'2023-01-04T00:00:00.000' AS DateTime), N'gerente', 15000, N'p', N'casagri.com', N'azacualpa')
INSERT [dbo].[Empresa] ([EmpresaID], [codigo], [nombre], [ActividadID], [ingreso], [puesto], [sueldo], [tipo], [web], [direccion]) VALUES (2, N'001', N'Inversiones A', 2, CAST(N'2023-02-02T00:00:00.000' AS DateTime), N'gerente', 20000, N'p', N'invers.com', N'azacualpa')
INSERT [dbo].[Empresa] ([EmpresaID], [codigo], [nombre], [ActividadID], [ingreso], [puesto], [sueldo], [tipo], [web], [direccion]) VALUES (3, N'003', N'Cibertec', 3, CAST(N'2023-01-08T00:00:00.000' AS DateTime), N'gerente', 11000, N'p', N'tec.com', N'azacualpa')
GO
INSERT [dbo].[Localidad] ([LocalidadID], [nombre]) VALUES (1, N'El Centro')
INSERT [dbo].[Localidad] ([LocalidadID], [nombre]) VALUES (2, N'Acasias')
INSERT [dbo].[Localidad] ([LocalidadID], [nombre]) VALUES (3, N'Acasias')
GO
INSERT [dbo].[LocalidadInventario] ([LocalidadID], [nombre]) VALUES (1, N'Azacualpa')
GO
INSERT [dbo].[Lote] ([LoteID], [BloqueID], [codigo], [area], [matricula], [catrastral]) VALUES (1, 1, N'001', 16, N'0101102', N'area maxima 65')
INSERT [dbo].[Lote] ([LoteID], [BloqueID], [codigo], [area], [matricula], [catrastral]) VALUES (2, 2, N'001', 25, N'0202202', N'area maxima 50')
INSERT [dbo].[Lote] ([LoteID], [BloqueID], [codigo], [area], [matricula], [catrastral]) VALUES (3, 3, N'003', 24, N'0040140', N'area maxima 50')
GO
INSERT [dbo].[LoteGasto] ([LoteGastoID], [documento], [tipodocumento], [valor], [LoteID], [archivo]) VALUES (1, N'independiente', N'independiente', 5000, 1, N'lotes')
GO
INSERT [dbo].[LoteInventario] ([LoteID], [BloueID], [codigo], [area], [matricula], [catrastral]) VALUES (1, 1, N'001', 105, N'LT201', N'Propiedad Milton')
GO
INSERT [dbo].[Moneda] ([MonedaID], [codigo], [nombre]) VALUES (1, N'001', N'lps')
INSERT [dbo].[Moneda] ([MonedaID], [codigo], [nombre]) VALUES (2, N'002', N'quetzal')
INSERT [dbo].[Moneda] ([MonedaID], [codigo], [nombre]) VALUES (3, N'003', N'dolar')
GO
INSERT [dbo].[Nacionalidad] ([NacionalidadID], [codigo], [nombre]) VALUES (1, N'001', N'Honduras')
INSERT [dbo].[Nacionalidad] ([NacionalidadID], [codigo], [nombre]) VALUES (2, N'002', N'Guatemala')
INSERT [dbo].[Nacionalidad] ([NacionalidadID], [codigo], [nombre]) VALUES (3, N'003', N'USA')
GO
INSERT [dbo].[PagoCab] ([PagoCabID], [VentaID], [WebTransaccionesID], [fecha], [estado], [ReciboCabID]) VALUES (1, 1, 1, CAST(N'2023-06-01T00:00:00.000' AS DateTime), N'b', 1)
GO
INSERT [dbo].[PagoDet] ([PagoDetID], [PagoCabID], [CuotaDet], [tipo], [valor]) VALUES (1, 1, 1, N'c', 500)
GO
INSERT [dbo].[Persona] ([PersonaID], [codigo], [nombre], [sexo], [civil], [identidad], [tipoidentidad], [rtn], [fechaNac], [localidadID], [direccion], [nacionalidad], [ProfesionID], [email], [tipo], [vehiculo], [modelo], [año], [placa], [tipocasa]) VALUES (1, N'001', N'Melvin', N'M', N'S', N'1604-2002-00454', N'p', N'1604-2002-004541', CAST(N'2002-03-01T00:00:00.000' AS DateTime), 1, N'azacualpa', 1, 1, N'melvin@gmail.com', N'a', 1, N'pickup', 2020, N'MG1524', N'apartamento')
INSERT [dbo].[Persona] ([PersonaID], [codigo], [nombre], [sexo], [civil], [identidad], [tipoidentidad], [rtn], [fechaNac], [localidadID], [direccion], [nacionalidad], [ProfesionID], [email], [tipo], [vehiculo], [modelo], [año], [placa], [tipocasa]) VALUES (2, N'002', N'MIlton', N'M', N'S', N'1604-2001-00855', N'p', N'1604-2002-008551', CAST(N'2001-04-01T00:00:00.000' AS DateTime), 2, N'azacualpa', 1, 1, N'milton@gmail.com', N'a', 1, N'corolla', 2010, N'Kmj154', N'apartamento')
INSERT [dbo].[Persona] ([PersonaID], [codigo], [nombre], [sexo], [civil], [identidad], [tipoidentidad], [rtn], [fechaNac], [localidadID], [direccion], [nacionalidad], [ProfesionID], [email], [tipo], [vehiculo], [modelo], [año], [placa], [tipocasa]) VALUES (3, N'003', N'Rigoberto', N'M', N'S', N'1604-2001-00145', N'p', N'1604-2002-001451', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 3, N'azacualpa', 1, 1, N'rigo@gmail.com', N'a', 1, N'pickup', 2015, N'JUN54', N'apartamento')
GO
INSERT [dbo].[PersonaLabor] ([PersonalLaborID], [PersonaID], [EmpresaID]) VALUES (1, 1, 1)
INSERT [dbo].[PersonaLabor] ([PersonalLaborID], [PersonaID], [EmpresaID]) VALUES (2, 2, 2)
INSERT [dbo].[PersonaLabor] ([PersonalLaborID], [PersonaID], [EmpresaID]) VALUES (3, 3, 3)
GO
INSERT [dbo].[PersonaModuloVenta] ([PersonaID], [codigo], [nombre], [sexo], [civil], [identidad], [tipoidentidad], [rtn], [fechaNac], [localidadID], [direccion], [nacionalidad], [ProfesionID], [email], [tipo], [vehiculo], [modelo], [año], [placa], [tipocasa]) VALUES (1, N'001', N'Mauricio', N'M', N'S', N'1604-1994-00454', N'p', N'1604-1994-004541', CAST(N'1994-03-01T00:00:00.000' AS DateTime), 1, N'SPS', 1, 1, N'mauric@gmail.com', N'a', 1, N'pickup', 2019, N'MG1524', N'residencial')
INSERT [dbo].[PersonaModuloVenta] ([PersonaID], [codigo], [nombre], [sexo], [civil], [identidad], [tipoidentidad], [rtn], [fechaNac], [localidadID], [direccion], [nacionalidad], [ProfesionID], [email], [tipo], [vehiculo], [modelo], [año], [placa], [tipocasa]) VALUES (2, N'002', N'Marvin', N'M', N'S', N'1604-1997-00848', N'p', N'1604-1997-004541', CAST(N'1997-03-01T00:00:00.000' AS DateTime), 1, N'macuelizo', 1, 1, N'vin@gmail.com', N'a', 1, N'pickup', 2009, N'KJJ1512', N'residencial')
INSERT [dbo].[PersonaModuloVenta] ([PersonaID], [codigo], [nombre], [sexo], [civil], [identidad], [tipoidentidad], [rtn], [fechaNac], [localidadID], [direccion], [nacionalidad], [ProfesionID], [email], [tipo], [vehiculo], [modelo], [año], [placa], [tipocasa]) VALUES (3, N'003', N'Cristian', N'M', N'S', N'1604-2002-11510', N'p', N'1604-2002-004541', CAST(N'2002-03-01T00:00:00.000' AS DateTime), 1, N'azacualpa', 1, 1, N'cris@gmail.com', N'a', 1, N'pickup', 2023, N'LK2054', N'residencial')
GO
INSERT [dbo].[Profesion] ([ProfesionID], [codigo], [nombre]) VALUES (1, N'001', N'catedratico')
INSERT [dbo].[Profesion] ([ProfesionID], [codigo], [nombre]) VALUES (2, N'002,', N'ingeniero')
INSERT [dbo].[Profesion] ([ProfesionID], [codigo], [nombre]) VALUES (3, N'003', N'licenciado')
INSERT [dbo].[Profesion] ([ProfesionID], [codigo], [nombre]) VALUES (4, N'004', N'catedratico')
INSERT [dbo].[Profesion] ([ProfesionID], [codigo], [nombre]) VALUES (5, N'005', N'catedratico')
GO
INSERT [dbo].[ReciboCab] ([ReciboCabID], [codigo], [FechaMovimiento], [FechaProceso], [valor], [estado]) VALUES (1, N'001', CAST(N'2023-09-01T00:00:00.000' AS DateTime), CAST(N'2023-10-01T00:00:00.000' AS DateTime), 1500, N'a')
GO
INSERT [dbo].[Referencia] ([ReferenciaID], [PersonaID], [nombre], [observacion], [tipo], [direccion], [correo]) VALUES (1, 1, N'Kevin', N'esta todo bien', N'r', N'azacualpa S.B', N'kevin@gmail.com')
INSERT [dbo].[Referencia] ([ReferenciaID], [PersonaID], [nombre], [observacion], [tipo], [direccion], [correo]) VALUES (2, 2, N'Estela', N'esta todo bien', N'r', N'macuelizo S.B', N'estela@gmail.com')
INSERT [dbo].[Referencia] ([ReferenciaID], [PersonaID], [nombre], [observacion], [tipo], [direccion], [correo]) VALUES (3, 3, N'Maynor', N'esta todo bien', N'r', N'azacualpa S.B', N'may@gmail.com')
GO
INSERT [dbo].[Urbanizacion] ([UrbanizacionID], [codigo], [nombre], [LocalidadID], [fraccionamiento], [tomo], [costo], [inicio], [observacion]) VALUES (1, N'001', N'CasaHogar', 1, N'Urbano', N'Creciente', 2000000, CAST(N'2021-05-10T00:00:00.000' AS DateTime), N'Al 100')
GO
INSERT [dbo].[UrbanizacionAcceso] ([UrbanizacionAccesoID], [UsuarioID]) VALUES (1, 1)
INSERT [dbo].[UrbanizacionAcceso] ([UrbanizacionAccesoID], [UsuarioID]) VALUES (2, 2)
INSERT [dbo].[UrbanizacionAcceso] ([UrbanizacionAccesoID], [UsuarioID]) VALUES (3, 3)
GO
INSERT [dbo].[Usuario] ([UsuarioID], [codigo], [nombre]) VALUES (1, N'001', N'Marvin')
INSERT [dbo].[Usuario] ([UsuarioID], [codigo], [nombre]) VALUES (2, N'002', N'Maria')
INSERT [dbo].[Usuario] ([UsuarioID], [codigo], [nombre]) VALUES (3, N'003', N'Jose')
GO
INSERT [dbo].[Venta] ([VentaID], [codigo], [tipo], [LoteID], [ClienteID], [SucesorID], [CasaID], [estado], [BancoID], [reserva], [MonedaID], [activo]) VALUES (1, N'001', N'C', 1, 1, 1, 1, N'b', 1, N'1', 1, 1)
INSERT [dbo].[Venta] ([VentaID], [codigo], [tipo], [LoteID], [ClienteID], [SucesorID], [CasaID], [estado], [BancoID], [reserva], [MonedaID], [activo]) VALUES (2, N'002', N'C', 2, 3, 3, 3, N'b', 2, N'1', 3, 1)
INSERT [dbo].[Venta] ([VentaID], [codigo], [tipo], [LoteID], [ClienteID], [SucesorID], [CasaID], [estado], [BancoID], [reserva], [MonedaID], [activo]) VALUES (3, N'003', N'C', 3, 2, 2, 2, N'b', 1, N'1', 3, 1)
GO
INSERT [dbo].[VentaPago] ([VentaID], [codigo], [tipo], [LoteID], [Cliente], [SucesorID], [CasaID], [estado], [BancoID], [reserva], [Moneda], [Activo]) VALUES (1, N'001', N'c', 1, 1, 1, 1, N'b', 1, N'contrato', 1, 1)
GO
INSERT [dbo].[WebRespuesta] ([WebRespuestaID], [codigo], [nombre]) VALUES (1, N'001', N'casahogar.com')
GO
INSERT [dbo].[WebTransaccion] ([WebTransaccionesID], [fecha], [codigo], [sucursal], [agencia], [WebRespuestaID], [referencia], [moneda], [reversion], [usuario], [tasa], [clave], [banco]) VALUES (1, CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'001', N'Sucursal en Linea', N'Banpais', 1, N'20001', N'Lps', N'No aplica', N'Marvin', 2000, N'1234', N'Banpais')
GO
ALTER TABLE [dbo].[Bloque]  WITH CHECK ADD FOREIGN KEY([UrbanizacionID])
REFERENCES [dbo].[Urbanizacion] ([UrbanizacionID])
GO
ALTER TABLE [dbo].[Cobranza]  WITH CHECK ADD FOREIGN KEY([BancoID])
REFERENCES [dbo].[BancoModuloInventario] ([BancoID])
GO
ALTER TABLE [dbo].[Cobranza]  WITH CHECK ADD FOREIGN KEY([Urbanizacion])
REFERENCES [dbo].[UrbanizacionAcceso] ([UrbanizacionAccesoID])
GO
ALTER TABLE [dbo].[Colinda]  WITH CHECK ADD FOREIGN KEY([LoteID])
REFERENCES [dbo].[LoteInventario] ([LoteID])
GO
ALTER TABLE [dbo].[CuotaCab]  WITH CHECK ADD FOREIGN KEY([VentaID])
REFERENCES [dbo].[Venta] ([VentaID])
GO
ALTER TABLE [dbo].[CuotaCabPago]  WITH CHECK ADD FOREIGN KEY([VentaID])
REFERENCES [dbo].[VentaPago] ([VentaID])
GO
ALTER TABLE [dbo].[CuotaDet]  WITH CHECK ADD FOREIGN KEY([CuotaCablID])
REFERENCES [dbo].[CuotaCab] ([CuotaCabID])
GO
ALTER TABLE [dbo].[CuotaDetPago]  WITH CHECK ADD FOREIGN KEY([CuotaCabID])
REFERENCES [dbo].[CuotaCabPago] ([CuotaCabID])
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD FOREIGN KEY([ActividadID])
REFERENCES [dbo].[Actividad] ([ActividadID])
GO
ALTER TABLE [dbo].[Lote]  WITH CHECK ADD FOREIGN KEY([BloqueID])
REFERENCES [dbo].[Bloque] ([BloqueID])
GO
ALTER TABLE [dbo].[LoteGasto]  WITH CHECK ADD FOREIGN KEY([LoteID])
REFERENCES [dbo].[LoteInventario] ([LoteID])
GO
ALTER TABLE [dbo].[LoteInventario]  WITH CHECK ADD FOREIGN KEY([BloueID])
REFERENCES [dbo].[Bloque] ([BloqueID])
GO
ALTER TABLE [dbo].[PagoCab]  WITH CHECK ADD FOREIGN KEY([ReciboCabID])
REFERENCES [dbo].[ReciboCab] ([ReciboCabID])
GO
ALTER TABLE [dbo].[PagoCab]  WITH CHECK ADD FOREIGN KEY([VentaID])
REFERENCES [dbo].[VentaPago] ([VentaID])
GO
ALTER TABLE [dbo].[PagoCab]  WITH CHECK ADD FOREIGN KEY([WebTransaccionesID])
REFERENCES [dbo].[WebTransaccion] ([WebTransaccionesID])
GO
ALTER TABLE [dbo].[PagoDet]  WITH CHECK ADD FOREIGN KEY([CuotaDet])
REFERENCES [dbo].[CuotaDet] ([CuotaDetID])
GO
ALTER TABLE [dbo].[PagoDet]  WITH CHECK ADD FOREIGN KEY([PagoCabID])
REFERENCES [dbo].[PagoCab] ([PagoCabID])
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD FOREIGN KEY([localidadID])
REFERENCES [dbo].[Localidad] ([LocalidadID])
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD FOREIGN KEY([nacionalidad])
REFERENCES [dbo].[Nacionalidad] ([NacionalidadID])
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD FOREIGN KEY([ProfesionID])
REFERENCES [dbo].[Profesion] ([ProfesionID])
GO
ALTER TABLE [dbo].[PersonaLabor]  WITH CHECK ADD FOREIGN KEY([EmpresaID])
REFERENCES [dbo].[Empresa] ([EmpresaID])
GO
ALTER TABLE [dbo].[PersonaLabor]  WITH CHECK ADD FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Persona] ([PersonaID])
GO
ALTER TABLE [dbo].[PersonaModuloVenta]  WITH CHECK ADD FOREIGN KEY([localidadID])
REFERENCES [dbo].[Localidad] ([LocalidadID])
GO
ALTER TABLE [dbo].[PersonaModuloVenta]  WITH CHECK ADD FOREIGN KEY([nacionalidad])
REFERENCES [dbo].[Nacionalidad] ([NacionalidadID])
GO
ALTER TABLE [dbo].[PersonaModuloVenta]  WITH CHECK ADD FOREIGN KEY([ProfesionID])
REFERENCES [dbo].[Profesion] ([ProfesionID])
GO
ALTER TABLE [dbo].[Referencia]  WITH CHECK ADD FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Persona] ([PersonaID])
GO
ALTER TABLE [dbo].[Urbanizacion]  WITH CHECK ADD FOREIGN KEY([LocalidadID])
REFERENCES [dbo].[LocalidadInventario] ([LocalidadID])
GO
ALTER TABLE [dbo].[UrbanizacionAcceso]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([BancoID])
REFERENCES [dbo].[BancoModuloVenta] ([BancoID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([CasaID])
REFERENCES [dbo].[Casa] ([CasaID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Persona] ([PersonaID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([LoteID])
REFERENCES [dbo].[Lote] ([LoteID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([MonedaID])
REFERENCES [dbo].[Moneda] ([MonedaID])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([SucesorID])
REFERENCES [dbo].[Referencia] ([ReferenciaID])
GO
ALTER TABLE [dbo].[VentaPago]  WITH CHECK ADD FOREIGN KEY([BancoID])
REFERENCES [dbo].[BancoModuloInventario] ([BancoID])
GO
ALTER TABLE [dbo].[VentaPago]  WITH CHECK ADD FOREIGN KEY([CasaID])
REFERENCES [dbo].[Casa] ([CasaID])
GO
ALTER TABLE [dbo].[VentaPago]  WITH CHECK ADD FOREIGN KEY([Cliente])
REFERENCES [dbo].[Persona] ([PersonaID])
GO
ALTER TABLE [dbo].[VentaPago]  WITH CHECK ADD FOREIGN KEY([LoteID])
REFERENCES [dbo].[Lote] ([LoteID])
GO
ALTER TABLE [dbo].[VentaPago]  WITH CHECK ADD FOREIGN KEY([Moneda])
REFERENCES [dbo].[Moneda] ([MonedaID])
GO
ALTER TABLE [dbo].[VentaPago]  WITH CHECK ADD FOREIGN KEY([SucesorID])
REFERENCES [dbo].[Referencia] ([ReferenciaID])
GO
ALTER TABLE [dbo].[WebTransaccion]  WITH CHECK ADD FOREIGN KEY([WebRespuestaID])
REFERENCES [dbo].[WebRespuesta] ([WebRespuestaID])
GO
USE [master]
GO
ALTER DATABASE [ceutec] SET  READ_WRITE 
GO
