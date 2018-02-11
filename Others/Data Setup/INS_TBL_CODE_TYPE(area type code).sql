DECLARE @code_type_sk_seq INT

IF NOT EXISTS (SELECT 1 FROM [dbo].[CODE_TYPE] WITH (NOLOCK) WHERE [code_type_sk_seq] = 1  AND [name] = 'Area Code Type')
BEGIN

SET IDENTITY_INSERT [dbo].[CODE_TYPE] ON

INSERT INTO [dbo].[CODE_TYPE]
           ([code_type_sk_seq]
			,[name]
           ,[description]
           ,[active_ind]
           ,[create_account_sk_seq]
           ,[create_datetime]
           ,[modify_account_sk_seq]
           ,[modify_datetime])
     VALUES
           (1
			,'Area Code Type'
           ,'Area Code Type'
           ,'Y'
           ,3381
           ,GETDATE()
           ,3381
           ,GETDATE())
SET IDENTITY_INSERT [dbo].[CODE_TYPE] OFF
           
END


SELECT @code_type_sk_seq = code_type_sk_seq FROM CODE_TYPE WHERE code_type_sk_seq = 1 AND active_ind = 'Y'
 
IF NOT EXISTS (SELECT 1 FROM CODE WITH (NOLOCK) WHERE code_type_sk_seq = @code_type_sk_seq AND return_value = 'North Nazimabad' AND active_ind = 'Y')
BEGIN

INSERT INTO CODE (code_type_sk_seq, key_num, sort_order, return_value, 
     active_ind, create_account_sk_seq, create_datetime, modify_account_sk_seq, modify_datetime) 
VALUES (@code_type_sk_seq,1,1,'North Nazimabad','Y',3381,GETDATE(),3381,GETDATE())
END


IF NOT EXISTS (SELECT 1 FROM CODE WITH (NOLOCK) WHERE code_type_sk_seq = @code_type_sk_seq AND return_value = 'Nazimabad' AND active_ind = 'Y')
BEGIN

INSERT INTO CODE (code_type_sk_seq, key_num, sort_order, return_value, 
     active_ind, create_account_sk_seq, create_datetime, modify_account_sk_seq, modify_datetime) 
VALUES (@code_type_sk_seq,2,2,'Nazimabad','Y',3381,GETDATE(),3381,GETDATE())
END


IF NOT EXISTS (SELECT 1 FROM CODE WITH (NOLOCK) WHERE code_type_sk_seq = @code_type_sk_seq AND return_value = 'Gulshan' AND active_ind = 'Y')
BEGIN

INSERT INTO CODE (code_type_sk_seq, key_num, sort_order, return_value, 
     active_ind, create_account_sk_seq, create_datetime, modify_account_sk_seq, modify_datetime) 
VALUES (@code_type_sk_seq,3,3,'Gulshan','Y',3381,GETDATE(),3381,GETDATE())
END


IF NOT EXISTS (SELECT 1 FROM CODE WITH (NOLOCK) WHERE code_type_sk_seq = @code_type_sk_seq AND return_value = 'Gulistan-e-Johar' AND active_ind = 'Y')
BEGIN

INSERT INTO CODE (code_type_sk_seq, key_num, sort_order, return_value, 
     active_ind, create_account_sk_seq, create_datetime, modify_account_sk_seq, modify_datetime) 
VALUES (@code_type_sk_seq,4,4,'Gulistan-e-Johar','Y',3381,GETDATE(),3381,GETDATE())
END


IF NOT EXISTS (SELECT 1 FROM CODE WITH (NOLOCK) WHERE code_type_sk_seq = @code_type_sk_seq AND return_value = 'Defence' AND active_ind = 'Y')
BEGIN

INSERT INTO CODE (code_type_sk_seq, key_num, sort_order, return_value, 
     active_ind, create_account_sk_seq, create_datetime, modify_account_sk_seq, modify_datetime) 
VALUES (@code_type_sk_seq,5,5,'Defence','Y',3381,GETDATE(),3381,GETDATE())
END


IF NOT EXISTS (SELECT 1 FROM CODE WITH (NOLOCK) WHERE code_type_sk_seq = @code_type_sk_seq AND return_value = 'Clifton' AND active_ind = 'Y')
BEGIN

INSERT INTO CODE (code_type_sk_seq, key_num, sort_order, return_value, 
     active_ind, create_account_sk_seq, create_datetime, modify_account_sk_seq, modify_datetime) 
VALUES (@code_type_sk_seq,6,6,'Clifton','Y',3381,GETDATE(),3381,GETDATE())
END


IF NOT EXISTS (SELECT 1 FROM CODE WITH (NOLOCK) WHERE code_type_sk_seq = @code_type_sk_seq AND return_value = 'North Karachi' AND active_ind = 'Y')
BEGIN

INSERT INTO CODE (code_type_sk_seq, key_num, sort_order, return_value, 
     active_ind, create_account_sk_seq, create_datetime, modify_account_sk_seq, modify_datetime) 
VALUES (@code_type_sk_seq,7,7,'North Karachi','Y',3381,GETDATE(),3381,GETDATE())
END


IF NOT EXISTS (SELECT 1 FROM CODE WITH (NOLOCK) WHERE code_type_sk_seq = @code_type_sk_seq AND return_value = 'Sadar' AND active_ind = 'Y')
BEGIN

INSERT INTO CODE (code_type_sk_seq, key_num, sort_order, return_value, 
     active_ind, create_account_sk_seq, create_datetime, modify_account_sk_seq, modify_datetime) 
VALUES (@code_type_sk_seq,8,8,'Sadar','Y',3381,GETDATE(),3381,GETDATE())
END