/*
 Navicat Premium Data Transfer

 Source Server         : 我的sqlServer
 Source Server Type    : SQL Server
 Source Server Version : 15002095
 Source Host           : PCWHD:1433
 Source Catalog        : XPU-TSSP
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002095
 File Encoding         : 65001

 Date: 04/07/2023 10:45:04
*/


-- ----------------------------
-- Table structure for Comments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Comments]') AND type IN ('U'))
	DROP TABLE [dbo].[Comments]
GO

CREATE TABLE [dbo].[Comments] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ParentId] int  NULL,
  [EntityType] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityId] int  NULL,
  [StudentId] int  NOT NULL,
  [CommentText] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Comments] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Comments
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Comments] ON
GO

SET IDENTITY_INSERT [dbo].[Comments] OFF
GO


-- ----------------------------
-- Table structure for CompanyProfiles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyProfiles]') AND type IN ('U'))
	DROP TABLE [dbo].[CompanyProfiles]
GO

CREATE TABLE [dbo].[CompanyProfiles] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EnterpriseId] int  NOT NULL,
  [IntroductionText] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[CompanyProfiles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of CompanyProfiles
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CompanyProfiles] ON
GO

SET IDENTITY_INSERT [dbo].[CompanyProfiles] OFF
GO


-- ----------------------------
-- Table structure for CompanyReviews
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyReviews]') AND type IN ('U'))
	DROP TABLE [dbo].[CompanyReviews]
GO

CREATE TABLE [dbo].[CompanyReviews] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EnterpriseId] int  NOT NULL,
  [StudentId] int  NOT NULL,
  [ReviewText] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [Rating] int  NULL
)
GO

ALTER TABLE [dbo].[CompanyReviews] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of CompanyReviews
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CompanyReviews] ON
GO

SET IDENTITY_INSERT [dbo].[CompanyReviews] OFF
GO


-- ----------------------------
-- Table structure for Enterprises
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Enterprises]') AND type IN ('U'))
	DROP TABLE [dbo].[Enterprises]
GO

CREATE TABLE [dbo].[Enterprises] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UnifiedSocialCreditCode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CompanyName] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [ContactEmail] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [ContactPhone] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [Address] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [Password] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LogoImage] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Enterprises] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Enterprises
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Enterprises] ON
GO

INSERT INTO [dbo].[Enterprises] ([Id], [UnifiedSocialCreditCode], [CompanyName], [ContactEmail], [ContactPhone], [Address], [Password], [LogoImage]) VALUES (N'2', N'WEQWEwq', N'西安工程大学', N'123@163.com', N'1234567', N'西安工程大学', N'123', NULL)
GO

INSERT INTO [dbo].[Enterprises] ([Id], [UnifiedSocialCreditCode], [CompanyName], [ContactEmail], [ContactPhone], [Address], [Password], [LogoImage]) VALUES (N'6', NULL, NULL, N'1', NULL, NULL, N'1', NULL)
GO

SET IDENTITY_INSERT [dbo].[Enterprises] OFF
GO


-- ----------------------------
-- Table structure for InternshipEmploymentExperiences
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[InternshipEmploymentExperiences]') AND type IN ('U'))
	DROP TABLE [dbo].[InternshipEmploymentExperiences]
GO

CREATE TABLE [dbo].[InternshipEmploymentExperiences] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [StudentId] int  NOT NULL,
  [ExperienceText] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[InternshipEmploymentExperiences] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of InternshipEmploymentExperiences
-- ----------------------------
SET IDENTITY_INSERT [dbo].[InternshipEmploymentExperiences] ON
GO

SET IDENTITY_INSERT [dbo].[InternshipEmploymentExperiences] OFF
GO


-- ----------------------------
-- Table structure for InternshipEmploymentReviews
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[InternshipEmploymentReviews]') AND type IN ('U'))
	DROP TABLE [dbo].[InternshipEmploymentReviews]
GO

CREATE TABLE [dbo].[InternshipEmploymentReviews] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EnterpriseId] int  NOT NULL,
  [StudentId] int  NOT NULL,
  [ReviewText] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [Rating] int  NULL
)
GO

ALTER TABLE [dbo].[InternshipEmploymentReviews] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of InternshipEmploymentReviews
-- ----------------------------
SET IDENTITY_INSERT [dbo].[InternshipEmploymentReviews] ON
GO

SET IDENTITY_INSERT [dbo].[InternshipEmploymentReviews] OFF
GO


-- ----------------------------
-- Table structure for InterviewInvitations
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[InterviewInvitations]') AND type IN ('U'))
	DROP TABLE [dbo].[InterviewInvitations]
GO

