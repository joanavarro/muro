USE [muro]
GO
ALTER TABLE [dbo].[CarreraMateria] DROP CONSTRAINT [CK_CarreraMateria_IdROL__END]
GO
ALTER TABLE [dbo].[Carrera] DROP CONSTRAINT [CK_Carrera_IdRol__END]
GO
ALTER TABLE [dbo].[AlumnosCarMateria] DROP CONSTRAINT [CK_AlumnosCarMateria_IdRol__END]
GO
ALTER TABLE [dbo].[Publicacion] DROP CONSTRAINT [FK_Publicacion_Muro]
GO
ALTER TABLE [dbo].[Publicacion] DROP CONSTRAINT [FK_Publicacion_AccesoUsuario]
GO
ALTER TABLE [dbo].[PersonaRol] DROP CONSTRAINT [FK_PersonaRol_Rol]
GO
ALTER TABLE [dbo].[PersonaRol] DROP CONSTRAINT [FK_PersonaRol_Persona]
GO
ALTER TABLE [dbo].[Muro] DROP CONSTRAINT [FK_Muro_CarreraMateria]
GO
ALTER TABLE [dbo].[Like] DROP CONSTRAINT [FK_Like_Publicacion]
GO
ALTER TABLE [dbo].[Like] DROP CONSTRAINT [FK_Like_AccesoUsuario]
GO
ALTER TABLE [dbo].[Compartir] DROP CONSTRAINT [FK_Compartir_Publicacion]
GO
ALTER TABLE [dbo].[Compartir] DROP CONSTRAINT [FK_Compartir_AccesoUsuario]
GO
ALTER TABLE [dbo].[Comentario] DROP CONSTRAINT [FK_Comentario_Publicacion]
GO
ALTER TABLE [dbo].[Comentario] DROP CONSTRAINT [FK_Comentario_AccesoUsuario]
GO
ALTER TABLE [dbo].[CarreraMateria] DROP CONSTRAINT [FK_CarreraMateria_PersonaRol]
GO
ALTER TABLE [dbo].[CarreraMateria] DROP CONSTRAINT [FK_CarreraMateria_Materia]
GO
ALTER TABLE [dbo].[CarreraMateria] DROP CONSTRAINT [FK_CarreraMateria_Carrera]
GO
ALTER TABLE [dbo].[Carrera] DROP CONSTRAINT [FK_Carrera_PersonaRol]
GO
ALTER TABLE [dbo].[AlumnosCarMateria] DROP CONSTRAINT [FK_AlumnosCarMateria_PersonaRol]
GO
ALTER TABLE [dbo].[AlumnosCarMateria] DROP CONSTRAINT [FK_AlumnosCarMateria_CarreraMateria]
GO
ALTER TABLE [dbo].[AccesoUsuario] DROP CONSTRAINT [FK_AccesoUsuario_PersonaRol]
GO
ALTER TABLE [dbo].[Publicacion] DROP CONSTRAINT [DF_Publicacion_eliminado]
GO
ALTER TABLE [dbo].[Publicacion] DROP CONSTRAINT [DF_Publicacion_habilitado]
GO
ALTER TABLE [dbo].[Publicacion] DROP CONSTRAINT [DF_Publicacion_fecha_publicacion]
GO
ALTER TABLE [dbo].[Publicacion] DROP CONSTRAINT [DF_Publicacion_likes]
GO
ALTER TABLE [dbo].[Muro] DROP CONSTRAINT [DF_Muro_fecha_creacion]
GO
ALTER TABLE [dbo].[Muro] DROP CONSTRAINT [DF_Muro_habilitado]
GO
ALTER TABLE [dbo].[Comentario] DROP CONSTRAINT [DF_Comentario_fecha_creacion]
GO
ALTER TABLE [dbo].[Comentario] DROP CONSTRAINT [DF_Comentario_eliminado]
GO
ALTER TABLE [dbo].[Comentario] DROP CONSTRAINT [DF_Comentario_habilitado]
GO
ALTER TABLE [dbo].[AccesoUsuario] DROP CONSTRAINT [DF_AccesoUsuario_fecha_acceso]
GO

/****** Object:  User [developer]    Script Date: 17/12/2014 13:21:24 ******/
/*CREATE USER [desarrollador] FOR LOGIN [desarrollador] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [desarrollador]
GO*/

