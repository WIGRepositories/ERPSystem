----insert default data

INSERT INTO [dbo].[Users]([FirstName],[LastName],[EmpNo],[EmailId],[Address],[ContactNo1],[Active],[MiddleName],[CompanyId],[GenderId])
     VALUES('Admin','Admin','EMP001','admin@ERPSystem.com',null,null,1,null,1,1)

INSERT INTO [dbo].[Users]([FirstName],[LastName],[EmpNo],[EmailId],[Address],[ContactNo1],[Active],[MiddleName],[CompanyId],[GenderId])
     VALUES('Operator','1','EMP002','operator1@ERPSystem.com',null,null,1,null,1,1)

	 INSERT INTO [dbo].[Users]([FirstName],[LastName],[EmpNo],[EmailId],[Address],[ContactNo1],[Active],[MiddleName],[CompanyId],[GenderId])
     VALUES('Sales','Manager1','EMP003','admin@ERPSystem.com',null,null,1,null,1,3)

INSERT INTO [dbo].[Users]([FirstName],[LastName],[EmpNo],[EmailId],[Address],[ContactNo1],[Active],[MiddleName],[CompanyId],[GenderId])
     VALUES('Sales','Manager2','EMP004','admin@ERPSystem.com',null,null,1,null,1,3)

	 INSERT INTO [dbo].[Users]([FirstName],[LastName],[EmpNo],[EmailId],[Address],[ContactNo1],[Active],[MiddleName],[CompanyId],[GenderId])
     VALUES('Sales','Representative1','EMP005','admin@ERPSystem.com',null,null,1,null,1,1)

 INSERT INTO [dbo].[Users]([FirstName],[LastName],[EmpNo],[EmailId],[Address],[ContactNo1],[Active],[MiddleName],[CompanyId],[GenderId])
     VALUES('Sales','Representative2','EMP006','admin@ERPSystem.com',null,null,1,null,1,1)

	  INSERT INTO [dbo].[Users]([FirstName],[LastName],[EmpNo],[EmailId],[Address],[ContactNo1],[Active],[MiddleName],[CompanyId],[GenderId])
     VALUES('Sales','Representative3','EMP007','admin@ERPSystem.com',null,null,1,null,1,1)

	  INSERT INTO [dbo].[Users]([FirstName],[LastName],[EmpNo],[EmailId],[Address],[ContactNo1],[Active],[MiddleName],[CompanyId],[GenderId])
     VALUES('Sales','Representative4','EMP008','admin@ERPSystem.com',null,null,1,null,1,1)
		
-------------insert customer
	 INSERT INTO [dbo].[Customer]([Name],[CustomerCode],[shippingaddress],[billingaddress],[ContactNo],[ContactNo1],[Email],[Active])
     VALUES('Webingate','C0001','Hyd','Hyd','1234567890','1234567890','webingateteam@gmail.com',1)
	  INSERT INTO [dbo].[Customer]([Name],[CustomerCode],[shippingaddress],[billingaddress],[ContactNo],[ContactNo1],[Email],[Active])
     VALUES('integr8IT','C0002','Hyd','Hyd','1234567890','1234567890','webingateteam@gmail.com',1)

-----------insert a supplier
INSERT INTO [dbo].[Suppliers]([Name],[SupplierCode],[shippingaddress],[billingaddress],[ContactNo],[ContactNo1],[Email],[Active])
VALUES ('Webingate','WEBINGATE','Hyd','Hyd','1234567890','1234567890','webingateteam@gmail.com',1)


-------------------inventory items  
      

INSERT INTO [dbo].[InventoryItem]
           ([ItemName],[InitialQuantity],[Code],[Description],[CategoryId],[SubCategoryId],[ReOrderPoint],[ItemImage],[Price],[ItemModel]
		    ,[Features],[PublishDate],[ExpiryDate])
VALUES('Item1',0,'ITEM1','ITEM1',1,1,0,null,0.00,'Test',null,null,null)


INSERT INTO [dbo].[InventoryItem]
           ([ItemName],[InitialQuantity],[Code],[Description],[CategoryId],[SubCategoryId],[ReOrderPoint],[ItemImage],[Price],[ItemModel]
		    ,[Features],[PublishDate],[ExpiryDate])
