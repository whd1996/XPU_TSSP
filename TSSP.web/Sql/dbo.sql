/*
 Navicat Premium Data Transfer

 Source Server         : xpu-tssp
 Source Server Type    : SQL Server
 Source Server Version : 15002095
 Source Host           : xpu.tssp:1433
 Source Catalog        : XPU-TSSP
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002095
 File Encoding         : 65001

 Date: 09/07/2023 19:34:52
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

EXEC sp_addextendedproperty
'MS_Description', N'评论ID',
'SCHEMA', N'dbo',
'TABLE', N'Comments',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父评论ID',
'SCHEMA', N'dbo',
'TABLE', N'Comments',
'COLUMN', N'ParentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实体类型（例如：企业评价、实习就业心得等）',
'SCHEMA', N'dbo',
'TABLE', N'Comments',
'COLUMN', N'EntityType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实体ID',
'SCHEMA', N'dbo',
'TABLE', N'Comments',
'COLUMN', N'EntityId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'大学生用户ID',
'SCHEMA', N'dbo',
'TABLE', N'Comments',
'COLUMN', N'StudentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'评论文本',
'SCHEMA', N'dbo',
'TABLE', N'Comments',
'COLUMN', N'CommentText'
GO

EXEC sp_addextendedproperty
'MS_Description', N'评论表',
'SCHEMA', N'dbo',
'TABLE', N'Comments'
GO


-- ----------------------------
-- Records of Comments
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Comments] ON
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'1', NULL, N'分享', N'2', N'2', N'李新宇评论了万鸿达的就业分享')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'3', NULL, N'分享', N'2', N'1', N'万鸿达评论了自己的就业分享')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'6', N'3', N'评论', N'3', N'1', N'万鸿达评论了      (万鸿达评论了自己的就业分享)')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'7', NULL, N'分享', N'4', N'1', N'万鸿达评论了李新宇的分享')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'12', N'1', N'评论', N'1', N'1', N'万鸿达评论了（李新宇评论了万鸿达的分享）')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'16', NULL, N'分享', N'4', N'1', N'万鸿达评论了李新宇的分享')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'17', NULL, N'分享', N'4', N'1', N'万鸿达评论了李新宇的分享')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'18', NULL, N'分享', N'5', N'1', N'万鸿达评论了李新宇的分享2')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'21', N'18', N'评论', N'18', N'1', N'万鸿达评论了（万鸿达评论了李新宇的分享2）')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'22', N'21', N'评论', N'21', N'1', N'万鸿达评论了（万鸿达评论了（万鸿达评论了李新宇的分享2））')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'23', N'21', N'评论', N'21', N'1', N'万鸿达评论了（万鸿达评论了（万鸿达评论了李新宇的分享2））')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'24', N'23', N'评论', N'23', N'1', N'whd评论了【万鸿达评论了（万鸿达评论了（万鸿达评论了李新宇的分享2））】')
GO

INSERT INTO [dbo].[Comments] ([Id], [ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (N'25', N'23', N'评论', N'23', N'1', N'whd评论了【万鸿达评论了（万鸿达评论了（万鸿达评论了李新宇的分享2））】')
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
  [IntroductionText] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [IntroductionImage] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[CompanyProfiles] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'简介ID',
'SCHEMA', N'dbo',
'TABLE', N'CompanyProfiles',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业用户ID',
'SCHEMA', N'dbo',
'TABLE', N'CompanyProfiles',
'COLUMN', N'EnterpriseId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'简介文本',
'SCHEMA', N'dbo',
'TABLE', N'CompanyProfiles',
'COLUMN', N'IntroductionText'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业简介表',
'SCHEMA', N'dbo',
'TABLE', N'CompanyProfiles'
GO


-- ----------------------------
-- Records of CompanyProfiles
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CompanyProfiles] ON
GO

INSERT INTO [dbo].[CompanyProfiles] ([Id], [EnterpriseId], [IntroductionText], [IntroductionImage]) VALUES (N'1', N'1', N'深圳市视维科技有限公司成立于2004年，是全球智能数字终端产品、应用服务软件以及视频服务系统的主要提供商之一，是集研发、生产、销售于一体的软件企业和高新技术企业。视维科技成立至今，成功研发了全系列的数字电视机顶盒产品，销售覆盖全球五十多个国家，并在海外设立办事处，积极拓展全球市场，成为中东、欧洲、非洲、美洲、澳大利亚等五十多个国家和地区的数字电视机顶盒及相关终端产品的主要供应商，同时，视维科技拥有自己的统一开发平台、能够进行快速实施产品开发和投放市场、能够为客户提供综合性视频端到端解决方案的企业。目前，视维科技拥有员工近400人，组建了一支极具敬业、创造和进取精神的高素质管理团队。公司的研发团队是一大批具有多年从事数字视讯产品开发经验的行业顶尖人才，包括各种获得专业资格认证的硬件、软件高级工程师与工程技术人员，其中3位还曾荣获国家广电部和科技部的科学技术奖。公司在产品设计、项目管理、软件开发等方面具有雄厚的技术实力和丰富的实践经验。视维科技秉承“科技以人为本”的理念，以高科技为依托，良好的运营模式和服务质量为基石，坚持以最先进的技术、最稳定的性能和最优质的质量服务于广大用户。我们致力于使“视维科技”（SOWELL）成为数字电视领域内最有影响力的品牌，让越来越多的人享受到数字电视带来的乐趣。', N'/static/Assets/upload/bgi1us_img1.jpg')
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

EXEC sp_addextendedproperty
'MS_Description', N'评价ID',
'SCHEMA', N'dbo',
'TABLE', N'CompanyReviews',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业用户ID',
'SCHEMA', N'dbo',
'TABLE', N'CompanyReviews',
'COLUMN', N'EnterpriseId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'大学生用户ID',
'SCHEMA', N'dbo',
'TABLE', N'CompanyReviews',
'COLUMN', N'StudentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'评价文本',
'SCHEMA', N'dbo',
'TABLE', N'CompanyReviews',
'COLUMN', N'ReviewText'
GO

EXEC sp_addextendedproperty
'MS_Description', N'评分',
'SCHEMA', N'dbo',
'TABLE', N'CompanyReviews',
'COLUMN', N'Rating'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业评价表',
'SCHEMA', N'dbo',
'TABLE', N'CompanyReviews'
GO


-- ----------------------------
-- Records of CompanyReviews
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CompanyReviews] ON
GO

INSERT INTO [dbo].[CompanyReviews] ([Id], [EnterpriseId], [StudentId], [ReviewText], [Rating]) VALUES (N'1', N'1', N'1', N'还dsdsdw', N'4')
GO

INSERT INTO [dbo].[CompanyReviews] ([Id], [EnterpriseId], [StudentId], [ReviewText], [Rating]) VALUES (N'2', N'1', N'2', N'还行', N'3')
GO

INSERT INTO [dbo].[CompanyReviews] ([Id], [EnterpriseId], [StudentId], [ReviewText], [Rating]) VALUES (N'3', N'1', N'2', N'你好', N'2')
GO

INSERT INTO [dbo].[CompanyReviews] ([Id], [EnterpriseId], [StudentId], [ReviewText], [Rating]) VALUES (N'4', N'1', N'1', N'咋样啊', N'1')
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
  [CompanyName] varchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [ContactEmail] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ContactPhone] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [Address] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Password] varchar(40) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LogoImage] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Enterprises] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户ID',
'SCHEMA', N'dbo',
'TABLE', N'Enterprises',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'统一社会信用代码',
'SCHEMA', N'dbo',
'TABLE', N'Enterprises',
'COLUMN', N'UnifiedSocialCreditCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业名称',
'SCHEMA', N'dbo',
'TABLE', N'Enterprises',
'COLUMN', N'CompanyName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系人邮箱',
'SCHEMA', N'dbo',
'TABLE', N'Enterprises',
'COLUMN', N'ContactEmail'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系人手机',
'SCHEMA', N'dbo',
'TABLE', N'Enterprises',
'COLUMN', N'ContactPhone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'Enterprises',
'COLUMN', N'Address'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'Enterprises',
'COLUMN', N'Password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业Logo图片路径',
'SCHEMA', N'dbo',
'TABLE', N'Enterprises',
'COLUMN', N'LogoImage'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业用户表',
'SCHEMA', N'dbo',
'TABLE', N'Enterprises'
GO


-- ----------------------------
-- Records of Enterprises
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Enterprises] ON
GO

INSERT INTO [dbo].[Enterprises] ([Id], [UnifiedSocialCreditCode], [CompanyName], [ContactEmail], [ContactPhone], [Address], [Password], [LogoImage]) VALUES (N'1', N'SHIWEIKEJI', N'视维科技', N'1', N'1234222ww', N'北京', N'1', N'/static/Assets/upload/logo1logo2.png')
GO

INSERT INTO [dbo].[Enterprises] ([Id], [UnifiedSocialCreditCode], [CompanyName], [ContactEmail], [ContactPhone], [Address], [Password], [LogoImage]) VALUES (N'2', N'waeqwe', N'西安工程大学', N'123213', N'123213', N'西安', N'1', N'/static/Assets/upload/logo1logo.jpg')
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

EXEC sp_addextendedproperty
'MS_Description', N'心得ID',
'SCHEMA', N'dbo',
'TABLE', N'InternshipEmploymentExperiences',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'大学生用户ID',
'SCHEMA', N'dbo',
'TABLE', N'InternshipEmploymentExperiences',
'COLUMN', N'StudentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'心得文本',
'SCHEMA', N'dbo',
'TABLE', N'InternshipEmploymentExperiences',
'COLUMN', N'ExperienceText'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实习就业心得表',
'SCHEMA', N'dbo',
'TABLE', N'InternshipEmploymentExperiences'
GO


-- ----------------------------
-- Records of InternshipEmploymentExperiences
-- ----------------------------
SET IDENTITY_INSERT [dbo].[InternshipEmploymentExperiences] ON
GO

INSERT INTO [dbo].[InternshipEmploymentExperiences] ([Id], [StudentId], [ExperienceText]) VALUES (N'2', N'1', N'万鸿达的分享')
GO

INSERT INTO [dbo].[InternshipEmploymentExperiences] ([Id], [StudentId], [ExperienceText]) VALUES (N'4', N'2', N'李新宇的分享111')
GO

INSERT INTO [dbo].[InternshipEmploymentExperiences] ([Id], [StudentId], [ExperienceText]) VALUES (N'5', N'2', N'李新宇的分享222')
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

EXEC sp_addextendedproperty
'MS_Description', N'评价ID',
'SCHEMA', N'dbo',
'TABLE', N'InternshipEmploymentReviews',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业用户ID',
'SCHEMA', N'dbo',
'TABLE', N'InternshipEmploymentReviews',
'COLUMN', N'EnterpriseId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'大学生用户ID',
'SCHEMA', N'dbo',
'TABLE', N'InternshipEmploymentReviews',
'COLUMN', N'StudentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'评价文本',
'SCHEMA', N'dbo',
'TABLE', N'InternshipEmploymentReviews',
'COLUMN', N'ReviewText'
GO

EXEC sp_addextendedproperty
'MS_Description', N'评分',
'SCHEMA', N'dbo',
'TABLE', N'InternshipEmploymentReviews',
'COLUMN', N'Rating'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实习就业评价表',
'SCHEMA', N'dbo',
'TABLE', N'InternshipEmploymentReviews'
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

EXEC sp_addextendedproperty
'MS_Description', N'面试邀约ID',
'SCHEMA', N'dbo',
'TABLE', N'InterviewInvitations',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业用户ID',
'SCHEMA', N'dbo',
'TABLE', N'InterviewInvitations',
'COLUMN', N'EnterpriseId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'大学生用户ID',
'SCHEMA', N'dbo',
'TABLE', N'InterviewInvitations',
'COLUMN', N'StudentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'项目ID',
'SCHEMA', N'dbo',
'TABLE', N'InterviewInvitations',
'COLUMN', N'ProjectId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'面试邀约表',
'SCHEMA', N'dbo',
'TABLE', N'InterviewInvitations'
GO


-- ----------------------------
-- Records of InterviewInvitations
-- ----------------------------
SET IDENTITY_INSERT [dbo].[InterviewInvitations] ON
GO

INSERT INTO [dbo].[InterviewInvitations] ([Id], [EnterpriseId], [StudentId], [ProjectId]) VALUES (N'1', N'1', N'1', N'1')
GO

INSERT INTO [dbo].[InterviewInvitations] ([Id], [EnterpriseId], [StudentId], [ProjectId]) VALUES (N'3', N'1', N'2', N'1')
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
  [Position] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Salary] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Requirements] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[JobPostings] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'招聘信息ID',
'SCHEMA', N'dbo',
'TABLE', N'JobPostings',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业用户ID',
'SCHEMA', N'dbo',
'TABLE', N'JobPostings',
'COLUMN', N'EnterpriseId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位',
'SCHEMA', N'dbo',
'TABLE', N'JobPostings',
'COLUMN', N'Position'
GO

EXEC sp_addextendedproperty
'MS_Description', N'待遇',
'SCHEMA', N'dbo',
'TABLE', N'JobPostings',
'COLUMN', N'Salary'
GO

EXEC sp_addextendedproperty
'MS_Description', N'要求',
'SCHEMA', N'dbo',
'TABLE', N'JobPostings',
'COLUMN', N'Requirements'
GO

EXEC sp_addextendedproperty
'MS_Description', N'招聘信息表',
'SCHEMA', N'dbo',
'TABLE', N'JobPostings'
GO


-- ----------------------------
-- Records of JobPostings
-- ----------------------------
SET IDENTITY_INSERT [dbo].[JobPostings] ON
GO

INSERT INTO [dbo].[JobPostings] ([Id], [EnterpriseId], [Position], [Salary], [Requirements]) VALUES (N'1', N'1', N'前端工程师a ', N'2000-3000', N'会html、css、js')
GO

INSERT INTO [dbo].[JobPostings] ([Id], [EnterpriseId], [Position], [Salary], [Requirements]) VALUES (N'2', N'1', N'asp开发工程师', N'3000-4000', N'会asp')
GO

INSERT INTO [dbo].[JobPostings] ([Id], [EnterpriseId], [Position], [Salary], [Requirements]) VALUES (N'7', N'1', N'java开发工程师', N'10000-20001', N'熟悉jvm')
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

EXEC sp_addextendedproperty
'MS_Description', N'简历ID',
'SCHEMA', N'dbo',
'TABLE', N'PersonalResumes',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'大学生用户ID',
'SCHEMA', N'dbo',
'TABLE', N'PersonalResumes',
'COLUMN', N'StudentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'简历文本',
'SCHEMA', N'dbo',
'TABLE', N'PersonalResumes',
'COLUMN', N'ResumeText'
GO

EXEC sp_addextendedproperty
'MS_Description', N'个人简历表',
'SCHEMA', N'dbo',
'TABLE', N'PersonalResumes'
GO


-- ----------------------------
-- Records of PersonalResumes
-- ----------------------------
SET IDENTITY_INSERT [dbo].[PersonalResumes] ON
GO

INSERT INTO [dbo].[PersonalResumes] ([Id], [StudentId], [ResumeText]) VALUES (N'1', N'2', N'李新宇的简历啊！！！')
GO

INSERT INTO [dbo].[PersonalResumes] ([Id], [StudentId], [ResumeText]) VALUES (N'2', N'1', N'万鸿达的简历啊啊')
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

EXEC sp_addextendedproperty
'MS_Description', N'项目ID',
'SCHEMA', N'dbo',
'TABLE', N'Projects',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'企业用户ID',
'SCHEMA', N'dbo',
'TABLE', N'Projects',
'COLUMN', N'EnterpriseId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'项目名称',
'SCHEMA', N'dbo',
'TABLE', N'Projects',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类',
'SCHEMA', N'dbo',
'TABLE', N'Projects',
'COLUMN', N'Category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'要求',
'SCHEMA', N'dbo',
'TABLE', N'Projects',
'COLUMN', N'Requirements'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实战项目表',
'SCHEMA', N'dbo',
'TABLE', N'Projects'
GO


-- ----------------------------
-- Records of Projects
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Projects] ON
GO

INSERT INTO [dbo].[Projects] ([Id], [EnterpriseId], [Name], [Category], [Requirements]) VALUES (N'1', N'1', N'项目甲', N'软件开发', N'开发一个asp项目')
GO

INSERT INTO [dbo].[Projects] ([Id], [EnterpriseId], [Name], [Category], [Requirements]) VALUES (N'2', N'1', N'项目乙', N'前端项目开发', N'开发一个vue项目')
GO

INSERT INTO [dbo].[Projects] ([Id], [EnterpriseId], [Name], [Category], [Requirements]) VALUES (N'4', N'1', N'项目丙啊a ', N'软件开发', N'开发一个java后端项目')
GO

INSERT INTO [dbo].[Projects] ([Id], [EnterpriseId], [Name], [Category], [Requirements]) VALUES (N'17', N'2', N'项目4', N'2', N'2')
GO

INSERT INTO [dbo].[Projects] ([Id], [EnterpriseId], [Name], [Category], [Requirements]) VALUES (N'18', N'2', N'项目5', N'3', N'3')
GO

INSERT INTO [dbo].[Projects] ([Id], [EnterpriseId], [Name], [Category], [Requirements]) VALUES (N'19', N'1', N'xiangmu', N'前端', N'2222')
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

EXEC sp_addextendedproperty
'MS_Description', N'成果ID',
'SCHEMA', N'dbo',
'TABLE', N'ProjectSubmissions',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'项目ID',
'SCHEMA', N'dbo',
'TABLE', N'ProjectSubmissions',
'COLUMN', N'ProjectId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'大学生用户ID',
'SCHEMA', N'dbo',
'TABLE', N'ProjectSubmissions',
'COLUMN', N'StudentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'成果文本',
'SCHEMA', N'dbo',
'TABLE', N'ProjectSubmissions',
'COLUMN', N'SubmissionText'
GO

EXEC sp_addextendedproperty
'MS_Description', N'成果图片',
'SCHEMA', N'dbo',
'TABLE', N'ProjectSubmissions',
'COLUMN', N'SubmissionImage'
GO

EXEC sp_addextendedproperty
'MS_Description', N'成果附件',
'SCHEMA', N'dbo',
'TABLE', N'ProjectSubmissions',
'COLUMN', N'SubmissionAttachment'
GO

EXEC sp_addextendedproperty
'MS_Description', N'项目成果表',
'SCHEMA', N'dbo',
'TABLE', N'ProjectSubmissions'
GO


-- ----------------------------
-- Records of ProjectSubmissions
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ProjectSubmissions] ON
GO

INSERT INTO [dbo].[ProjectSubmissions] ([Id], [ProjectId], [StudentId], [SubmissionText], [SubmissionImage], [SubmissionAttachment]) VALUES (N'1', N'1', N'1', N'项目甲的第一个成果', N'/static/upload/submitProjectImage/11.jpg', N'/static/upload/submitProjectFile/11.txt')
GO

INSERT INTO [dbo].[ProjectSubmissions] ([Id], [ProjectId], [StudentId], [SubmissionText], [SubmissionImage], [SubmissionAttachment]) VALUES (N'18', N'2', N'1', N'123124', N'/static/upload/submitProjectImage/182.txt', NULL)
GO

INSERT INTO [dbo].[ProjectSubmissions] ([Id], [ProjectId], [StudentId], [SubmissionText], [SubmissionImage], [SubmissionAttachment]) VALUES (N'25', N'4', N'1', N'项目丙的第一个成果', N'/static/upload/submitProjectImage/25defaultBgi.png', N'/static/upload/submitProjectFile/251.txt')
GO

INSERT INTO [dbo].[ProjectSubmissions] ([Id], [ProjectId], [StudentId], [SubmissionText], [SubmissionImage], [SubmissionAttachment]) VALUES (N'26', N'2', N'1', N'项目乙的第一个成果', N'/static/upload/submitProjectImage/261.jpg', N'/static/upload/submitProjectFile/262.txt')
GO

INSERT INTO [dbo].[ProjectSubmissions] ([Id], [ProjectId], [StudentId], [SubmissionText], [SubmissionImage], [SubmissionAttachment]) VALUES (N'27', N'1', N'1', N'项目甲的第二个成果', N'/static/upload/submitProjectImage/272.jpg', N'/static/upload/submitProjectFile/27logo.jpg')
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

EXEC sp_addextendedproperty
'MS_Description', N'简历投递ID',
'SCHEMA', N'dbo',
'TABLE', N'Resumes',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'招聘信息ID',
'SCHEMA', N'dbo',
'TABLE', N'Resumes',
'COLUMN', N'JobPostingId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'大学生用户ID',
'SCHEMA', N'dbo',
'TABLE', N'Resumes',
'COLUMN', N'StudentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'简历投递表',
'SCHEMA', N'dbo',
'TABLE', N'Resumes'
GO


-- ----------------------------
-- Records of Resumes
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Resumes] ON
GO

INSERT INTO [dbo].[Resumes] ([Id], [JobPostingId], [StudentId]) VALUES (N'1', N'2', N'2')
GO

INSERT INTO [dbo].[Resumes] ([Id], [JobPostingId], [StudentId]) VALUES (N'2', N'1', N'1')
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
  [FullName] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [Nickname] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [Gender] varchar(4) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Phone] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [Address] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Password] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Students] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户ID',
'SCHEMA', N'dbo',
'TABLE', N'Students',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'Students',
'COLUMN', N'FullName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'昵称',
'SCHEMA', N'dbo',
'TABLE', N'Students',
'COLUMN', N'Nickname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'Students',
'COLUMN', N'Gender'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮箱',
'SCHEMA', N'dbo',
'TABLE', N'Students',
'COLUMN', N'Email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机',
'SCHEMA', N'dbo',
'TABLE', N'Students',
'COLUMN', N'Phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'Students',
'COLUMN', N'Address'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'Students',
'COLUMN', N'Password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'大学生用户表',
'SCHEMA', N'dbo',
'TABLE', N'Students'
GO


-- ----------------------------
-- Records of Students
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Students] ON
GO

INSERT INTO [dbo].[Students] ([Id], [FullName], [Nickname], [Gender], [Email], [Phone], [Address], [Password]) VALUES (N'1', N'万鸿达', N'万鸿达', N'男', N'1', N'1111', N'甘肃', N'1')
GO

INSERT INTO [dbo].[Students] ([Id], [FullName], [Nickname], [Gender], [Email], [Phone], [Address], [Password]) VALUES (N'2', N'李新宇', N'李新宇', NULL, N'2', NULL, N'陕西', N'2')
GO

INSERT INTO [dbo].[Students] ([Id], [FullName], [Nickname], [Gender], [Email], [Phone], [Address], [Password]) VALUES (N'3', NULL, NULL, NULL, N'3', NULL, NULL, N'3')
GO

INSERT INTO [dbo].[Students] ([Id], [FullName], [Nickname], [Gender], [Email], [Phone], [Address], [Password]) VALUES (N'4', NULL, NULL, NULL, N'22', NULL, NULL, N'2')
GO

INSERT INTO [dbo].[Students] ([Id], [FullName], [Nickname], [Gender], [Email], [Phone], [Address], [Password]) VALUES (N'5', NULL, NULL, NULL, N'222', NULL, NULL, N'2')
GO

INSERT INTO [dbo].[Students] ([Id], [FullName], [Nickname], [Gender], [Email], [Phone], [Address], [Password]) VALUES (N'6', N'梁帅', N'梁帅', NULL, N'1758335414@qq.com', NULL, NULL, N'123456')
GO

INSERT INTO [dbo].[Students] ([Id], [FullName], [Nickname], [Gender], [Email], [Phone], [Address], [Password]) VALUES (N'7', NULL, NULL, NULL, N'2033296973@qq.com', NULL, NULL, N'123456')
GO

SET IDENTITY_INSERT [dbo].[Students] OFF
GO


-- ----------------------------
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Auto increment value for Comments
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Comments]', RESEED, 25)
GO


-- ----------------------------
-- Primary Key structure for table Comments
-- ----------------------------
ALTER TABLE [dbo].[Comments] ADD CONSTRAINT [PK__Comments__3214EC0702039FA4] PRIMARY KEY CLUSTERED ([Id])
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
ALTER TABLE [dbo].[CompanyProfiles] ADD CONSTRAINT [PK__CompanyP__3214EC07171FEDDD] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CompanyReviews
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CompanyReviews]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table CompanyReviews
-- ----------------------------
ALTER TABLE [dbo].[CompanyReviews] ADD CONSTRAINT [PK__CompanyR__3214EC07E2D634A4] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Enterprises
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Enterprises]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table Enterprises
-- ----------------------------
ALTER TABLE [dbo].[Enterprises] ADD CONSTRAINT [PK__Enterpri__3214EC071AD13DDB] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for InternshipEmploymentExperiences
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[InternshipEmploymentExperiences]', RESEED, 13)
GO


-- ----------------------------
-- Primary Key structure for table InternshipEmploymentExperiences
-- ----------------------------
ALTER TABLE [dbo].[InternshipEmploymentExperiences] ADD CONSTRAINT [PK__Internsh__3214EC07A7108B46] PRIMARY KEY CLUSTERED ([Id])
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
ALTER TABLE [dbo].[InternshipEmploymentReviews] ADD CONSTRAINT [PK__Internsh__3214EC07198E97EC] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for InterviewInvitations
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[InterviewInvitations]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table InterviewInvitations
-- ----------------------------
ALTER TABLE [dbo].[InterviewInvitations] ADD CONSTRAINT [PK__Intervie__3214EC071A6041B0] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for JobPostings
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[JobPostings]', RESEED, 9)
GO


-- ----------------------------
-- Primary Key structure for table JobPostings
-- ----------------------------
ALTER TABLE [dbo].[JobPostings] ADD CONSTRAINT [PK__JobPosti__3214EC07F59903BB] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PersonalResumes
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PersonalResumes]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table PersonalResumes
-- ----------------------------
ALTER TABLE [dbo].[PersonalResumes] ADD CONSTRAINT [PK__Personal__3214EC07BD464123] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Projects
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Projects]', RESEED, 19)
GO


-- ----------------------------
-- Primary Key structure for table Projects
-- ----------------------------
ALTER TABLE [dbo].[Projects] ADD CONSTRAINT [PK__Projects__3214EC07BAFDFC06] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProjectSubmissions
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProjectSubmissions]', RESEED, 27)
GO


-- ----------------------------
-- Primary Key structure for table ProjectSubmissions
-- ----------------------------
ALTER TABLE [dbo].[ProjectSubmissions] ADD CONSTRAINT [PK__ProjectS__3214EC070460FE1D] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Resumes
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Resumes]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table Resumes
-- ----------------------------
ALTER TABLE [dbo].[Resumes] ADD CONSTRAINT [PK__Resumes__3214EC07E85992A4] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Students
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Students]', RESEED, 7)
GO


-- ----------------------------
-- Primary Key structure for table Students
-- ----------------------------
ALTER TABLE [dbo].[Students] ADD CONSTRAINT [PK__Students__3214EC07FE6D64A3] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Comments
-- ----------------------------
ALTER TABLE [dbo].[Comments] ADD CONSTRAINT [FK__Comments__Parent__4AB81AF0] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[Comments] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Comments] ADD CONSTRAINT [FK__Comments__Studen__4BAC3F29] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CompanyProfiles
-- ----------------------------
ALTER TABLE [dbo].[CompanyProfiles] ADD CONSTRAINT [FK__CompanyPr__Enter__286302EC] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CompanyReviews
-- ----------------------------
ALTER TABLE [dbo].[CompanyReviews] ADD CONSTRAINT [FK__CompanyRe__Enter__2B3F6F97] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[CompanyReviews] ADD CONSTRAINT [FK__CompanyRe__Stude__2C3393D0] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table InternshipEmploymentExperiences
-- ----------------------------
ALTER TABLE [dbo].[InternshipEmploymentExperiences] ADD CONSTRAINT [FK__Internshi__Stude__47DBAE45] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table InternshipEmploymentReviews
-- ----------------------------
ALTER TABLE [dbo].[InternshipEmploymentReviews] ADD CONSTRAINT [FK__Internshi__Enter__440B1D61] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[InternshipEmploymentReviews] ADD CONSTRAINT [FK__Internshi__Stude__44FF419A] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table InterviewInvitations
-- ----------------------------
ALTER TABLE [dbo].[InterviewInvitations] ADD CONSTRAINT [FK__Interview__Enter__3C69FB99] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[InterviewInvitations] ADD CONSTRAINT [FK__Interview__Stude__3D5E1FD2] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[InterviewInvitations] ADD CONSTRAINT [FK__Interview__Proje__3E52440B] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Projects] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table JobPostings
-- ----------------------------
ALTER TABLE [dbo].[JobPostings] ADD CONSTRAINT [FK__JobPostin__Enter__2F10007B] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PersonalResumes
-- ----------------------------
ALTER TABLE [dbo].[PersonalResumes] ADD CONSTRAINT [FK__PersonalR__Stude__412EB0B6] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Projects
-- ----------------------------
ALTER TABLE [dbo].[Projects] ADD CONSTRAINT [FK__Projects__Enterp__35BCFE0A] FOREIGN KEY ([EnterpriseId]) REFERENCES [dbo].[Enterprises] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProjectSubmissions
-- ----------------------------
ALTER TABLE [dbo].[ProjectSubmissions] ADD CONSTRAINT [FK__ProjectSu__Proje__38996AB5] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Projects] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProjectSubmissions] ADD CONSTRAINT [FK__ProjectSu__Stude__398D8EEE] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Resumes
-- ----------------------------
ALTER TABLE [dbo].[Resumes] ADD CONSTRAINT [FK__Resumes__JobPost__31EC6D26] FOREIGN KEY ([JobPostingId]) REFERENCES [dbo].[JobPostings] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Resumes] ADD CONSTRAINT [FK__Resumes__Student__32E0915F] FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

