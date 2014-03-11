USE [db_emp_timetracker]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

/**** User table *****/

CREATE TABLE [dbo].[tb_user](
	[user_id] [varchar](50) NOT NULL,
	[f_name] [varchar](50) NOT NULL,
	[m_name] [varchar](50) NULL,
	[l_name] [varchar](50) NOT NULL,
	[login_id] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[emp_start_date] [date] NOT NULL,
	[emp_end_date] [nchar](10) NULL,
	[status] [int] NOT NULL,
	[mob_num] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tb_user] ADD  CONSTRAINT [DF_tb_user_emp_start_date]  DEFAULT (getdate()) FOR [emp_start_date]
GO


/**** Category table *****/

CREATE TABLE [dbo].[tb_category](
	[cat_id] [int] NOT NULL,
	[cat_name] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tb_category] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

/**** Project table *****/

CREATE TABLE [dbo].[tb_project](
	[project_id] [int] IDENTITY(1,1) NOT NULL,
	[project_name] [varchar](50) NOT NULL,
	[start_date] [date] NOT NULL,
	[end_data] [date] NULL,
 CONSTRAINT [PK_tb_project] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tb_project] ADD  CONSTRAINT [DF_tb_project_start_date]  DEFAULT (getdate()) FOR [start_date]
GO




/**** Role table *****/

CREATE TABLE [dbo].[tb_role](
	[role_id] [varchar](50) NOT NULL,
	[role_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tb_role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/**** User-Role table *****/
CREATE TABLE [dbo].[tb_user_role](
	[user_id] [varchar](50) FOREIGN KEY REFERENCES dbo.tb_user(user_id),
	[role_id] [varchar](50) FOREIGN KEY REFERENCES dbo.tb_role(role_id),
) ON [PRIMARY]

GO

/**** User-project table *****/

CREATE TABLE [dbo].[tb_user_project](
	[user_id] [varchar](50) FOREIGN KEY REFERENCES dbo.tb_user(user_id),
	[role_id] [varchar](50) FOREIGN KEY REFERENCES dbo.tb_role(role_id),
	[project_id] [int] FOREIGN KEY REFERENCES dbo.tb_project(project_id),
	[start_date] [date] NOT NULL,
	[end_date] [date] NULL,
	CONSTRAINT [PK_tb_user_project] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[project_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tb_user_project] ADD  CONSTRAINT [DF_tb_user_project_start_date]  DEFAULT (getdate()) FOR [start_date]
GO

/**** Time-Sheet table *****/

CREATE TABLE [dbo].[tb_time_sheet](
	[user_id] [varchar](50) FOREIGN KEY REFERENCES dbo.tb_user(user_id),
	[project_id] [int] FOREIGN KEY REFERENCES dbo.tb_project(project_id),
	[cat_id] [int] FOREIGN KEY REFERENCES dbo.tb_category(cat_id),
	[time] [int] NOT NULL,
	[comments] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_PADDING OFF
GO




