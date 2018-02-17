IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LOGIN]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER]'))
ALTER TABLE [dbo].[CUSTOMER] DROP CONSTRAINT [FK_LOGIN]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER]') AND type in (N'U'))
DROP TABLE [dbo].[CUSTOMER]
GO

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO


CREATE TABLE [dbo].[CUSTOMER](
	customer_sk_seq [int] IDENTITY(1,1) NOT NULL,
	login_sk_seq [int] NOT NULL,
	first_name [varchar](50) NOT NULL,
	middle_name [varchar](50) NULL,
	last_name [varchar](50) NOT NULL,
	nic_no [varchar](15) NOT NULL,
	cutomer_address [varchar](50) NOT NULL,
	email [varchar](50) NOT NULL,
	phone_number [varchar](50) NOT NULL,
	active_ind char(1) NOT NULL,
	create_account_sk_seq int NOT NULL,
	create_datetime datetime NOT NULL,
	modify_account_sk_seq int NOT NULL,
	modify_datetime datetime NOT NULL
) ON [PRIMARY]

ALTER TABLE dbo.CUSTOMER ADD CONSTRAINT
	PK_customer_sk_seq PRIMARY KEY CLUSTERED 
	(
	customer_sk_seq
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [dbo].[CUSTOMER]  WITH NOCHECK ADD  CONSTRAINT [FK_LOGIN] FOREIGN KEY([login_sk_seq])
	REFERENCES [dbo].[LOGIN] ([login_sk_seq])
GO

ALTER TABLE dbo.CUSTOMER SET (LOCK_ESCALATION = TABLE)
GO
COMMIT