VALUES('Item2',0,'ITEM2','ITEM2',1,1,0,null,0.00,'Test',null,null,null)
INSERT INTO [dbo].[InventoryItem]
           ([ItemName],[InitialQuantity],[Code],[Description],[CategoryId],[SubCategoryId],[ReOrderPoint],[ItemImage],[Price],[ItemModel]
		    ,[Features],[PublishDate],[ExpiryDate])
VALUES('Item3',0,'ITEM3','ITEM3',1,1,0,null,0.00,'Test',null,null,null)
INSERT INTO [dbo].[InventoryItem]
           ([ItemName],[InitialQuantity],[Code],[Description],[CategoryId],[SubCategoryId],[ReOrderPoint],[ItemImage],[Price],[ItemModel]
		    ,[Features],[PublishDate],[ExpiryDate])
VALUES('Item4',0,'ITEM4','ITEM4',1,1,0,null,0.00,'Test',null,null,null)


INSERT INTO [dbo].[UserLogins]([LoginInfo],[PassKey],[UserId],[salt],[Active]) VALUES ('admin','admin',1,null,1)
INSERT INTO [dbo].[UserLogins]([LoginInfo],[PassKey],[UserId],[salt],[Active]) VALUES ('operator','operator',2,null,1)
INSERT INTO [dbo].[UserLogins]([LoginInfo],[PassKey],[UserId],[salt],[Active]) VALUES ('sm1','sm1',3,null,1)
INSERT INTO [dbo].[UserLogins]([LoginInfo],[PassKey],[UserId],[salt],[Active]) VALUES ('sm2','sm2',4,null,1)
INSERT INTO [dbo].[UserLogins]([LoginInfo],[PassKey],[UserId],[salt],[Active]) VALUES ('rep1','rep1',5,null,1)
INSERT INTO [dbo].[UserLogins]([LoginInfo],[PassKey],[UserId],[salt],[Active]) VALUES ('rep2','rep2',6,null,1)
INSERT INTO [dbo].[UserLogins]([LoginInfo],[PassKey],[UserId],[salt],[Active]) VALUES ('rep3','rep3',7,null,1)
INSERT INTO [dbo].[UserLogins]([LoginInfo],[PassKey],[UserId],[salt],[Active]) VALUES ('rep4','rep4',8,null,1)


INSERT INTO [dbo].[UserRoles]([UserId],[RoleId],[CompanyId]) VALUES(1,1,1)
INSERT INTO [dbo].[UserRoles]([UserId],[RoleId],[CompanyId]) VALUES(2,2,1)
INSERT INTO [dbo].[UserRoles]([UserId],[RoleId],[CompanyId]) VALUES(3,3,1)
INSERT INTO [dbo].[UserRoles]([UserId],[RoleId],[CompanyId]) VALUES(4,3,1)
INSERT INTO [dbo].[UserRoles]([UserId],[RoleId],[CompanyId]) VALUES(5,4,1)
INSERT INTO [dbo].[UserRoles]([UserId],[RoleId],[CompanyId]) VALUES(6,4,1)
INSERT INTO [dbo].[UserRoles]([UserId],[RoleId],[CompanyId]) VALUES(7,4,1)
INSERT INTO [dbo].[UserRoles]([UserId],[RoleId],[CompanyId]) VALUES(8,4,1)

Set IDENTITY_INSERT  [dbo].[Roles] ON
	   
INSERT INTO [dbo].[Roles]([Id],[Name],[Description],[Active],[IsPublic])
VALUES(1, 'Superuser','Responsible for managing application,users, rights and roles, policy and backups,updates',1,0)

INSERT INTO [dbo].[Roles]([Id],[Name],[Description],[Active],[IsPublic])
VALUES(2, 'Operator','Responsible for entering application business data',1,0)

INSERT INTO [dbo].[Roles]([Id],[Name],[Description],[Active],[IsPublic])
VALUES(3, 'Sales Manager','Responsible for entering application business data',1,0)

INSERT INTO [dbo].[Roles]([Id],[Name],[Description],[Active],[IsPublic])
VALUES(4, 'Sales Representative','Responsible for entering application business data',1,0)

INSERT INTO [dbo].[Roles]([Id],[Name],[Description],[Active],[IsPublic])
VALUES(5, 'Supervisor','Responsible for entering application business data',1,0)