/****** Object:  Table [dbo].[Like]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[Like]')is not null
DROP TABLE [dbo].[Like]
GO
/****** Object:  Table [dbo].[Compartir]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[Compartir]')is not null
DROP TABLE [dbo].[Compartir]
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[Comentario]')is not null
DROP TABLE [dbo].[Comentario]
GO
/****** Object:  Table [dbo].[Publicacion]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[Publicacion]')is not null
DROP TABLE [dbo].[Publicacion]
GO
/****** Object:  Table [dbo].[AccesoUsuario]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[AccesoUsuario]')is not null
DROP TABLE [dbo].[AccesoUsuario]
GO
/****** Object:  Table [dbo].[Muro]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[Muro]')is not null
DROP TABLE [dbo].[Muro]
GO
/****** Object:  Table [dbo].[AlumnosCarMateria]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[AlumnosCarMateria]')is not null
DROP TABLE [dbo].[AlumnosCarMateria]
GO
/****** Object:  Table [dbo].[CarreraMateria]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[CarreraMateria]')is not null
DROP TABLE [dbo].[CarreraMateria]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[Carrera]')is not null
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[Materia]')is not null
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[PersonaRol]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[PersonaRol]')is not null
DROP TABLE [dbo].[PersonaRol]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[Rol]')is not null
DROP TABLE [dbo].[Rol]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 26/03/2015 20:21:12 ******/
if OBJECT_ID('[dbo].[Persona]')is not null
DROP TABLE [dbo].[Persona]
GO
/****** Object:  Table [dbo].[AccesoUsuario]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccesoUsuario](
	[id_usuario] [varchar](10) NOT NULL,
	[password] [varchar](10) NOT NULL,
	[dni_persona] [varchar](10) NOT NULL,
	[id_rol] [tinyint] NOT NULL,
	[fecha_acceso] [varchar](25) NOT NULL,
 CONSTRAINT [PK_AccesoUsuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlumnosCarMateria]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlumnosCarMateria](
	[id_carrera] [tinyint] NOT NULL,
	[id_materia] [tinyint] NOT NULL,
	[dni_alumno] [varchar](10) NOT NULL,
	[id_rol] [tinyint] NOT NULL,
 CONSTRAINT [PK_AlumnosCarMateria] PRIMARY KEY CLUSTERED 
(
	[id_carrera] ASC,
	[id_materia] ASC,
	[dni_alumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[id_carrera] [tinyint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[dni_director] [varchar](10) NOT NULL,
	[id_rol] [tinyint] NOT NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[id_carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarreraMateria]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarreraMateria](
	[id_carrera] [tinyint] NOT NULL,
	[id_materia] [tinyint] NOT NULL,
	[dni_profesor] [varchar](10) NOT NULL,
	[id_rol] [tinyint] NOT NULL,
 CONSTRAINT [PK_CarreraMateria] PRIMARY KEY CLUSTERED 
(
	[id_carrera] ASC,
	[id_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comentario](
	[id_comentario] [int] IDENTITY(1,1) NOT NULL,
	[texto] [varchar](150) NOT NULL,
	[id_usuario] [varchar](10) NOT NULL,
	[id_publicacion] [int] NOT NULL,
	[habilitado] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[fecha_creacion] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Comentario] PRIMARY KEY CLUSTERED 
(
	[id_comentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compartir]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compartir](
	[id_compartir] [int] IDENTITY(1,1) NOT NULL,
	[id_publicacion] [int] NOT NULL,
	[id_usuario_comparte] [varchar](10) NOT NULL,
	[texto] [varchar](150) NOT NULL,
	[destino] [char](1) NULL
 CONSTRAINT [PK_Compartir] PRIMARY KEY CLUSTERED 
(
	[id_compartir] ASC,
	[id_publicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Like]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Like](
	[id_usuario] [varchar](10) NOT NULL,
	[id_publicacion] [int] NOT NULL,
 CONSTRAINT [PK_Like] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_publicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materia](
	[id_materia] [tinyint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[id_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Muro]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muro](
	[id_muro] [tinyint] IDENTITY(1,1) NOT NULL,
	[habilitado] [bit] NOT NULL,
	[fecha_creacion] [varchar](20) NOT NULL,
	[id_carrera] [tinyint] NOT NULL,
	[id_materia] [tinyint] NOT NULL,
 CONSTRAINT [PK_Muro] PRIMARY KEY CLUSTERED 
(
	[id_muro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persona]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[dni_persona] [varchar](10) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[apellido] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[dni_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonaRol]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PersonaRol](
	[dni_persona] [varchar](10) NOT NULL,
	[id_rol] [tinyint] NOT NULL,
 CONSTRAINT [PK_PersonaRol] PRIMARY KEY CLUSTERED 
(
	[dni_persona] ASC,
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Publicacion]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Publicacion](
	[id_publicacion] [int] IDENTITY(1,1) NOT NULL,
	[texto] [varchar](150) NOT NULL,
	[id_muro] [tinyint] NOT NULL,
	[id_usuario] [varchar](10) NOT NULL,
	[likes] [smallint] NOT NULL,
	[fecha_publicacion] [varchar](25) NOT NULL,
	[habilitado] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
 CONSTRAINT [PK_Publicacion] PRIMARY KEY CLUSTERED 
(
	[id_publicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 26/03/2015 20:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rol](
	[id_rol] [tinyint] NOT NULL,
	[nom_rol] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AccesoUsuario] ADD  CONSTRAINT [DF_AccesoUsuario_fecha_acceso]  DEFAULT (getdate()) FOR [fecha_acceso]
GO
ALTER TABLE [dbo].[Comentario] ADD  CONSTRAINT [DF_Comentario_habilitado]  DEFAULT ((1)) FOR [habilitado]
GO
ALTER TABLE [dbo].[Comentario] ADD  CONSTRAINT [DF_Comentario_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[Comentario] ADD  CONSTRAINT [DF_Comentario_fecha_creacion]  DEFAULT (getdate()) FOR [fecha_creacion]
GO
ALTER TABLE [dbo].[Muro] ADD  CONSTRAINT [DF_Muro_habilitado]  DEFAULT ((1)) FOR [habilitado]
GO
ALTER TABLE [dbo].[Muro] ADD  CONSTRAINT [DF_Muro_fecha_creacion]  DEFAULT (getdate()) FOR [fecha_creacion]
GO
ALTER TABLE [dbo].[Publicacion] ADD  CONSTRAINT [DF_Publicacion_likes]  DEFAULT ((0)) FOR [likes]
GO
ALTER TABLE [dbo].[Publicacion] ADD  CONSTRAINT [DF_Publicacion_fecha_publicacion]  DEFAULT (getdate()) FOR [fecha_publicacion]
GO
ALTER TABLE [dbo].[Publicacion] ADD  CONSTRAINT [DF_Publicacion_habilitado]  DEFAULT ((1)) FOR [habilitado]
GO
ALTER TABLE [dbo].[Publicacion] ADD  CONSTRAINT [DF_Publicacion_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[AccesoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_AccesoUsuario_PersonaRol] FOREIGN KEY([dni_persona], [id_rol])
REFERENCES [dbo].[PersonaRol] ([dni_persona], [id_rol])
GO
ALTER TABLE [dbo].[AccesoUsuario] CHECK CONSTRAINT [FK_AccesoUsuario_PersonaRol]
GO
ALTER TABLE [dbo].[AlumnosCarMateria]  WITH CHECK ADD  CONSTRAINT [FK_AlumnosCarMateria_CarreraMateria] FOREIGN KEY([id_carrera], [id_materia])
REFERENCES [dbo].[CarreraMateria] ([id_carrera], [id_materia])
GO
ALTER TABLE [dbo].[AlumnosCarMateria] CHECK CONSTRAINT [FK_AlumnosCarMateria_CarreraMateria]
GO
ALTER TABLE [dbo].[AlumnosCarMateria]  WITH CHECK ADD  CONSTRAINT [FK_AlumnosCarMateria_PersonaRol] FOREIGN KEY([dni_alumno], [id_rol])
REFERENCES [dbo].[PersonaRol] ([dni_persona], [id_rol])
GO
ALTER TABLE [dbo].[AlumnosCarMateria] CHECK CONSTRAINT [FK_AlumnosCarMateria_PersonaRol]
GO
ALTER TABLE [dbo].[Carrera]  WITH CHECK ADD  CONSTRAINT [FK_Carrera_PersonaRol] FOREIGN KEY([dni_director], [id_rol])
REFERENCES [dbo].[PersonaRol] ([dni_persona], [id_rol])
GO
ALTER TABLE [dbo].[Carrera] CHECK CONSTRAINT [FK_Carrera_PersonaRol]
GO
ALTER TABLE [dbo].[CarreraMateria]  WITH CHECK ADD  CONSTRAINT [FK_CarreraMateria_Carrera] FOREIGN KEY([id_carrera])
REFERENCES [dbo].[Carrera] ([id_carrera])
GO
ALTER TABLE [dbo].[CarreraMateria] CHECK CONSTRAINT [FK_CarreraMateria_Carrera]
GO
ALTER TABLE [dbo].[CarreraMateria]  WITH CHECK ADD  CONSTRAINT [FK_CarreraMateria_Materia] FOREIGN KEY([id_materia])
REFERENCES [dbo].[Materia] ([id_materia])
GO
ALTER TABLE [dbo].[CarreraMateria] CHECK CONSTRAINT [FK_CarreraMateria_Materia]
GO
ALTER TABLE [dbo].[CarreraMateria]  WITH CHECK ADD  CONSTRAINT [FK_CarreraMateria_PersonaRol] FOREIGN KEY([dni_profesor], [id_rol])
REFERENCES [dbo].[PersonaRol] ([dni_persona], [id_rol])
GO
ALTER TABLE [dbo].[CarreraMateria] CHECK CONSTRAINT [FK_CarreraMateria_PersonaRol]
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_AccesoUsuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[AccesoUsuario] ([id_usuario])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_AccesoUsuario]
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Publicacion] FOREIGN KEY([id_publicacion])
REFERENCES [dbo].[Publicacion] ([id_publicacion])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_Publicacion]
GO
ALTER TABLE [dbo].[Compartir]  WITH CHECK ADD  CONSTRAINT [FK_Compartir_AccesoUsuario] FOREIGN KEY([id_usuario_comparte])
REFERENCES [dbo].[AccesoUsuario] ([id_usuario])
GO
ALTER TABLE [dbo].[Compartir] CHECK CONSTRAINT [FK_Compartir_AccesoUsuario]
GO
ALTER TABLE [dbo].[Compartir]  WITH CHECK ADD  CONSTRAINT [FK_Compartir_Publicacion] FOREIGN KEY([id_publicacion])
REFERENCES [dbo].[Publicacion] ([id_publicacion])
GO
ALTER TABLE [dbo].[Compartir] CHECK CONSTRAINT [FK_Compartir_Publicacion]
GO
ALTER TABLE [dbo].[Compartir]  WITH CHECK ADD  CONSTRAINT [CK_Compartir_Destino__END] CHECK  (([destino]in('F','T')))
GO
ALTER TABLE [dbo].[Compartir] CHECK CONSTRAINT [CK_Compartir_Destino__END]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_AccesoUsuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[AccesoUsuario] ([id_usuario])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_AccesoUsuario]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Publicacion] FOREIGN KEY([id_publicacion])
REFERENCES [dbo].[Publicacion] ([id_publicacion])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Publicacion]
GO
ALTER TABLE [dbo].[Muro]  WITH CHECK ADD  CONSTRAINT [FK_Muro_CarreraMateria] FOREIGN KEY([id_carrera], [id_materia])
REFERENCES [dbo].[CarreraMateria] ([id_carrera], [id_materia])
GO
ALTER TABLE [dbo].[Muro] CHECK CONSTRAINT [FK_Muro_CarreraMateria]
GO
ALTER TABLE [dbo].[PersonaRol]  WITH CHECK ADD  CONSTRAINT [FK_PersonaRol_Persona] FOREIGN KEY([dni_persona])
REFERENCES [dbo].[Persona] ([dni_persona])
GO
ALTER TABLE [dbo].[PersonaRol] CHECK CONSTRAINT [FK_PersonaRol_Persona]
GO
ALTER TABLE [dbo].[PersonaRol]  WITH CHECK ADD  CONSTRAINT [FK_PersonaRol_Rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Rol] ([id_rol])
GO
ALTER TABLE [dbo].[PersonaRol] CHECK CONSTRAINT [FK_PersonaRol_Rol]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_AccesoUsuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[AccesoUsuario] ([id_usuario])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_AccesoUsuario]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Muro] FOREIGN KEY([id_muro])
REFERENCES [dbo].[Muro] ([id_muro])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Muro]
GO
ALTER TABLE [dbo].[AlumnosCarMateria]  WITH CHECK ADD  CONSTRAINT [CK_AlumnosCarMateria_IdRol__END] CHECK  (([id_rol]=(3)))
GO
ALTER TABLE [dbo].[AlumnosCarMateria] CHECK CONSTRAINT [CK_AlumnosCarMateria_IdRol__END]
GO
ALTER TABLE [dbo].[Carrera]  WITH CHECK ADD  CONSTRAINT [CK_Carrera_IdRol__END] CHECK  (([id_rol]=(1)))
GO
ALTER TABLE [dbo].[Carrera] CHECK CONSTRAINT [CK_Carrera_IdRol__END]
GO
ALTER TABLE [dbo].[CarreraMateria]  WITH CHECK ADD  CONSTRAINT [CK_CarreraMateria_IdROL__END] CHECK  (([id_rol]=(2)))
GO
ALTER TABLE [dbo].[CarreraMateria] CHECK CONSTRAINT [CK_CarreraMateria_IdROL__END]
GO
