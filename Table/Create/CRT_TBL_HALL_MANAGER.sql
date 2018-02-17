IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HALL_MANAGER]') AND type in (N'U'))
DROP TABLE [dbo].[HALL_MANAGER]
GO

CREATE TABLE [dbo].[HALL_MANAGER](
	[hall_manager_sk_seq] [int] IDENTITY(1,1) NOT NULL,
	[hall_manager_name] [nvarchar](50) NOT NULL,
	[hall_manager_id] [nvarchar](50) NOT NULL,
	[hall_manager_email] [nvarchar](30) NOT NULL,
	[hall_manager_address] [nvarchar](50) NOT NULL,
	[hall_manager_phone_num] [nvarchar](50) NOT NULL
 CONSTRAINT [PK_hall_manager] PRIMARY KEY CLUSTERED 
(
	[hall_manager_sk_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