Set IDENTITY_INSERT  [dbo].[Roles] OFF
GO


Set IDENTITY_INSERT  [TypeGroups] ON
INSERT INTO [dbo].[TypeGroups](ID,[Name],[Description],[Active]) VALUES(1,'Accesses','These are accesses',1)
INSERT INTO [dbo].[TypeGroups](ID,[Name],[Description],[Active]) VALUES(2,'Data Type','These are data types',1)
INSERT INTO [dbo].[TypeGroups](ID,[Name],[Description],[Active]) VALUES(3,'Status','These are job statuses',1)
INSERT INTO [dbo].[TypeGroups](ID,[Name],[Description],[Active]) VALUES(4,'Document Type','These are document types',1)
INSERT INTO [dbo].[TypeGroups](ID,[Name],[Description],[Active]) VALUES(5,'Job Document Type','These are Job Document Types',1)
INSERT INTO [dbo].[TypeGroups](ID,[Name],[Description],[Active]) VALUES(6,'Gender','These are genders',1)
INSERT INTO [dbo].[TypeGroups](ID,[Name],[Description],[Active]) VALUES(7,'Inspection Vendor','These are Inspection Vendors',1)
INSERT INTO [dbo].[TypeGroups](ID,[Name],[Description],[Active]) VALUES(8,'Maintenance Vendor','These are Maintenance Vendor',1)
INSERT INTO [dbo].[TypeGroups](ID,[Name],[Description],[Active]) VALUES(9,'Material','These are Material types',1)
INSERT INTO [dbo].[TypeGroups](ID,[Name],[Description],[Active]) VALUES(10,'Job Type','These are Job types',1)
Set IDENTITY_INSERT  [TypeGroups] OFF

Set IDENTITY_INSERT  [Types] ON

--Accesses
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (1,'View',null,1,1)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (2,'Edit',null,1,1)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (3,'Update',null,1,1)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (4,'Delete',null,1,1)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (5,'Add',null,1,1)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (6,'Create',null,1,1)

--job statuses
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (7,'Pending',null,1,3)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (8,'Active',null,1,3)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (9,'Completed',null,1,3)


--Data type
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (10,'Equipment',null,1,2)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (11,'Text',null,1,2)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (12,'Date',null,1,2)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (13,'Document collection',null,1,2)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (14,'Checkbox',null,1,2)

--Document types
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (15,'Pre-Job document',null,1,4)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (16,'Post-Job document',null,1,4)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (17,'CheckList document',null,1,4)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (18,'Expenses document',null,1,4)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (19,'Closing document',null,1,4)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (20,'Miscellaneous document',null,1,4)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (28,'Engineering document',null,1,4)

--Job Document Types
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (21,'Pre-Job document',null,1,5)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (22,'Post-Job document',null,1,5)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (23,'CheckList document',null,1,5)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (24,'Expenses document',null,1,5)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (25,'Miscellaneous document',null,1,5)

--Gender
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (26,'Male',null,1,6)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (27,'Female',null,1,6)
--INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (28,'Others',null,1,6)

INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (29,'In Stock',null,1,3)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (30,'Strap Out',null,1,3)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (31,'In Transit',null,1,3)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (32,'Work Order',null,1,3)

--Inspection vendor
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (33,'LEAD',null,1,7)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (34,'Premier Inspection',null,1,7)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (35,'Carls Inspection',null,1,7)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (36,'Southern Tool Inspection',null,1,7)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (37,'Reds Inspection',null,1,7)

--Inspection vendor
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (38,'Maintenance Vendor1',null,1,8)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (39,'Maintenance Vendor2',null,1,8)

--Material
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (40,'Carb',null,1,9)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (41,'Ins',null,1,9)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (42,'Carb ST',null,1,9)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (43,'Ins ST',null,1,9)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (44,'Spec',null,1,9)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (45,'Dia',null,1,9)
--Job Type
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (46,'Offshore',null,1,10)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (47,'Inland',null,1,10)
INSERT INTO [dbo].[Types] (Id,[Name],[Description],[Active],[TypeGroupId]) VALUES (48,'Land',null,1,10)

Set IDENTITY_INSERT  [Types] OFF

GO
