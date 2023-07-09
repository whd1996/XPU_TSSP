-- 创建数据库
--create database XPU-TSSP;

-- 创建企业用户表
CREATE TABLE Enterprises (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 用户ID
    UnifiedSocialCreditCode VARCHAR(50) NOT NULL, -- 统一社会信用代码
    CompanyName VARCHAR(40), -- 企业名称
    ContactEmail VARCHAR(20) NOT NULL, -- 联系人邮箱
    ContactPhone VARCHAR(20), -- 联系人手机
    Address VARCHAR(50), -- 地址
    Password VARCHAR(40) NOT NULL, -- 密码
    LogoImage VARCHAR(MAX) -- 企业Logo图片
);

-- 创建大学生用户表
CREATE TABLE Students (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 用户ID
    FullName VARCHAR(20), -- 姓名
    Nickname VARCHAR(20), -- 昵称
    Gender VARCHAR(4), -- 性别
    Email VARCHAR(20) NOT NULL, -- 邮箱
    Phone VARCHAR(20), -- 手机
    Address VARCHAR(50), -- 地址
    Password VARCHAR(20) NOT NULL -- 密码
);

-- 创建企业简介表
CREATE TABLE CompanyProfiles (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 简介ID
    EnterpriseId INT NOT NULL, -- 企业用户ID
    IntroductionText VARCHAR(MAX), -- 简介文本
    IntroductionImage VARCHAR(MAX), -- 简介图片
    FOREIGN KEY (EnterpriseId) REFERENCES Enterprises(Id)
);

-- 创建企业评价表
CREATE TABLE CompanyReviews (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 评价ID
    EnterpriseId INT NOT NULL, -- 企业用户ID
    StudentId INT NOT NULL, -- 大学生用户ID
    ReviewText VARCHAR(MAX), -- 评价文本
    Rating INT, -- 评分
    FOREIGN KEY (EnterpriseId) REFERENCES Enterprises(Id),
    FOREIGN KEY (StudentId) REFERENCES Students(Id)
);

-- 创建招聘信息表
CREATE TABLE JobPostings (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 招聘信息ID
    EnterpriseId INT NOT NULL, -- 企业ID
    Position VARCHAR(20) NOT NULL, -- 岗位
    Salary VARCHAR(100), -- 待遇
    Requirements VARCHAR(MAX), -- 要求
    FOREIGN KEY (EnterpriseId) REFERENCES Enterprises(Id)
);

-- 创建简历投递表
CREATE TABLE Resumes (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 简历投递ID
    JobPostingId INT NOT NULL, -- 招聘信息ID
    StudentId INT NOT NULL, -- 大学生用户ID
    FOREIGN KEY (JobPostingId) REFERENCES JobPostings(Id),
    FOREIGN KEY (StudentId) REFERENCES Students(Id)
);

-- 创建实战项目表
CREATE TABLE Projects (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 项目ID
    EnterpriseId INT NOT NULL, -- 企业用户ID
    Name VARCHAR(100) NOT NULL, -- 项目名称
    Category VARCHAR(100), -- 分类
    Requirements VARCHAR(MAX), -- 要求
    FOREIGN KEY (EnterpriseId) REFERENCES Enterprises(Id)
);

-- 创建项目成果表
CREATE TABLE ProjectSubmissions (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 成果ID
    ProjectId INT NOT NULL, -- 项目ID
    StudentId INT NOT NULL, -- 大学生用户ID
    SubmissionText VARCHAR(MAX), -- 成果文本
    SubmissionImage VARCHAR(MAX), -- 成果图片
    SubmissionAttachment VARCHAR(MAX), -- 成果附件
    FOREIGN KEY (ProjectId) REFERENCES Projects(Id),
    FOREIGN KEY (StudentId) REFERENCES Students(Id)
);

-- 创建面试邀约表
CREATE TABLE InterviewInvitations (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 面试邀约ID
    EnterpriseId INT NOT NULL, -- 企业用户ID
    StudentId INT NOT NULL, -- 大学生用户ID
    ProjectId INT NOT NULL, -- 项目ID
    FOREIGN KEY (EnterpriseId) REFERENCES Enterprises(Id),
    FOREIGN KEY (StudentId) REFERENCES Students(Id),
    FOREIGN KEY (ProjectId) REFERENCES Projects(Id)
);

-- 创建个人简历表
CREATE TABLE PersonalResumes (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 简历ID
    StudentId INT NOT NULL, -- 大学生用户ID
    ResumeText VARCHAR(MAX), -- 简历文本
    FOREIGN KEY (StudentId) REFERENCES Students(Id)
);

-- 创建实习就业评价表
CREATE TABLE InternshipEmploymentReviews (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 评价ID
    EnterpriseId INT NOT NULL, -- 企业用户ID
    StudentId INT NOT NULL, -- 大学生用户ID
    ReviewText VARCHAR(MAX), -- 评价文本
    Rating INT, -- 评分
    FOREIGN KEY (EnterpriseId) REFERENCES Enterprises(Id),
    FOREIGN KEY (StudentId) REFERENCES Students(Id)
);

-- 创建实习就业心得表
CREATE TABLE InternshipEmploymentExperiences (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 心得ID
    StudentId INT NOT NULL, -- 大学生用户ID
    ExperienceText VARCHAR(MAX), -- 心得文本
    FOREIGN KEY (StudentId) REFERENCES Students(Id)
);

-- 创建评论表
CREATE TABLE Comments (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- 评论ID
    ParentId INT, -- 父评论ID
    EntityType VARCHAR(50), -- 实体类型（例如：企业评价、实习就业心得等）
    EntityId INT, -- 实体ID
    StudentId INT NOT NULL, -- 大学生用户ID
    CommentText VARCHAR(MAX), -- 评论文本
    FOREIGN KEY (ParentId) REFERENCES Comments(Id),
    FOREIGN KEY (StudentId) REFERENCES Students(Id)
);
