USE [master]
GO
/****** Object:  Database [Forum]    Script Date: 10/16/2012 10:59:31 ******/
CREATE DATABASE [Forum] ON  PRIMARY 
( NAME = N'Forum', FILENAME = N'C:\Forum.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Forum_log', FILENAME = N'C:\Forum_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Forum] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Forum].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Forum] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Forum] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Forum] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Forum] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Forum] SET ARITHABORT OFF
GO
ALTER DATABASE [Forum] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Forum] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Forum] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Forum] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Forum] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Forum] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Forum] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Forum] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Forum] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Forum] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Forum] SET  DISABLE_BROKER
GO
ALTER DATABASE [Forum] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Forum] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Forum] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Forum] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Forum] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Forum] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Forum] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Forum] SET  READ_WRITE
GO
ALTER DATABASE [Forum] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Forum] SET  MULTI_USER
GO
ALTER DATABASE [Forum] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Forum] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Forum', N'ON'
GO
USE [Forum]
GO

/****** Object:  Table [dbo].[UserInfo]    Script Date: 10/16/2012 10:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](10) NOT NULL,
	[Password] [nchar](16) NULL,
	[Photo] [nvarchar](30) NULL,
	[RegTime] [datetime] NULL,
	[Power] [nchar](1) NULL,
	[Signature] [nvarchar](100) NULL,
	[Gender] [char](1) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK_UserInfo_1] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON
INSERT [dbo].[UserInfo] ([UserId], [UserName], [Password], [Photo], [RegTime], [Power], [Signature], [Gender], [Email], [Address]) VALUES (10, N'123456', N'11              ', N'slogan.png', CAST(0x00009EAC00000000 AS DateTime), N'1', N'111', N'0', N'zouyao@163.com', N'北京')
INSERT [dbo].[UserInfo] ([UserId], [UserName], [Password], [Photo], [RegTime], [Power], [Signature], [Gender], [Email], [Address]) VALUES (2, N'Shine', N'123             ', N'slogan.png', CAST(0x00009EAC00000000 AS DateTime), N'1', N'我的地盘我做主！', N'0', N'zouyao@163.com', N'湖北武汉')
INSERT [dbo].[UserInfo] ([UserId], [UserName], [Password], [Photo], [RegTime], [Power], [Signature], [Gender], [Email], [Address]) VALUES (15, N'浪子回头', N'123             ', NULL, CAST(0x00009C9400000000 AS DateTime), N'1', N'世界的精彩总是出现在你回头的时候！', N'1', NULL, N'湖南长沙')
INSERT [dbo].[UserInfo] ([UserId], [UserName], [Password], [Photo], [RegTime], [Power], [Signature], [Gender], [Email], [Address]) VALUES (14, N'心的快乐', N'123             ', NULL, CAST(0x00009E9400000000 AS DateTime), N'1', N'大爱无疆', N'1', NULL, N'湖北荆门')
INSERT [dbo].[UserInfo] ([UserId], [UserName], [Password], [Photo], [RegTime], [Power], [Signature], [Gender], [Email], [Address]) VALUES (1, N'阳光', N'123             ', N'', CAST(0x00009C1200000000 AS DateTime), N'2', N'书是我的精神食粮', N'0', N'zouyao.2008@163.com', N'湖北武汉')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF

/****** Object:  Table [dbo].[LoginRecords]    Script Date: 10/16/2012 10:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoginRecords](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](10) NULL,
	[LoginTime] [datetime] NULL,
	[LogoutTime] [datetime] NULL,
	[OlineTime] [varchar](50) NULL,
 CONSTRAINT [PK_LoginRecords] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[ClassInfo]    Script Date: 10/16/2012 10:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassInfo](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NULL,
 CONSTRAINT [PK_ClassInfo] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ClassInfo] ON
INSERT [dbo].[ClassInfo] ([ClassId], [ClassName]) VALUES (1, N'热门话题')
INSERT [dbo].[ClassInfo] ([ClassId], [ClassName]) VALUES (2, N'书山快报')
INSERT [dbo].[ClassInfo] ([ClassId], [ClassName]) VALUES (3, N'香沉絮语')
INSERT [dbo].[ClassInfo] ([ClassId], [ClassName]) VALUES (4, N'水木载德')
INSERT [dbo].[ClassInfo] ([ClassId], [ClassName]) VALUES (5, N'凝思论粹')
INSERT [dbo].[ClassInfo] ([ClassId], [ClassName]) VALUES (6, N'灌水娱乐')
INSERT [dbo].[ClassInfo] ([ClassId], [ClassName]) VALUES (7, N'论坛管理')
SET IDENTITY_INSERT [dbo].[ClassInfo] OFF

/****** Object:  Table [dbo].[BoardInfo]    Script Date: 10/16/2012 10:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoardInfo](
	[BoardId] [int] IDENTITY(1,1) NOT NULL,
	[Moderator] [nvarchar](10) NULL,
	[BoardName] [nvarchar](30) NULL,
	[ClassId] [int] NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_BoardInfo] PRIMARY KEY CLUSTERED 
(
	[BoardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BoardInfo] ON
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (4, N'阳光', N'重温经典', 2, N'经典的总是让人回味无穷的！')
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (6, N'123456', N'礼仪文化', 2, N'读书也是一种礼仪的修养！')
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (8, N'心的快乐', N'读点鲁迅', 2, N'一位杰出的文笔大师……')
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (9, N'浪子回头', N'文化漫谈', 3, N'书中的味道总是那样的甜！')
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (10, N'Shine', N'书中自有颜如玉', 3, N'评古诗词，读其韵味！')
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (11, N'阳光', N'白杨文学', 3, N'好好的品味一把白杨韵味！')
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (12, N'心的快乐', N'文化之德', 4, N'读书亦做人，德为先！')
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (13, N'阳光', N'水的那股韵味', 4, N'文化中的一笔妙写，水之韵！')
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (14, N'浪子回头', N'国学之古典', 5, N'四大名著之我见')
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (15, N'心的快乐', N'回味我的读书生涯', 6, N'快乐的开始……')
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (16, N'阳光', N'杂谈', 6, N'我只是个传说！')
INSERT [dbo].[BoardInfo] ([BoardId], [Moderator], [BoardName], [ClassId], [Description]) VALUES (17, N'Shine', N'笑话几则', 6, N'说笑话也要有文化功底哦！')
SET IDENTITY_INSERT [dbo].[BoardInfo] OFF

/****** Object:  Table [dbo].[PostsInfo]    Script Date: 10/16/2012 10:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostsInfo](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](10) NULL,
	[PostingTime] [datetime] NULL,
	[Topics] [nvarchar](50) NULL,
	[Contents] [text] NULL,
	[BoardId] [int] NULL,
 CONSTRAINT [PK_PostsInfo] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PostsInfo] ON
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (1, N'阳光', CAST(0x00009E8000000000 AS DateTime), N'梦话红楼', N'红楼梦中很多人物的名字都有谐音……', 4)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (2, N'Shine', CAST(0x00009E8000000000 AS DateTime), N'林黛玉的“沉湖”论', N'这个说法最初由周汝昌提出，后由刘心武发扬之……', 4)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (3, N'心的快乐', CAST(0x00009E8900000000 AS DateTime), N'话说孙悟空', N'一位正义者的化身，述说当年社会的黑暗与腐败', 4)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (4, N'阳光', CAST(0x00009EA500000000 AS DateTime), N'说说', N'在这里谈天说地', 6)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (5, N'心的快乐', CAST(0x00009EA500000000 AS DateTime), N'礼仪', N'中国是礼仪之邦', 6)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (6, N'Shine', CAST(0x00009EA500000000 AS DateTime), N'弃医从文', N'鲁迅想通过医学启发中国人的觉悟。', 8)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (7, N'心的快乐', CAST(0x00009EAF00000000 AS DateTime), N'文化漫谈', N'意识形态所创造的精神财富', 9)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (8, N'浪子回头', CAST(0x00009EAF00000000 AS DateTime), N'颜如玉', N'古时候的男人总是希望能遇到颜如玉，颜如玉在诗经里，在唐诗宋词里。', 10)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (9, N'心的快乐', CAST(0x00009EAF00000000 AS DateTime), N'白杨礼赞', N'白杨树实在不是平凡的，我赞美白杨树！ ', 11)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (10, N'浪子回头', CAST(0x00009EC400000000 AS DateTime), N'中国文化', N'鼎是中国文化的一部分', 12)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (11, N'Shine', CAST(0x00009EC400000000 AS DateTime), N'上善若水 厚德载物', N'最善者的品行，如同水一样， 可以滋养与造福万物，却不与万物争任何东西……。', 13)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (12, N'心的快乐', CAST(0x00009FC200000000 AS DateTime), N'读国学经典', N'儿童就应该以启发兴趣为主，游戏当中学到东西是关键', 14)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (13, N'浪子回头', CAST(0x00009EE300000000 AS DateTime), N'《朝花夕拾》的读书笔记', N'《朝花夕拾》原本叫做“旧事重提”，收录了鲁迅先生记述他童年和青年生活片段得10篇文章。', 15)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (14, N'Shine', CAST(0x00009EC400000000 AS DateTime), N'文史杂谈', N'我常觉得真能比较中外著名文学，当然是好事，但窃恐有此能力者不多。', 16)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (15, N'阳光', CAST(0x00009EB100000000 AS DateTime), N'最好的吸尘器', N'丈夫抱回家一台吸尘器，兴奋地对妻子说……', 17)
INSERT [dbo].[PostsInfo] ([PostId], [UserName], [PostingTime], [Topics], [Contents], [BoardId]) VALUES (16, N'心的快乐', CAST(0x00009ECA00000000 AS DateTime), N'饮食与文明 ', N'饮食状况是茹毛饮血，不属于饮食文化。', 16)
SET IDENTITY_INSERT [dbo].[PostsInfo] OFF

/****** Object:  Table [dbo].[ReplyInfo]    Script Date: 10/16/2012 10:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplyInfo](
	[ReplyId] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NULL,
	[ReplyTime] [datetime] NULL,
	[UserName] [nvarchar](10) NULL,
	[Contents] [text] NULL,
 CONSTRAINT [PK_ReplyInfo] PRIMARY KEY CLUSTERED 
(
	[ReplyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ReplyInfo] ON
INSERT [dbo].[ReplyInfo] ([ReplyId], [PostId], [ReplyTime], [UserName], [Contents]) VALUES (1, 1, CAST(0x00009E8A00000000 AS DateTime), N'Shine', N'在现存的各种版本中，我们只能读到林黛玉这位相助仙子的前半部分，而关于她如何离开人世重返仙界，却已无从知晓，高鹗读书一向被红学家们所鄙视，这样一来林黛玉如何仙去就成了全书最动人心魄的未解之谜1')
INSERT [dbo].[ReplyInfo] ([ReplyId], [PostId], [ReplyTime], [UserName], [Contents]) VALUES (2, 1, CAST(0x00009E8A00DCA910 AS DateTime), N'心的快乐', N'从辉煌到没落,正如"陋室空堂,当年问满床.衰草枯杨,曾为歌舞场."一切的繁华落尽,犹如从高空跌落的痛苦.')
INSERT [dbo].[ReplyInfo] ([ReplyId], [PostId], [ReplyTime], [UserName], [Contents]) VALUES (3, 2, CAST(0x00009E99008A4F08 AS DateTime), N'浪子回头', N'全书的主线为宝黛之恋,两人都是生活在精彩的世界里,只是一个时代让他们没有美好的未来1')
INSERT [dbo].[ReplyInfo] ([ReplyId], [PostId], [ReplyTime], [UserName], [Contents]) VALUES (4, 2, CAST(0x00009EAF011CC9DC AS DateTime), N'阳光', N'黛玉是贾家中的另一个精神至上者,身在尘世中,不问尘间事.')
INSERT [dbo].[ReplyInfo] ([ReplyId], [PostId], [ReplyTime], [UserName], [Contents]) VALUES (5, 3, CAST(0x00009EA5011CC9DC AS DateTime), N'123456', N'最让人心动的是"乱蟠桃大圣偷丹  反天宫诸神捉怪",搞得天宫一团乱,哈哈6')
INSERT [dbo].[ReplyInfo] ([ReplyId], [PostId], [ReplyTime], [UserName], [Contents]) VALUES (6, 3, CAST(0x00009EAF011CC9DC AS DateTime), N'阳光', N'猪八戒义激猴王 孙行者智降妖怪   --君回宝殿定江山,僧去雷音参佛祖.毕竟不知此后又有甚事,及时得到西天,且听下回分解.')
INSERT [dbo].[ReplyInfo] ([ReplyId], [PostId], [ReplyTime], [UserName], [Contents]) VALUES (7, 11, CAST(0x00009ECC00D4F4E3 AS DateTime), N'阳光', N'<div data-nslog-type="72" class="card-summary nslog-area">
<div style="width: 690px; float: left;">
<p>“上善若水”语出《老子》：“上善若水，水善利万物而不争。”意思是说，最高境界的善行就像水的品性一样，泽被万物而不争名利。</p></div></div>')
INSERT [dbo].[ReplyInfo] ([ReplyId], [PostId], [ReplyTime], [UserName], [Contents]) VALUES (9, 1, CAST(0x00009ECC00FE27A8 AS DateTime), N'阳光', N'多少时间的发货<br />')
SET IDENTITY_INSERT [dbo].[ReplyInfo] OFF

/****** Object:  Default [DF_UserInfo_Power]    Script Date: 10/16/2012 10:59:32 ******/
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF_UserInfo_Power]  DEFAULT ((0)) FOR [Power]
GO
/****** Object:  ForeignKey [FK_BoardInfo_ClassInfo]    Script Date: 10/16/2012 10:59:32 ******/
ALTER TABLE [dbo].[BoardInfo]  WITH CHECK ADD  CONSTRAINT [FK_BoardInfo_ClassInfo] FOREIGN KEY([ClassId])
REFERENCES [dbo].[ClassInfo] ([ClassId])
GO
ALTER TABLE [dbo].[BoardInfo] CHECK CONSTRAINT [FK_BoardInfo_ClassInfo]
GO
/****** Object:  ForeignKey [FK_BoardInfo_UserInfo]    Script Date: 10/16/2012 10:59:32 ******/
ALTER TABLE [dbo].[BoardInfo]  WITH CHECK ADD  CONSTRAINT [FK_BoardInfo_UserInfo] FOREIGN KEY([Moderator])
REFERENCES [dbo].[UserInfo] ([UserName])
GO
ALTER TABLE [dbo].[BoardInfo] CHECK CONSTRAINT [FK_BoardInfo_UserInfo]
GO
/****** Object:  ForeignKey [FK_PostsInfo_BoardInfo]    Script Date: 10/16/2012 10:59:32 ******/
ALTER TABLE [dbo].[PostsInfo]  WITH CHECK ADD  CONSTRAINT [FK_PostsInfo_BoardInfo] FOREIGN KEY([BoardId])
REFERENCES [dbo].[BoardInfo] ([BoardId])
GO
ALTER TABLE [dbo].[PostsInfo] CHECK CONSTRAINT [FK_PostsInfo_BoardInfo]
GO
/****** Object:  ForeignKey [FK_ReplyInfo_PostsInfo]    Script Date: 10/16/2012 10:59:32 ******/
ALTER TABLE [dbo].[ReplyInfo]  WITH CHECK ADD  CONSTRAINT [FK_ReplyInfo_PostsInfo] FOREIGN KEY([PostId])
REFERENCES [dbo].[PostsInfo] ([PostId])
GO
ALTER TABLE [dbo].[ReplyInfo] CHECK CONSTRAINT [FK_ReplyInfo_PostsInfo]
GO