CREATE TABLE [dbo].[InterviewInvitations] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EnterpriseId] int  NOT NULL,
  [StudentId] int  NOT NULL,
  [ProjectId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[InterviewInvitations] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of InterviewInvitations
-- ----------------------------
SET IDENTITY_INSERT [dbo].[InterviewInvitations] ON
GO

SET IDENTITY_INSERT [dbo].[InterviewInvitations] OFF
GO


-- ----------------------------
-- Table structure for JobPostings
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[JobPostings]') AND type IN ('U'))
	DROP TABLE [dbo].[JobPostings]
GO

CREATE TABLE [dbo].[JobPostings] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EnterpriseId] int  NOT NULL,
  [Position] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Salary] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Requirements] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[JobPostings] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of JobPostings
-- ----------------------------
SET IDENTITY_INSERT [dbo].[JobPostings] ON
GO

SET IDENTITY_INSERT [dbo].[JobPostings] OFF
GO


-- ----------------------------
-- Table structure for PersonalResumes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonalResumes]') AND type IN ('U'))
	DROP TABLE [dbo].[PersonalResumes]
GO

CREATE TABLE [dbo].[PersonalResumes] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [StudentId] int  NOT NULL,
  [ResumeText] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[PersonalResumes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PersonalResumes
-- ----------------------------
SET IDENTITY_INSERT [dbo].[PersonalResumes] ON
GO

INSERT INTO [dbo].[PersonalResumes] ([Id], [StudentId], [ResumeText]) VALUES (N'1', N'1', N'我是软件工程2002班万鸿达 学号42016210104')
GO

SET IDENTITY_INSERT [dbo].[PersonalResumes] OFF
GO


-- ----------------------------
-- Table structure for Projects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Projects]') AND type IN ('U'))
	DROP TABLE [dbo].[Projects]
GO

CREATE TABLE [dbo].[Projects] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EnterpriseId] int  NOT NULL,
  [Name] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Category] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Requirements] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Projects] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Projects
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Projects] ON
GO

SET IDENTITY_INSERT [dbo].[Projects] OFF
GO


-- ----------------------------
-- Table structure for ProjectSubmissions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectSubmissions]') AND type IN ('U'))
	DROP TABLE [dbo].[ProjectSubmissions]
GO

CREATE TABLE [dbo].[ProjectSubmissions] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProjectId] int  NOT NULL,
  [StudentId] int  NOT NULL,
  [SubmissionText] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [SubmissionImage] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [SubmissionAttachment] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ProjectSubmissions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ProjectSubmissions
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ProjectSubmissions] ON
GO

SET IDENTITY_INSERT [dbo].[ProjectSubmissions] OFF
GO


-- ----------------------------
-- Table structure for Resumes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Resumes]') AND type IN ('U'))
	DROP TABLE [dbo].[Resumes]
GO

CREATE TABLE [dbo].[Resumes] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [JobPostingId] int  NOT NULL,
  [StudentId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Resumes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Resumes
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Resumes] ON
GO

SET IDENTITY_INSERT [dbo].[Resumes] OFF
GO


-- ----------------------------
-- Table structure for Students
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Students]') AND type IN ('U'))
	DROP TABLE [dbo].[Students]
GO

CREATE TABLE [dbo].[Students] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [FullName] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Nickname] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Gender] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [Address] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [Password] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Students] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Students
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Students] ON
GO

INSERT INTO [dbo].[Students] ([Id], [FullName], [Nickname], [Gender], [Email], [Phone], [Address], [Password]) VALUES (N'1', N'whd', N'万鸿达', N'男', N'1', N'1', N'1', N'123')
GO

SET IDENTITY_INSERT [dbo].[Students] OFF
GO


