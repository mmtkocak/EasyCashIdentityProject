USE [EasyCashDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16.06.2023 17:56:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 16.06.2023 17:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 16.06.2023 17:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 16.06.2023 17:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 16.06.2023 17:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 16.06.2023 17:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 16.06.2023 17:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[District] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
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
	[ConfirmCode] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 16.06.2023 17:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAccounts]    Script Date: 16.06.2023 17:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAccounts](
	[CustomerAccountID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerAccountNumber] [nvarchar](max) NOT NULL,
	[CustomerAccountCurrency] [nvarchar](max) NOT NULL,
	[CustomerAccountBalance] [decimal](18, 2) NOT NULL,
	[BankBranch] [nvarchar](max) NOT NULL,
	[AppUserID] [int] NOT NULL,
 CONSTRAINT [PK_CustomerAccounts] PRIMARY KEY CLUSTERED 
(
	[CustomerAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAccountsProcesses]    Script Date: 16.06.2023 17:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAccountsProcesses](
	[CustomerAccountProcessID] [int] IDENTITY(1,1) NOT NULL,
	[ProcessType] [nvarchar](max) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[ProcessDate] [datetime2](7) NOT NULL,
	[ReceiverID] [int] NULL,
	[SenderID] [int] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_CustomerAccountsProcesses] PRIMARY KEY CLUSTERED 
(
	[CustomerAccountProcessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230504142610_mig1', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230504150155_mig11', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230504150253_appuser_approle', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230523150906_mig_confirmcode', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230615145103_mig_4', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230616135423_CustomerAccountProcess_description', N'6.0.16')
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [District], [City], [ImageUrl], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ConfirmCode]) VALUES (2, N'mehmet', N'Koçak', N'c', N'a', N'b', N'mehmet', N'MEHMET', N'web@iklimajans.com', N'WEB@IKLIMAJANS.COM', 1, N'AQAAAAEAACcQAAAAENQfrFbVTJ1gfQaQI7DfKqWpWTlA3RmBGloYDAs9q7oX0Cv5sXRAiXEulpqk3HAdQg==', N'SQ4SFJ7VA455EJ3JJ5FB4SRVONS6GNDF', N'37946271-8a61-4303-ab88-0ea021245634', NULL, 0, 0, NULL, 1, 3, 639663)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [District], [City], [ImageUrl], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ConfirmCode]) VALUES (3, N'mehmet', N'koçak', N'Meram', N'Konya', N'test', N'mkocak', N'MKOCAK', N'web@medyaplaza.com.tr', N'WEB@MEDYAPLAZA.COM.TR', 1, N'AQAAAAEAACcQAAAAEKaMBaWNAoo5TsrnW6MZRHvnFMSvnfrmEzUds3sVkP4e4wqX4VsMxdPAfVdSd8o44A==', N'2WXS4XI64UX24P5R2U3YH5ESPKWJ7DPA', N'c75fc17a-b9fd-4622-8678-c304d1a5a21f', N'500 400 30 20', 0, 0, NULL, 1, 0, 837830)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerAccounts] ON 

INSERT [dbo].[CustomerAccounts] ([CustomerAccountID], [CustomerAccountNumber], [CustomerAccountCurrency], [CustomerAccountBalance], [BankBranch], [AppUserID]) VALUES (3, N'11111111', N'Türk Lirası', CAST(100000.00 AS Decimal(18, 2)), N'Ziraat Bankası', 3)
INSERT [dbo].[CustomerAccounts] ([CustomerAccountID], [CustomerAccountNumber], [CustomerAccountCurrency], [CustomerAccountBalance], [BankBranch], [AppUserID]) VALUES (4, N'11111112', N'Dolar', CAST(5000.00 AS Decimal(18, 2)), N'Ziraat Bankası', 3)
INSERT [dbo].[CustomerAccounts] ([CustomerAccountID], [CustomerAccountNumber], [CustomerAccountCurrency], [CustomerAccountBalance], [BankBranch], [AppUserID]) VALUES (5, N'11111113', N'Euro', CAST(1000.00 AS Decimal(18, 2)), N'Ziraat Bankası', 3)
INSERT [dbo].[CustomerAccounts] ([CustomerAccountID], [CustomerAccountNumber], [CustomerAccountCurrency], [CustomerAccountBalance], [BankBranch], [AppUserID]) VALUES (6, N'11111114', N'Türk Lirası', CAST(25000.00 AS Decimal(18, 2)), N'Ziraat Bankası', 2)
INSERT [dbo].[CustomerAccounts] ([CustomerAccountID], [CustomerAccountNumber], [CustomerAccountCurrency], [CustomerAccountBalance], [BankBranch], [AppUserID]) VALUES (7, N'11111115', N'Türk Lirası', CAST(25000.00 AS Decimal(18, 2)), N'Ziraat Bankası', 2)
SET IDENTITY_INSERT [dbo].[CustomerAccounts] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerAccountsProcesses] ON 

