USE [TriangleIdentityServer]
GO
ALTER TABLE [dbo].[IdentityProperties] DROP CONSTRAINT [FK_IdentityProperties_IdentityResources_IdentityResourceId]
GO
ALTER TABLE [dbo].[IdentityClaims] DROP CONSTRAINT [FK_IdentityClaims_IdentityResources_IdentityResourceId]
GO
ALTER TABLE [dbo].[ClientSecrets] DROP CONSTRAINT [FK_ClientSecrets_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientScopes] DROP CONSTRAINT [FK_ClientScopes_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientRedirectUris] DROP CONSTRAINT [FK_ClientRedirectUris_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientProperties] DROP CONSTRAINT [FK_ClientProperties_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientPostLogoutRedirectUris] DROP CONSTRAINT [FK_ClientPostLogoutRedirectUris_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientIdPRestrictions] DROP CONSTRAINT [FK_ClientIdPRestrictions_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientGrantTypes] DROP CONSTRAINT [FK_ClientGrantTypes_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientCorsOrigins] DROP CONSTRAINT [FK_ClientCorsOrigins_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientClaims] DROP CONSTRAINT [FK_ClientClaims_Clients_ClientId]
GO
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[ApiSecrets] DROP CONSTRAINT [FK_ApiSecrets_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiScopes] DROP CONSTRAINT [FK_ApiScopes_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiScopeClaims] DROP CONSTRAINT [FK_ApiScopeClaims_ApiScopes_ApiScopeId]
GO
ALTER TABLE [dbo].[ApiProperties] DROP CONSTRAINT [FK_ApiProperties_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiClaims] DROP CONSTRAINT [FK_ApiClaims_ApiResources_ApiResourceId]
GO
/****** Object:  Index [IX_PersistedGrants_SubjectId_ClientId_Type]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_PersistedGrants_SubjectId_ClientId_Type] ON [dbo].[PersistedGrants]
GO
/****** Object:  Index [IX_PersistedGrants_Expiration]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_PersistedGrants_Expiration] ON [dbo].[PersistedGrants]
GO
/****** Object:  Index [IX_IdentityResources_Name]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_IdentityResources_Name] ON [dbo].[IdentityResources]
GO
/****** Object:  Index [IX_IdentityProperties_IdentityResourceId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_IdentityProperties_IdentityResourceId] ON [dbo].[IdentityProperties]
GO
/****** Object:  Index [IX_IdentityClaims_IdentityResourceId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_IdentityClaims_IdentityResourceId] ON [dbo].[IdentityClaims]
GO
/****** Object:  Index [IX_DeviceCodes_Expiration]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_DeviceCodes_Expiration] ON [dbo].[DeviceCodes]
GO
/****** Object:  Index [IX_DeviceCodes_DeviceCode]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_DeviceCodes_DeviceCode] ON [dbo].[DeviceCodes]
GO
/****** Object:  Index [IX_ClientSecrets_ClientId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ClientSecrets_ClientId] ON [dbo].[ClientSecrets]
GO
/****** Object:  Index [IX_ClientScopes_ClientId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ClientScopes_ClientId] ON [dbo].[ClientScopes]
GO
/****** Object:  Index [IX_Clients_ClientId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_Clients_ClientId] ON [dbo].[Clients]
GO
/****** Object:  Index [IX_ClientRedirectUris_ClientId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ClientRedirectUris_ClientId] ON [dbo].[ClientRedirectUris]
GO
/****** Object:  Index [IX_ClientProperties_ClientId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ClientProperties_ClientId] ON [dbo].[ClientProperties]
GO
/****** Object:  Index [IX_ClientPostLogoutRedirectUris_ClientId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ClientPostLogoutRedirectUris_ClientId] ON [dbo].[ClientPostLogoutRedirectUris]
GO
/****** Object:  Index [IX_ClientIdPRestrictions_ClientId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ClientIdPRestrictions_ClientId] ON [dbo].[ClientIdPRestrictions]
GO
/****** Object:  Index [IX_ClientGrantTypes_ClientId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ClientGrantTypes_ClientId] ON [dbo].[ClientGrantTypes]
GO
/****** Object:  Index [IX_ClientCorsOrigins_ClientId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ClientCorsOrigins_ClientId] ON [dbo].[ClientCorsOrigins]
GO
/****** Object:  Index [IX_ClientClaims_ClientId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ClientClaims_ClientId] ON [dbo].[ClientClaims]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [EmailIndex]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [EmailIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
GO
/****** Object:  Index [IX_ApiSecrets_ApiResourceId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ApiSecrets_ApiResourceId] ON [dbo].[ApiSecrets]
GO
/****** Object:  Index [IX_ApiScopes_Name]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ApiScopes_Name] ON [dbo].[ApiScopes]
GO
/****** Object:  Index [IX_ApiScopes_ApiResourceId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ApiScopes_ApiResourceId] ON [dbo].[ApiScopes]
GO
/****** Object:  Index [IX_ApiScopeClaims_ApiScopeId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ApiScopeClaims_ApiScopeId] ON [dbo].[ApiScopeClaims]
GO
/****** Object:  Index [IX_ApiResources_Name]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ApiResources_Name] ON [dbo].[ApiResources]
GO
/****** Object:  Index [IX_ApiProperties_ApiResourceId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ApiProperties_ApiResourceId] ON [dbo].[ApiProperties]
GO
/****** Object:  Index [IX_ApiClaims_ApiResourceId]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP INDEX [IX_ApiClaims_ApiResourceId] ON [dbo].[ApiClaims]
GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[PersistedGrants]
GO
/****** Object:  Table [dbo].[IdentityResources]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[IdentityResources]
GO
/****** Object:  Table [dbo].[IdentityProperties]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[IdentityProperties]
GO
/****** Object:  Table [dbo].[IdentityClaims]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[IdentityClaims]
GO
/****** Object:  Table [dbo].[DeviceCodes]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[DeviceCodes]
GO
/****** Object:  Table [dbo].[ClientSecrets]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ClientSecrets]
GO
/****** Object:  Table [dbo].[ClientScopes]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ClientScopes]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[Clients]
GO
/****** Object:  Table [dbo].[ClientRedirectUris]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ClientRedirectUris]
GO
/****** Object:  Table [dbo].[ClientProperties]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ClientProperties]
GO
/****** Object:  Table [dbo].[ClientPostLogoutRedirectUris]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ClientPostLogoutRedirectUris]
GO
/****** Object:  Table [dbo].[ClientIdPRestrictions]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ClientIdPRestrictions]
GO
/****** Object:  Table [dbo].[ClientGrantTypes]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ClientGrantTypes]
GO
/****** Object:  Table [dbo].[ClientCorsOrigins]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ClientCorsOrigins]
GO
/****** Object:  Table [dbo].[ClientClaims]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ClientClaims]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[ApiSecrets]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ApiSecrets]
GO
/****** Object:  Table [dbo].[ApiScopes]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ApiScopes]
GO
/****** Object:  Table [dbo].[ApiScopeClaims]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ApiScopeClaims]
GO
/****** Object:  Table [dbo].[ApiResources]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ApiResources]
GO
/****** Object:  Table [dbo].[ApiProperties]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ApiProperties]
GO
/****** Object:  Table [dbo].[ApiClaims]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[ApiClaims]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [TriangleIdentityServer]    Script Date: 2/2/2020 10:10:20 PM ******/
DROP DATABASE [TriangleIdentityServer]
GO
/****** Object:  Database [TriangleIdentityServer]    Script Date: 2/2/2020 10:10:20 PM ******/
CREATE DATABASE [TriangleIdentityServer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TriangleIdentityServer', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2017\MSSQL\DATA\TriangleIdentityServer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TriangleIdentityServer_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2017\MSSQL\DATA\TriangleIdentityServer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TriangleIdentityServer] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TriangleIdentityServer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TriangleIdentityServer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET ARITHABORT OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TriangleIdentityServer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TriangleIdentityServer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TriangleIdentityServer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TriangleIdentityServer] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TriangleIdentityServer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET RECOVERY FULL 
GO
ALTER DATABASE [TriangleIdentityServer] SET  MULTI_USER 
GO
ALTER DATABASE [TriangleIdentityServer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TriangleIdentityServer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TriangleIdentityServer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TriangleIdentityServer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TriangleIdentityServer] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TriangleIdentityServer', N'ON'
GO
ALTER DATABASE [TriangleIdentityServer] SET QUERY_STORE = OFF
GO
USE [TriangleIdentityServer]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [TriangleIdentityServer]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiClaims]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
	[ApiResourceId] [int] NOT NULL,
 CONSTRAINT [PK_ApiClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiProperties]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
	[ApiResourceId] [int] NOT NULL,
 CONSTRAINT [PK_ApiProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiResources]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiResources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Created] [datetime2](7) NOT NULL,
	[Updated] [datetime2](7) NULL,
	[LastAccessed] [datetime2](7) NULL,
	[NonEditable] [bit] NOT NULL,
 CONSTRAINT [PK_ApiResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiScopeClaims]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiScopeClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
	[ApiScopeId] [int] NOT NULL,
 CONSTRAINT [PK_ApiScopeClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiScopes]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiScopes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Required] [bit] NOT NULL,
	[Emphasize] [bit] NOT NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
	[ApiResourceId] [int] NOT NULL,
 CONSTRAINT [PK_ApiScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiSecrets]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiSecrets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Value] [nvarchar](4000) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[Type] [nvarchar](250) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[ApiResourceId] [int] NOT NULL,
 CONSTRAINT [PK_ApiSecrets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientClaims]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](250) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientCorsOrigins]    Script Date: 2/2/2020 10:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientCorsOrigins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Origin] [nvarchar](150) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientCorsOrigins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientGrantTypes]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientGrantTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GrantType] [nvarchar](250) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientGrantTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientIdPRestrictions]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientIdPRestrictions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Provider] [nvarchar](200) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientIdPRestrictions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientPostLogoutRedirectUris]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientPostLogoutRedirectUris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostLogoutRedirectUri] [nvarchar](2000) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientPostLogoutRedirectUris] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientProperties]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientRedirectUris]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientRedirectUris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RedirectUri] [nvarchar](2000) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientRedirectUris] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[ProtocolType] [nvarchar](200) NOT NULL,
	[RequireClientSecret] [bit] NOT NULL,
	[ClientName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[ClientUri] [nvarchar](2000) NULL,
	[LogoUri] [nvarchar](2000) NULL,
	[RequireConsent] [bit] NOT NULL,
	[AllowRememberConsent] [bit] NOT NULL,
	[AlwaysIncludeUserClaimsInIdToken] [bit] NOT NULL,
	[RequirePkce] [bit] NOT NULL,
	[AllowPlainTextPkce] [bit] NOT NULL,
	[AllowAccessTokensViaBrowser] [bit] NOT NULL,
	[FrontChannelLogoutUri] [nvarchar](2000) NULL,
	[FrontChannelLogoutSessionRequired] [bit] NOT NULL,
	[BackChannelLogoutUri] [nvarchar](2000) NULL,
	[BackChannelLogoutSessionRequired] [bit] NOT NULL,
	[AllowOfflineAccess] [bit] NOT NULL,
	[IdentityTokenLifetime] [int] NOT NULL,
	[AccessTokenLifetime] [int] NOT NULL,
	[AuthorizationCodeLifetime] [int] NOT NULL,
	[ConsentLifetime] [int] NULL,
	[AbsoluteRefreshTokenLifetime] [int] NOT NULL,
	[SlidingRefreshTokenLifetime] [int] NOT NULL,
	[RefreshTokenUsage] [int] NOT NULL,
	[UpdateAccessTokenClaimsOnRefresh] [bit] NOT NULL,
	[RefreshTokenExpiration] [int] NOT NULL,
	[AccessTokenType] [int] NOT NULL,
	[EnableLocalLogin] [bit] NOT NULL,
	[IncludeJwtId] [bit] NOT NULL,
	[AlwaysSendClientClaims] [bit] NOT NULL,
	[ClientClaimsPrefix] [nvarchar](200) NULL,
	[PairWiseSubjectSalt] [nvarchar](200) NULL,
	[Created] [datetime2](7) NOT NULL,
	[Updated] [datetime2](7) NULL,
	[LastAccessed] [datetime2](7) NULL,
	[UserSsoLifetime] [int] NULL,
	[UserCodeType] [nvarchar](100) NULL,
	[DeviceCodeLifetime] [int] NOT NULL,
	[NonEditable] [bit] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientScopes]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientScopes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Scope] [nvarchar](200) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientSecrets]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientSecrets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[Value] [nvarchar](4000) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[Type] [nvarchar](250) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientSecrets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceCodes]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCodes](
	[UserCode] [nvarchar](200) NOT NULL,
	[DeviceCode] [nvarchar](200) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DeviceCodes] PRIMARY KEY CLUSTERED 