-- ----------------------------
-- Auto increment value for Comments
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Comments]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Comments
-- ----------------------------
ALTER TABLE [dbo].[Comments] ADD CONSTRAINT [PK__Comments__3214EC0763109320] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CompanyProfiles
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CompanyProfiles]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table CompanyProfiles
-- ----------------------------
ALTER TABLE [dbo].[CompanyProfiles] ADD CONSTRAINT [PK__CompanyP__3214EC074501BF55] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CompanyReviews
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CompanyReviews]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table CompanyReviews
-- ----------------------------
ALTER TABLE [dbo].[CompanyReviews] ADD CONSTRAINT [PK__CompanyR__3214EC07FDC7D5BC] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Enterprises
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Enterprises]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table Enterprises
-- ----------------------------
ALTER TABLE [dbo].[Enterprises] ADD CONSTRAINT [PK__Enterpri__3214EC07E119EA0F] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for InternshipEmploymentExperiences
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[InternshipEmploymentExperiences]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table InternshipEmploymentExperiences
-- ----------------------------
ALTER TABLE [dbo].[InternshipEmploymentExperiences] ADD CONSTRAINT [PK__Internsh__3214EC07816F0990] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for InternshipEmploymentReviews
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[InternshipEmploymentReviews]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table InternshipEmploymentReviews
-- ----------------------------
ALTER TABLE [dbo].[InternshipEmploymentReviews] ADD CONSTRAINT [PK__Internsh__3214EC079F3B2DA6] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for InterviewInvitations
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[InterviewInvitations]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table InterviewInvitations
-- ----------------------------
ALTER TABLE [dbo].[InterviewInvitations] ADD CONSTRAINT [PK__Intervie__3214EC078AF8C5E6] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for JobPostings
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[JobPostings]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table JobPostings
-- ----------------------------
ALTER TABLE [dbo].[JobPostings] ADD CONSTRAINT [PK__JobPosti__3214EC0748670EEE] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PersonalResumes
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PersonalResumes]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table PersonalResumes
-- ----------------------------
ALTER TABLE [dbo].[PersonalResumes] ADD CONSTRAINT [PK__Personal__3214EC073DEADCE9] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Projects
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Projects]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Projects
-- ----------------------------
ALTER TABLE [dbo].[Projects] ADD CONSTRAINT [PK__Projects__3214EC07DE6C0E6F] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProjectSubmissions
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProjectSubmissions]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table ProjectSubmissions
-- ----------------------------
ALTER TABLE [dbo].[ProjectSubmissions] ADD CONSTRAINT [PK__ProjectS__3214EC0744C400F1] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Resumes
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Resumes]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Resumes
-- ----------------------------
ALTER TABLE [dbo].[Resumes] ADD CONSTRAINT [PK__Resumes__3214EC079A5A3A51] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Students
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Students]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table Students
-- ----------------------------
ALTER TABLE [dbo].[Students] ADD CONSTRAINT [PK__Students__3214EC0729DB1B58] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Comments
-- ----------------------------
ALTER TABLE [dbo].[Comments] ADD CONSTRAINT [FK__Comments__Parent__5CD6CB2B] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[Comments] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Comments] ADD CONSTRAINT [FK__Comments__Studen__5DCAEF64] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CompanyProfiles
-- ----------------------------
ALTER TABLE [dbo].[CompanyProfiles] ADD CONSTRAINT [FK__CompanyPr__Enter__3A81B327] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CompanyReviews
-- ----------------------------
ALTER TABLE [dbo].[CompanyReviews] ADD CONSTRAINT [FK__CompanyRe__Enter__3D5E1FD2] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[CompanyReviews] ADD CONSTRAINT [FK__CompanyRe__Stude__3E52440B] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table InternshipEmploymentExperiences
-- ----------------------------
ALTER TABLE [dbo].[InternshipEmploymentExperiences] ADD CONSTRAINT [FK__Internshi__Stude__59FA5E80] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table InternshipEmploymentReviews
-- ----------------------------
ALTER TABLE [dbo].[InternshipEmploymentReviews] ADD CONSTRAINT [FK__Internshi__Enter__5629CD9C] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[InternshipEmploymentReviews] ADD CONSTRAINT [FK__Internshi__Stude__571DF1D5] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table InterviewInvitations
-- ----------------------------
ALTER TABLE [dbo].[InterviewInvitations] ADD CONSTRAINT [FK__Interview__Enter__4E88ABD4] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[InterviewInvitations] ADD CONSTRAINT [FK__Interview__Stude__4F7CD00D] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[InterviewInvitations] ADD CONSTRAINT [FK__Interview__Proje__5070F446] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Projects] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table JobPostings
-- ----------------------------
ALTER TABLE [dbo].[JobPostings] ADD CONSTRAINT [FK__JobPostin__Enter__412EB0B6] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PersonalResumes
-- ----------------------------
ALTER TABLE [dbo].[PersonalResumes] ADD CONSTRAINT [FK__PersonalR__Stude__534D60F1] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Projects
-- ----------------------------
ALTER TABLE [dbo].[Projects] ADD CONSTRAINT [FK__Projects__Enterp__47DBAE45] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProjectSubmissions
-- ----------------------------
ALTER TABLE [dbo].[ProjectSubmissions] ADD CONSTRAINT [FK__ProjectSu__Proje__4AB81AF0] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Projects] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProjectSubmissions] ADD CONSTRAINT [FK__ProjectSu__Stude__4BAC3F29] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Resumes
-- ----------------------------
ALTER TABLE [dbo].[Resumes] ADD CONSTRAINT [FK__Resumes__JobPost__440B1D61] FOREIGN KEY ([JobPostingId]) REFERENCES [dbo].[JobPostings] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Resumes] ADD CONSTRAINT [FK__Resumes__Student__44FF419A] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

