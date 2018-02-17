IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOGIN]') AND type in (N'U'))
DROP TABLE [dbo].[LOGIN]
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


CREATE TABLE [dbo].[LOGIN](

	login_sk_seq int IDENTITY(1,1) NOT NULL,
	user_name [varchar](50) UNIQUE NOT NULL,
	password [varchar](50) NOT NULL,
	source_portal INT NOT NULL,
	active_ind char(1) NOT NULL,
	create_account_sk_seq int NOT NULL,
	create_datetime datetime NOT NULL,
	modify_account_sk_seq int NOT NULL,
	modify_datetime datetime NOT NULL
) ON [PRIMARY]

ALTER TABLE dbo.LOGIN ADD CONSTRAINT
	PK_login_sk_seq PRIMARY KEY CLUSTERED 
	(
	login_sk_seq
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE dbo.LOGIN SET (LOCK_ESCALATION = TABLE)
GO
COMMIT