INSERT [dbo].[CustomerAccountsProcesses] ([CustomerAccountProcessID], [ProcessType], [Amount], [ProcessDate], [ReceiverID], [SenderID], [Description]) VALUES (1, N'Havale', CAST(50.00 AS Decimal(18, 2)), CAST(N'2023-06-16T00:00:00.0000000' AS DateTime2), 3, 3, N'test ödeme')
INSERT [dbo].[CustomerAccountsProcesses] ([CustomerAccountProcessID], [ProcessType], [Amount], [ProcessDate], [ReceiverID], [SenderID], [Description]) VALUES (2, N'Havale', CAST(50.00 AS Decimal(18, 2)), CAST(N'2023-06-16T00:00:00.0000000' AS DateTime2), 4, 3, N'test ödeme')
INSERT [dbo].[CustomerAccountsProcesses] ([CustomerAccountProcessID], [ProcessType], [Amount], [ProcessDate], [ReceiverID], [SenderID], [Description]) VALUES (3, N'Havale', CAST(1.00 AS Decimal(18, 2)), CAST(N'2023-06-16T00:00:00.0000000' AS DateTime2), 4, 3, N'test')
INSERT [dbo].[CustomerAccountsProcesses] ([CustomerAccountProcessID], [ProcessType], [Amount], [ProcessDate], [ReceiverID], [SenderID], [Description]) VALUES (4, N'Havale', CAST(1.00 AS Decimal(18, 2)), CAST(N'2023-06-16T00:00:00.0000000' AS DateTime2), 4, 3, N'test')
INSERT [dbo].[CustomerAccountsProcesses] ([CustomerAccountProcessID], [ProcessType], [Amount], [ProcessDate], [ReceiverID], [SenderID], [Description]) VALUES (6, N'Havale', CAST(111.00 AS Decimal(18, 2)), CAST(N'2023-06-16T00:00:00.0000000' AS DateTime2), 4, 3, N'test')
SET IDENTITY_INSERT [dbo].[CustomerAccountsProcesses] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [ConfirmCode]
GO
ALTER TABLE [dbo].[CustomerAccounts] ADD  DEFAULT ((0)) FOR [AppUserID]
GO
ALTER TABLE [dbo].[CustomerAccountsProcesses] ADD  DEFAULT (N'') FOR [Description]
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
ALTER TABLE [dbo].[CustomerAccounts]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAccounts_AspNetUsers_AppUserID] FOREIGN KEY([AppUserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerAccounts] CHECK CONSTRAINT [FK_CustomerAccounts_AspNetUsers_AppUserID]
GO
ALTER TABLE [dbo].[CustomerAccountsProcesses]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAccountsProcesses_CustomerAccounts_ReceiverID] FOREIGN KEY([ReceiverID])
REFERENCES [dbo].[CustomerAccounts] ([CustomerAccountID])
GO
ALTER TABLE [dbo].[CustomerAccountsProcesses] CHECK CONSTRAINT [FK_CustomerAccountsProcesses_CustomerAccounts_ReceiverID]
GO
ALTER TABLE [dbo].[CustomerAccountsProcesses]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAccountsProcesses_CustomerAccounts_SenderID] FOREIGN KEY([SenderID])
REFERENCES [dbo].[CustomerAccounts] ([CustomerAccountID])
GO
ALTER TABLE [dbo].[CustomerAccountsProcesses] CHECK CONSTRAINT [FK_CustomerAccountsProcesses_CustomerAccounts_SenderID]
GO