(
	[UserCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityClaims]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
	[IdentityResourceId] [int] NOT NULL,
 CONSTRAINT [PK_IdentityClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityProperties]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
	[IdentityResourceId] [int] NOT NULL,
 CONSTRAINT [PK_IdentityProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityResources]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityResources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Required] [bit] NOT NULL,
	[Emphasize] [bit] NOT NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Updated] [datetime2](7) NULL,
	[NonEditable] [bit] NOT NULL,
 CONSTRAINT [PK_IdentityResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 2/2/2020 10:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersistedGrants](
	[Key] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200202054529_InitialAppDbContextDbMigration', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200202054548_InitialIdentityServerPersistedGrantDbMigration', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200202054559_InitialIdentityServerConfigurationDbMigration', N'3.1.1')
GO
SET IDENTITY_INSERT [dbo].[ApiClaims] ON 
GO
INSERT [dbo].[ApiClaims] ([Id], [Type], [ApiResourceId]) VALUES (1, N'rc.api.nannie', 1)
GO
SET IDENTITY_INSERT [dbo].[ApiClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[ApiResources] ON 
GO
INSERT [dbo].[ApiResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Created], [Updated], [LastAccessed], [NonEditable]) VALUES (1, 1, N'ApiTwo', N'ApiTwo', NULL, CAST(N'2020-02-02T14:25:17.1833276' AS DateTime2), NULL, NULL, 0)
GO
INSERT [dbo].[ApiResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Created], [Updated], [LastAccessed], [NonEditable]) VALUES (2, 1, N'ApiOne', N'ApiOne', NULL, CAST(N'2020-02-02T14:25:17.1503613' AS DateTime2), NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[ApiResources] OFF
GO
SET IDENTITY_INSERT [dbo].[ApiScopes] ON 
GO
INSERT [dbo].[ApiScopes] ([Id], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [ApiResourceId]) VALUES (1, N'ApiTwo', N'ApiTwo', NULL, 0, 0, 1, 1)
GO
INSERT [dbo].[ApiScopes] ([Id], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [ApiResourceId]) VALUES (2, N'ApiOne', N'ApiOne', NULL, 0, 0, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[ApiScopes] OFF
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'rc.nannie', N'big.cookie')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2, N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'rc.api.nannie', N'big.api.cookie')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'alok', N'ALOK', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEK0EBjsCjNWbrLWzfciOCXBtPP7lO94tnir/U08ZiWnGchDZ0fH/AsDD/GEixWn2DQ==', N'GMUCZA5X3ELC7C6MLD6TTK6QQ2AHAJ7U', N'23788af2-82c6-48f6-aaa7-3015831a8205', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[ClientGrantTypes] ON 
GO
INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (1, N'client_credentials', 1)
GO
INSERT [dbo].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (2, N'authorization_code', 2)
GO
SET IDENTITY_INSERT [dbo].[ClientGrantTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientPostLogoutRedirectUris] ON 
GO
INSERT [dbo].[ClientPostLogoutRedirectUris] ([Id], [PostLogoutRedirectUri], [ClientId]) VALUES (1, N'https://localhost:44393/Home/Index', 2)
GO
SET IDENTITY_INSERT [dbo].[ClientPostLogoutRedirectUris] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientRedirectUris] ON 
GO
INSERT [dbo].[ClientRedirectUris] ([Id], [RedirectUri], [ClientId]) VALUES (1, N'https://localhost:44393/signin-oidc', 2)
GO
SET IDENTITY_INSERT [dbo].[ClientRedirectUris] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 
GO
INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (1, 1, N'client_id', N'oidc', 1, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2020-02-02T14:25:16.7987108' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
GO
INSERT [dbo].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (2, 1, N'client_id_mvc', N'oidc', 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, 1, NULL, 1, 1, 300, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, CAST(N'2020-02-02T14:25:16.8687315' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
GO
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientScopes] ON 
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (1, N'ApiOne', 1)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (2, N'ApiOne', 2)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (3, N'ApiTwo', 2)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (4, N'openid', 2)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (5, N'profile', 2)
GO
INSERT [dbo].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (6, N'rc.naniscope', 2)
GO
SET IDENTITY_INSERT [dbo].[ClientScopes] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientSecrets] ON 
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (1, NULL, N'g9FRqY6sDQzTNqEoWe5VXKHAfsvH5aef4fuiMJjTjqc=', NULL, N'SharedSecret', CAST(N'2020-02-02T14:25:16.7991139' AS DateTime2), 1)
GO
INSERT [dbo].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (2, NULL, N'ggcXyW+Yijm4Ko42lAo55AKqH2Z2bdWTMz8zMHJzXxc=', NULL, N'SharedSecret', CAST(N'2020-02-02T14:25:16.8687350' AS DateTime2), 2)
GO
SET IDENTITY_INSERT [dbo].[ClientSecrets] OFF
GO
SET IDENTITY_INSERT [dbo].[IdentityClaims] ON 
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (1, N'birthdate', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (2, N'gender', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (3, N'website', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (4, N'picture', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (5, N'profile', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (6, N'preferred_username', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (7, N'nickname', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (8, N'middle_name', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (9, N'given_name', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (10, N'family_name', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (11, N'name', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (12, N'zoneinfo', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (13, N'locale', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (14, N'updated_at', 1)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (15, N'sub', 2)
GO
INSERT [dbo].[IdentityClaims] ([Id], [Type], [IdentityResourceId]) VALUES (16, N'rc.nannie', 3)
GO
SET IDENTITY_INSERT [dbo].[IdentityClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[IdentityResources] ON 
GO
INSERT [dbo].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [Created], [Updated], [NonEditable]) VALUES (1, 1, N'profile', N'User profile', N'Your user profile information (first name, last name, etc.)', 0, 1, 1, CAST(N'2020-02-02T14:25:17.0619900' AS DateTime2), NULL, 0)
GO
INSERT [dbo].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [Created], [Updated], [NonEditable]) VALUES (2, 1, N'openid', N'Your user identifier', NULL, 1, 0, 1, CAST(N'2020-02-02T14:25:17.0360383' AS DateTime2), NULL, 0)
GO
INSERT [dbo].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [Created], [Updated], [NonEditable]) VALUES (3, 1, N'rc.naniscope', NULL, NULL, 0, 0, 1, CAST(N'2020-02-02T14:25:17.0688618' AS DateTime2), NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[IdentityResources] OFF
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'3IFrQFQL+V3shaZdFXV5c+9voBYAozZZF/msSvCJSm0=', N'refresh_token', N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'client_id_mvc', CAST(N'2020-02-02T14:25:34.0000000' AS DateTime2), CAST(N'2020-03-03T14:25:34.0000000' AS DateTime2), N'{"CreationTime":"2020-02-02T14:25:34Z","Lifetime":2592000,"AccessToken":{"Audiences":["ApiOne"],"Issuer":"https://localhost:44305","CreationTime":"2020-02-02T14:25:34Z","Lifetime":3600,"Type":"access_token","ClientId":"client_id_mvc","AccessTokenType":0,"Claims":[{"Type":"client_id","Value":"client_id_mvc","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"openid","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"rc.naniscope","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"ApiOne","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"offline_access","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"sub","Value":"d0d2b55e-1cf9-4d83-8eaa-97c0e876870f","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1580653534","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"}],"Version":4},"Version":4}')
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'3Mgua1+D54fzHhDm8OVR4I7AWrJiG3kVq3sJP05K/Fg=', N'refresh_token', N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'client_id_mvc', CAST(N'2020-02-02T16:22:39.0000000' AS DateTime2), CAST(N'2020-03-03T16:22:39.0000000' AS DateTime2), N'{"CreationTime":"2020-02-02T16:22:39Z","Lifetime":2592000,"AccessToken":{"Audiences":["ApiOne"],"Issuer":"https://localhost:44305","CreationTime":"2020-02-02T16:22:39Z","Lifetime":3600,"Type":"access_token","ClientId":"client_id_mvc","AccessTokenType":0,"Claims":[{"Type":"client_id","Value":"client_id_mvc","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"openid","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"rc.naniscope","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"ApiOne","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"offline_access","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"sub","Value":"d0d2b55e-1cf9-4d83-8eaa-97c0e876870f","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1580660559","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"}],"Version":4},"Version":4}')
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'keiDhIjERXCvZ/zLMnqnI6DzxXYeAYNVQZoJjIIyX0A=', N'refresh_token', N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'client_id_mvc', CAST(N'2020-02-02T15:31:48.0000000' AS DateTime2), CAST(N'2020-03-03T15:31:48.0000000' AS DateTime2), N'{"CreationTime":"2020-02-02T15:31:48Z","Lifetime":2592000,"AccessToken":{"Audiences":["ApiOne"],"Issuer":"https://localhost:44305","CreationTime":"2020-02-02T15:31:48Z","Lifetime":3600,"Type":"access_token","ClientId":"client_id_mvc","AccessTokenType":0,"Claims":[{"Type":"client_id","Value":"client_id_mvc","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"openid","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"rc.naniscope","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"ApiOne","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"offline_access","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"sub","Value":"d0d2b55e-1cf9-4d83-8eaa-97c0e876870f","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1580657507","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"}],"Version":4},"Version":4}')
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'KN8zjmAYxTj1umjP2IH9ghHOXMNyCWXj539Etz/PVWo=', N'refresh_token', N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'client_id_mvc', CAST(N'2020-02-02T16:09:16.0000000' AS DateTime2), CAST(N'2020-03-03T16:09:16.0000000' AS DateTime2), N'{"CreationTime":"2020-02-02T16:09:16Z","Lifetime":2592000,"AccessToken":{"Audiences":["ApiOne"],"Issuer":"https://localhost:44305","CreationTime":"2020-02-02T16:09:16Z","Lifetime":3600,"Type":"access_token","ClientId":"client_id_mvc","AccessTokenType":0,"Claims":[{"Type":"client_id","Value":"client_id_mvc","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"openid","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"rc.naniscope","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"ApiOne","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"offline_access","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"sub","Value":"d0d2b55e-1cf9-4d83-8eaa-97c0e876870f","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1580659755","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"}],"Version":4},"Version":4}')
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'mBhM+2APd/T7wzaN34YSib+gwVwSvyJdy28dF91knOM=', N'refresh_token', N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'client_id_mvc', CAST(N'2020-02-02T14:44:46.0000000' AS DateTime2), CAST(N'2020-03-03T14:44:46.0000000' AS DateTime2), N'{"CreationTime":"2020-02-02T14:44:46Z","Lifetime":2592000,"AccessToken":{"Audiences":["ApiOne"],"Issuer":"https://localhost:44305","CreationTime":"2020-02-02T14:44:46Z","Lifetime":3600,"Type":"access_token","ClientId":"client_id_mvc","AccessTokenType":0,"Claims":[{"Type":"client_id","Value":"client_id_mvc","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"openid","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"rc.naniscope","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"ApiOne","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"offline_access","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"sub","Value":"d0d2b55e-1cf9-4d83-8eaa-97c0e876870f","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1580654685","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"}],"Version":4},"Version":4}')
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'Pfy2cLn4R2bG+1Zf73qf2E2bysrn3o//I7hv8N9jSPY=', N'refresh_token', N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'client_id_mvc', CAST(N'2020-02-02T14:51:14.0000000' AS DateTime2), CAST(N'2020-03-03T14:51:14.0000000' AS DateTime2), N'{"CreationTime":"2020-02-02T14:51:14Z","Lifetime":2592000,"AccessToken":{"Audiences":["ApiOne"],"Issuer":"https://localhost:44305","CreationTime":"2020-02-02T14:51:14Z","Lifetime":3600,"Type":"access_token","ClientId":"client_id_mvc","AccessTokenType":0,"Claims":[{"Type":"client_id","Value":"client_id_mvc","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"openid","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"rc.naniscope","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"ApiOne","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"offline_access","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"sub","Value":"d0d2b55e-1cf9-4d83-8eaa-97c0e876870f","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1580655073","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"}],"Version":4},"Version":4}')
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'rSoED9WMFlkTWvYQeTUH2cAcqbaIE/OncU/IS2nw/L0=', N'refresh_token', N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'client_id_mvc', CAST(N'2020-02-02T16:27:27.0000000' AS DateTime2), CAST(N'2020-03-03T16:27:27.0000000' AS DateTime2), N'{"CreationTime":"2020-02-02T16:27:27Z","Lifetime":2592000,"AccessToken":{"Audiences":["ApiOne"],"Issuer":"https://localhost:44305","CreationTime":"2020-02-02T16:27:26Z","Lifetime":3600,"Type":"access_token","ClientId":"client_id_mvc","AccessTokenType":0,"Claims":[{"Type":"client_id","Value":"client_id_mvc","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"openid","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"rc.naniscope","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"ApiOne","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"offline_access","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"sub","Value":"d0d2b55e-1cf9-4d83-8eaa-97c0e876870f","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1580660846","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"}],"Version":4},"Version":4}')
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'UPy2pWm+riO+RDx0NuWZA688Pm+1oeO8E/vJRLwRpmc=', N'refresh_token', N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'client_id_mvc', CAST(N'2020-02-02T14:49:09.0000000' AS DateTime2), CAST(N'2020-03-03T14:49:09.0000000' AS DateTime2), N'{"CreationTime":"2020-02-02T14:49:09Z","Lifetime":2592000,"AccessToken":{"Audiences":["ApiOne"],"Issuer":"https://localhost:44305","CreationTime":"2020-02-02T14:49:09Z","Lifetime":3600,"Type":"access_token","ClientId":"client_id_mvc","AccessTokenType":0,"Claims":[{"Type":"client_id","Value":"client_id_mvc","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"openid","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"rc.naniscope","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"ApiOne","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"offline_access","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"sub","Value":"d0d2b55e-1cf9-4d83-8eaa-97c0e876870f","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1580654949","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"}],"Version":4},"Version":4}')
GO
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'uZO+jX5KxrKUjtLzuEd8wFlzYmVHzDYCC+D7SPQHi0I=', N'refresh_token', N'd0d2b55e-1cf9-4d83-8eaa-97c0e876870f', N'client_id_mvc', CAST(N'2020-02-02T14:56:09.0000000' AS DateTime2), CAST(N'2020-03-03T14:56:09.0000000' AS DateTime2), N'{"CreationTime":"2020-02-02T14:56:09Z","Lifetime":2592000,"AccessToken":{"Audiences":["ApiOne"],"Issuer":"https://localhost:44305","CreationTime":"2020-02-02T14:56:09Z","Lifetime":3600,"Type":"access_token","ClientId":"client_id_mvc","AccessTokenType":0,"Claims":[{"Type":"client_id","Value":"client_id_mvc","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"openid","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"rc.naniscope","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"ApiOne","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"scope","Value":"offline_access","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"sub","Value":"d0d2b55e-1cf9-4d83-8eaa-97c0e876870f","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1580655368","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"}],"Version":4},"Version":4}')
GO
/****** Object:  Index [IX_ApiClaims_ApiResourceId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApiClaims_ApiResourceId] ON [dbo].[ApiClaims]
(
	[ApiResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApiProperties_ApiResourceId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApiProperties_ApiResourceId] ON [dbo].[ApiProperties]
(
	[ApiResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ApiResources_Name]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ApiResources_Name] ON [dbo].[ApiResources]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApiScopeClaims_ApiScopeId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApiScopeClaims_ApiScopeId] ON [dbo].[ApiScopeClaims]
(
	[ApiScopeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApiScopes_ApiResourceId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApiScopes_ApiResourceId] ON [dbo].[ApiScopes]
(
	[ApiResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ApiScopes_Name]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ApiScopes_Name] ON [dbo].[ApiScopes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApiSecrets_ApiResourceId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApiSecrets_ApiResourceId] ON [dbo].[ApiSecrets]
(
	[ApiResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientClaims_ClientId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientClaims_ClientId] ON [dbo].[ClientClaims]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientCorsOrigins_ClientId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientCorsOrigins_ClientId] ON [dbo].[ClientCorsOrigins]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientGrantTypes_ClientId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientGrantTypes_ClientId] ON [dbo].[ClientGrantTypes]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientIdPRestrictions_ClientId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientIdPRestrictions_ClientId] ON [dbo].[ClientIdPRestrictions]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientPostLogoutRedirectUris_ClientId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientPostLogoutRedirectUris_ClientId] ON [dbo].[ClientPostLogoutRedirectUris]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientProperties_ClientId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientProperties_ClientId] ON [dbo].[ClientProperties]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientRedirectUris_ClientId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientRedirectUris_ClientId] ON [dbo].[ClientRedirectUris]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Clients_ClientId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Clients_ClientId] ON [dbo].[Clients]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientScopes_ClientId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientScopes_ClientId] ON [dbo].[ClientScopes]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientSecrets_ClientId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientSecrets_ClientId] ON [dbo].[ClientSecrets]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DeviceCodes_DeviceCode]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DeviceCodes_DeviceCode] ON [dbo].[DeviceCodes]
(
	[DeviceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DeviceCodes_Expiration]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_DeviceCodes_Expiration] ON [dbo].[DeviceCodes]
(
	[Expiration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdentityClaims_IdentityResourceId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_IdentityClaims_IdentityResourceId] ON [dbo].[IdentityClaims]
(
	[IdentityResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdentityProperties_IdentityResourceId]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_IdentityProperties_IdentityResourceId] ON [dbo].[IdentityProperties]
(
	[IdentityResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_IdentityResources_Name]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_IdentityResources_Name] ON [dbo].[IdentityResources]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersistedGrants_Expiration]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_Expiration] ON [dbo].[PersistedGrants]
(
	[Expiration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersistedGrants_SubjectId_ClientId_Type]    Script Date: 2/2/2020 10:10:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_SubjectId_ClientId_Type] ON [dbo].[PersistedGrants]
(
	[SubjectId] ASC,
	[ClientId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApiClaims]  WITH CHECK ADD  CONSTRAINT [FK_ApiClaims_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiClaims] CHECK CONSTRAINT [FK_ApiClaims_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiProperties]  WITH CHECK ADD  CONSTRAINT [FK_ApiProperties_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiProperties] CHECK CONSTRAINT [FK_ApiProperties_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiScopeClaims]  WITH CHECK ADD  CONSTRAINT [FK_ApiScopeClaims_ApiScopes_ApiScopeId] FOREIGN KEY([ApiScopeId])
REFERENCES [dbo].[ApiScopes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiScopeClaims] CHECK CONSTRAINT [FK_ApiScopeClaims_ApiScopes_ApiScopeId]
GO
ALTER TABLE [dbo].[ApiScopes]  WITH CHECK ADD  CONSTRAINT [FK_ApiScopes_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiScopes] CHECK CONSTRAINT [FK_ApiScopes_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[ApiSecrets]  WITH CHECK ADD  CONSTRAINT [FK_ApiSecrets_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiSecrets] CHECK CONSTRAINT [FK_ApiSecrets_ApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ClientClaims]  WITH CHECK ADD  CONSTRAINT [FK_ClientClaims_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientClaims] CHECK CONSTRAINT [FK_ClientClaims_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientCorsOrigins]  WITH CHECK ADD  CONSTRAINT [FK_ClientCorsOrigins_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientCorsOrigins] CHECK CONSTRAINT [FK_ClientCorsOrigins_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientGrantTypes]  WITH CHECK ADD  CONSTRAINT [FK_ClientGrantTypes_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientGrantTypes] CHECK CONSTRAINT [FK_ClientGrantTypes_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientIdPRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_ClientIdPRestrictions_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientIdPRestrictions] CHECK CONSTRAINT [FK_ClientIdPRestrictions_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientPostLogoutRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_ClientPostLogoutRedirectUris_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientPostLogoutRedirectUris] CHECK CONSTRAINT [FK_ClientPostLogoutRedirectUris_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientProperties]  WITH CHECK ADD  CONSTRAINT [FK_ClientProperties_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientProperties] CHECK CONSTRAINT [FK_ClientProperties_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_ClientRedirectUris_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientRedirectUris] CHECK CONSTRAINT [FK_ClientRedirectUris_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientScopes]  WITH CHECK ADD  CONSTRAINT [FK_ClientScopes_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientScopes] CHECK CONSTRAINT [FK_ClientScopes_Clients_ClientId]
GO
ALTER TABLE [dbo].[ClientSecrets]  WITH CHECK ADD  CONSTRAINT [FK_ClientSecrets_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientSecrets] CHECK CONSTRAINT [FK_ClientSecrets_Clients_ClientId]
GO
ALTER TABLE [dbo].[IdentityClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityClaims_IdentityResources_IdentityResourceId] FOREIGN KEY([IdentityResourceId])
REFERENCES [dbo].[IdentityResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityClaims] CHECK CONSTRAINT [FK_IdentityClaims_IdentityResources_IdentityResourceId]
GO
ALTER TABLE [dbo].[IdentityProperties]  WITH CHECK ADD  CONSTRAINT [FK_IdentityProperties_IdentityResources_IdentityResourceId] FOREIGN KEY([IdentityResourceId])
REFERENCES [dbo].[IdentityResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityProperties] CHECK CONSTRAINT [FK_IdentityProperties_IdentityResources_IdentityResourceId]
GO
USE [master]
GO
ALTER DATABASE [TriangleIdentityServer] SET  READ_WRITE 
GO
