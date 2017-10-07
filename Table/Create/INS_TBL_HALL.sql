/****** Object:  Table [dbo].[hall]    Script Date: 10/7/2017 10:13:30 PM ******/
DROP TABLE [dbo].[hall]
GO



CREATE TABLE [dbo].[hall](
	[hall_sk_seq] [int] IDENTITY(1,1) NOT NULL,
	[hall_name] [nvarchar](50) NOT NULL,
	[hall_address] [nvarchar](50) NOT NULL,
	[hall_owner] [nvarchar](50) NOT NULL,
	[hall_size] [nvarchar](50) NOT NULL,
	[seating_capacity] [int] NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NULL,
	[area] [nvarchar](50) NULL,
 CONSTRAINT [PK_hall] PRIMARY KEY CLUSTERED 
(
	[hall_sk_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


