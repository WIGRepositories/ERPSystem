/****** Object:  StoredProcedure [dbo].[spCommType]    Script Date: 08-12-2018 12:07:43 ******/
DROP PROCEDURE [dbo].[spCommType]
GO
/****** Object:  StoredProcedure [dbo].[spCustomer]    Script Date: 08-12-2018 12:07:59 ******/
DROP PROCEDURE [dbo].[spCustomer]
GO
/****** Object:  StoredProcedure [dbo].[spCustomerQuote]    Script Date: 08-12-2018 12:08:17 ******/
DROP PROCEDURE [dbo].[spCustomerQuote]
GO
/****** Object:  StoredProcedure [dbo].[spDocTypes]    Script Date: 08-12-2018 12:08:45 ******/
DROP PROCEDURE [dbo].[spDocTypes]
GO
/****** Object:  StoredProcedure [dbo].[spDocuments]    Script Date: 08-12-2018 12:09:00 ******/
DROP PROCEDURE [dbo].[spDocuments]
GO
/****** Object:  StoredProcedure [dbo].[spItemPricing]    Script Date: 08-12-2018 12:09:26 ******/
DROP PROCEDURE [dbo].[spItemPricing]
GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmation]    Script Date: 08-12-2018 12:09:43 ******/
DROP PROCEDURE [dbo].[spOrderConfirmation]
GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmationDocs]    Script Date: 08-12-2018 12:10:02 ******/
DROP PROCEDURE [dbo].[spOrderConfirmationDocs]
GO
/****** Object:  StoredProcedure [dbo].[spPayment]    Script Date: 08-12-2018 12:10:19 ******/
DROP PROCEDURE [dbo].[spPayment]
GO
/****** Object:  StoredProcedure [dbo].[spPurchaseOrder]    Script Date: 08-12-2018 12:10:54 ******/
DROP PROCEDURE [dbo].[spPurchaseOrder]
GO
/****** Object:  StoredProcedure [dbo].[spQuoteRequest]    Script Date: 08-12-2018 12:11:10 ******/
DROP PROCEDURE [dbo].[spQuoteRequest]
GO
/****** Object:  StoredProcedure [dbo].[spQuoteRequestDocs]    Script Date: 08-12-2018 12:11:31 ******/
DROP PROCEDURE [dbo].[spQuoteRequestDocs]
GO
/****** Object:  StoredProcedure [dbo].[spQuoteResponse]    Script Date: 08-12-2018 12:11:47 ******/
DROP PROCEDURE [dbo].[spQuoteResponse]
GO
/****** Object:  StoredProcedure [dbo].[spRFQ]    Script Date: 08-12-2018 12:13:22 ******/
DROP PROCEDURE [dbo].[spRFQ]
GO
/****** Object:  StoredProcedure [dbo].[spRFQDetails]    Script Date: 08-12-2018 12:13:42 ******/
DROP PROCEDURE [dbo].[spRFQDetails]
GO
/****** Object:  StoredProcedure [dbo].[spRFQDocs]    Script Date: 08-12-2018 12:14:05 ******/
DROP PROCEDURE [dbo].[spRFQDocs]
GO
/****** Object:  StoredProcedure [dbo].[spRFQEstimation]    Script Date: 08-12-2018 12:14:26 ******/
DROP PROCEDURE [dbo].[spRFQEstimation]
GO
/****** Object:  StoredProcedure [dbo].[spRFQStaff]    Script Date: 08-12-2018 12:15:06 ******/
DROP PROCEDURE [dbo].[spRFQStaff]
GO
/****** Object:  StoredProcedure [dbo].[spRole]    Script Date: 08-12-2018 12:15:27 ******/
DROP PROCEDURE [dbo].[spRole]
GO
/****** Object:  StoredProcedure [dbo].[spShippingOrder]    Script Date: 08-12-2018 12:15:49 ******/
DROP PROCEDURE [dbo].[spShippingOrder]
GO
/****** Object:  StoredProcedure [dbo].[spSupplier]    Script Date: 08-12-2018 12:16:19 ******/
DROP PROCEDURE [dbo].[spSupplier]
GO
/****** Object:  StoredProcedure [dbo].[spSupplierInvoice]    Script Date: 08-12-2018 12:16:44 ******/
DROP PROCEDURE [dbo].[spSupplierInvoice]
GO
/****** Object:  StoredProcedure [dbo].[spTransactionMaster]    Script Date: 08-12-2018 12:17:05 ******/
DROP PROCEDURE [dbo].[spTransactionMaster]
GO
/****** Object:  StoredProcedure [dbo].[spUserLogin]    Script Date: 08-12-2018 12:17:29 ******/
DROP PROCEDURE [dbo].[spUserLogin]
GO
/****** Object:  StoredProcedure [dbo].[spUserRoles]    Script Date: 08-12-2018 12:17:48 ******/
DROP PROCEDURE [dbo].[spUserRoles]
GO
/****** Object:  StoredProcedure [dbo].[spUsers]    Script Date: 08-12-2018 12:18:04 ******/
DROP PROCEDURE [dbo].[spUsers]
GO
/****** Object:  StoredProcedure [dbo].[GetRFQPersonnal]    Script Date: 10-12-2018 19:25:02 ******/
DROP PROCEDURE [dbo].[GetRFQPersonnal]
GO
/****** Object:  StoredProcedure [dbo].[GetRFQ]    Script Date: 10-12-2018 19:24:58 ******/
DROP PROCEDURE [dbo].[GetRFQ]
GO


/****** Object:  StoredProcedure [dbo].[spCommType]    Script Date: 08-12-2018 12:07:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spCommType]
(	@Email varchar(50)=null, @Fax varchar(50)=null, @Phone varchar(50)=null)
AS
SELECT * from CommType
BEGIN
	INSERT INTO CommType
           ([Email]
           ,[Fax]
           ,[Phone])
		   VALUES(@Email,@Fax,@Phone)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spCustomer]    Script Date: 08-12-2018 12:07:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spCustomer]
(	@CustomerID int=null, @CustomerName varchar(50)=null, @CustomerCode varchar(50)=null, @CustomerAddress varchar(50)=null, @CustomerContact1 varchar(50)=null, @CustomerContact2 varchar(50)=null, @CustomerEmail varchar(50)=null, @Active int=null)
AS
SELECT * from Customer
BEGIN
	INSERT INTO Customer
           ([CustomerID]
           ,[CustomerName]
           ,[CustomerCode],[CustomerAddress],[CustomerContact1],[CustomerContact2],[CustomerEmail],[Active])
		   VALUES(@CustomerID,@CustomerName,@CustomerCode,@CustomerAddress,@CustomerContact1,@CustomerContact2,@CustomerEmail,@Active)
	 
	END
GO
/****** Object:  StoredProcedure [dbo].[spCustomerQuote]    Script Date: 08-12-2018 12:08:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spCustomerQuote]
(	@CQuoteID int=null, @CustomerID int=null, @RFQID int=null, @QuoteResponseID int=null, @DocID int=null)
AS
SELECT * from CustomerQuote
BEGIN
	INSERT INTO CustomerQuote
           ([CQuoteID]
           ,[CustomerID]
           ,[RFQID],[QuoteResponseID],[DocID])
		   VALUES(@CQuoteID,@CustomerID,@RFQID,@QuoteResponseID,@DocID)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spDocTypes]    Script Date: 08-12-2018 12:08:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[spDocTypes]
(	@RFQ varchar(50)=null, @RFQDetails varchar(50)=null, @Quote varchar(50)=null, @PO varchar(50)=null, @SO varchar(50)=null,@Invoice varchar(MAX),@DeliveryNote varchar(MAX))
AS
SELECT * from DocTypes
BEGIN
	INSERT INTO DocTypes
           ([RFQ]
           ,[RFQDetails]
           ,[Quote],[PO],[SO],[Invoice],[DeliveryNote])
		   VALUES(@RFQ,@RFQDetails,@Quote,@PO,@SO,@Invoice,@DeliveryNote)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spDocuments]    Script Date: 08-12-2018 12:09:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spDocuments]
(	@Type varchar(50)=null, @Extension varchar(50)=null, @Content varchar(50)=null, @Date date=null, @Time time(7)=null,@UploadBy varchar(50),@LastUpdatedOn datetime)
AS
SELECT * from Documents
BEGIN
	INSERT INTO Documents
           ([Type]
           ,[Extension]
           ,[Content],[Date],[Time],[UploadBy],[LastUpdatedOn])
		   VALUES(@Type,@Extension,@Content,@Date,@Time,@UploadBy,@LastUpdatedOn)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spItemPricing]    Script Date: 08-12-2018 12:09:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spItemPricing]
(	@ItemPricingID int=null, @RFQID int=null, @RFQDetailID int=null, @QuoteResponseID int=null, @SupplierUnitPrice money=null,@SupplierTotal money,@UnitPriceMargin money, @TotalMargin money)
AS
SELECT * from ItemPricing
BEGIN
	INSERT INTO ItemPricing
           ([ItemPricingID]
           ,[RFQID]
           ,[RFQDetailID],[QuoteResponseID],[SupplierUnitPrice],[SupplierTotal],[UnitPriceMargin],[TotalMargin])
		   VALUES(@ItemPricingID,@RFQID,@RFQDetailID,@QuoteResponseID,@SupplierUnitPrice,@SupplierTotal,@UnitPriceMargin,@TotalMargin)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmation]    Script Date: 08-12-2018 12:09:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spOrderConfirmation]
(	@OrderConfirmationID int=null, @RFQID int=null, @CustomerID int=null, @ConfirmedOn Datetime=null, @CommType varchar(50)=null,@Active int=null)
AS
SELECT * from OrderConfirmation
BEGIN
	INSERT INTO OrderConfirmation
           ([OrderConfirmationID]
           ,[RFQID],[CustomerID],[ConfirmedOn],[CommType],[Active]
           )
		   VALUES(@OrderConfirmationID,@RFQID,@CustomerID,@ConfirmedOn,@CommType,@Active)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmationDocs]    Script Date: 08-12-2018 12:10:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spOrderConfirmationDocs]
(	@OrderConfirmationDocsID int=null, @OrderConfirmationID int=null, @DocID int=null)
AS
SELECT * from OrderConfirmationDocs
BEGIN
	INSERT INTO OrderConfirmationDocs
           ([OrderConfirmationDocsID]
           ,[OrderConfirmationID],[DocID]
           )
		   VALUES(@OrderConfirmationDocsID,@OrderConfirmationID,@DocID)
	 
	END
GO
/****** Object:  StoredProcedure [dbo].[spPayment]    Script Date: 08-12-2018 12:10:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spPayment]
(	@PaymentID int=null, @InvoiceID int=null, @SupplierID int=null,@Amount money=null,@ModeofPayment varchar(50)=null,@Date date=null,@Time time(7)=null,@ReceiptDoc varchar(MAX)=null,@PaymentVoucher varchar(MAX)=null,@Status varchar(50)=null)
AS
SELECT * from Payment
BEGIN
	INSERT INTO Payment
           ([PaymentID]
           ,[InvoiceID],[SupplierID],[Amount],[ModeofPayment],[Date],[Time],[ReceiptDoc],[PaymentVoucher],[Status]
           )
		   VALUES(@PaymentID,@InvoiceID,@SupplierID,@Amount,@ModeofPayment,@Date,@Time,@ReceiptDoc,@PaymentVoucher,@Status)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spPurchaseOrder]    Script Date: 08-12-2018 12:10:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spPurchaseOrder]
(	@PurchaseOrderID int=null, @RFQID int=null,@RFQDetailID int=null,@SupplierID int=null,@RFQEstimation varchar(50)=null,@Date date=null,@Time time(7)=null,@EstimatedStart datetime=null,@EstimatedEnd datetime=null,@Active int=null)
AS
SELECT * from PurchaseOrder
BEGIN
	INSERT INTO PurchaseOrder
           ([PurchaseOrderID]
           ,[RFQID],[RFQDetailID],[SupplierID],[RFQEstimation],[Date],[Time],[EstimatedStart],[EstimatedEnd],[Active]
           )
		   VALUES(@PurchaseOrderID,@RFQID,@RFQDetailID,@SupplierID,@RFQEstimation,@Date,@Time,@EstimatedStart,@EstimatedEnd,@Active)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spQuoteRequest]    Script Date: 08-12-2018 12:11:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spQuoteRequest]
(	@RFQDetailID int=null, @SentOn varchar(50)=null,@SentTo varchar(50)=null,@IsReplyReceived varchar(50)=null,@ReceivedOn datetime=null,@RFQID int=null,@SupplierID int=null,@UnitPrice money=null,@Total money=null,@CommType varchar=null,@Priority varchar(50)=null,@IsSelected varchar(50)=null,@IsApproved varchar(50)=null,@SentEmailtoCustomer varchar(50)=null,@DocID int=null)
AS
SELECT * from QuoteRequest
BEGIN
	INSERT INTO QuoteRequest
           ([RFQDetailID]
           ,[SentOn],[SentTo],[IsReplyReceived],[ReceivedOn],[RFQID],[SupplierID],[UnitPrice],[Total],[CommType],[Priority],[IsSelected],[IsApproved],[SentEmailtoCustomer],[DocID]
           )
		   VALUES(@RFQDetailID,@SentOn,@SentTo,@IsReplyReceived,@ReceivedOn,@RFQID,@SupplierID,@UnitPrice,@Total,@CommType,@Priority,@IsSelected,@IsApproved,@SentEmailtoCustomer,@DocID)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spQuoteRequestDocs]    Script Date: 08-12-2018 12:11:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spQuoteRequestDocs]
(	@QRDocsID int=null, @DocID int=null,@QRID int=null)
AS
SELECT * from QuoteRequestDocs
BEGIN
	INSERT INTO QuoteRequestDocs
           ([QRDocsID]
           ,[DocID],[QRID]
           )
		   VALUES(@QRDocsID,@DocID,@QRID)
	 
	END
GO
/****** Object:  StoredProcedure [dbo].[spQuoteResponse]    Script Date: 08-12-2018 12:11:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spQuoteResponse]
(	@QuoteResponseID int=null, @RFQDetailID int=null,@ReceivedOn datetime=null,@ReceivedFrom varchar(50)=null,@IsReplyReceived varchar(50)=null,@RFQID int=null,@SupplierID int=null,@UnitPrice money=null,@Total money=null,@CommType varchar=null,@Priority varchar(50)=null,@IsSelected varchar(50)=null,@IsApproved varchar(50)=null,@SentEmailtoCustomer varchar(50)=null,@QRID int=null)
AS
SELECT * from QuoteResponse
BEGIN
	INSERT INTO QuoteResponse
           ([QuoteResponseID]
           ,[RFQDetailID],[ReceivedOn],[ReceivedFrom],[IsReplyReceived],[RFQID],[SupplierID],[UnitPrice],[Total],[CommType],[Priority],[IsSelected],[IsApproved],[SentEmailtoCustomer],[QRID]
           )
		   VALUES(@QuoteResponseID,@RFQDetailID,@ReceivedOn,@ReceivedFrom,@IsReplyReceived,@RFQID,@SupplierID,@UnitPrice,@Total,@CommType,@Priority,@IsSelected,@IsApproved,@SentEmailtoCustomer,@QRID)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spRFQ]    Script Date: 08-12-2018 12:13:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spRFQ]
(	@RFQID int=null, @Date date=null, @Time time(7)=null, @RFQUID int=null, @RFQComType varchar(50)=null,@CustomerName varchar(50),@CustomerEmail varchar(50), @CustomerPhoneno varchar(50),@CustomerFaxno varchar(50))
AS
SELECT * from RFQ
BEGIN
	INSERT INTO RFQ
           ([RFQID]
           ,[Date]
           ,[Time],[RFQUID],[RFQComType],[CustomerName],[CustomerEmail],[CustomerPhoneno],[CustomerFaxno])
		   VALUES(@RFQID,@Date,@Time,@RFQUID,@RFQComType,@CustomerName,@CustomerEmail,@CustomerPhoneno,@CustomerFaxno)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spRFQDetails]    Script Date: 08-12-2018 12:13:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spRFQDetails]
(	@RFQID int=null, @ItemID int=null, @No varchar(50)=null, @Type varchar(50)=null, @Category varchar(50)=null,@SMID int)
AS
SELECT * from RFQDetails
BEGIN
	INSERT INTO RFQDetails
           ([RFQID]
           ,[ItemID]
           ,[No],[Type],[Category],[SMID])
		   VALUES(@RFQID,@ItemID,@No,@Type,@Category,@SMID)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spRFQDocs]    Script Date: 08-12-2018 12:14:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spRFQDocs]
(	@RFQDocsID int=null, @DocID int=null, @RFQID int=null)
AS
SELECT * from RFQDocs
BEGIN
	INSERT INTO RFQDocs
           ([RFQDocsID]
           ,[DocID]
           ,[RFQID])
		   VALUES(@RFQDocsID,@DocID,@RFQID)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spRFQEstimation]    Script Date: 08-12-2018 12:14:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spRFQEstimation]
(	@RFQEstimationID int=null, @RFQID int=null, @RFQDetailID int=null, @DocID int=null, @QuoteResponseID int=null,@ItemPricingID int=null,@CustomerID int=null)
AS
SELECT * from RFQEstimation
BEGIN
	INSERT INTO RFQEstimation
           ([RFQEstimationID]
           ,[RFQID]
           ,[RFQDetailID],[DocID],[QuoteResponseID],[ItemPricingID],[CustomerID])
		   VALUES(@RFQEstimationID,@RFQID,@RFQDetailID,@DocID,@QuoteResponseID,@ItemPricingID,@CustomerID)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spRFQStaff]    Script Date: 08-12-2018 12:15:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spRFQStaff]
(	@RFQStaffID int=null, @RFQID int=null, @RFQDetailID int=null, @UserID int=null, @UserType varchar(50)=null,@Active int=null)
AS
SELECT * from RFQStaff
BEGIN
	INSERT INTO RFQStaff
           ([RFQStaffID]
           ,[RFQID]
           ,[RFQDetailID],[UserID],[UserType],[Active])
		   VALUES(@RFQStaffID,@RFQID,@RFQDetailID,@UserID,@UserType,@Active)
	 
	END


GO

/****** Object:  StoredProcedure [dbo].[spRole]    Script Date: 08-12-2018 12:15:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spRole]
(	@RoleID int=null, @Name varchar(50)=null)
AS
SELECT * from Role
BEGIN
	INSERT INTO Role
           ([RoleID]
           ,[Name]
           )
		   VALUES(@RoleID,@Name)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spShippingOrder]    Script Date: 08-12-2018 12:15:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spShippingOrder]
(	@ShippingOrderID int=null, @SupplierInvoiceID int=null,@FromAddress varchar(50)=null,@ToAddress varchar(50)=null,@Date date=null,@Time time=null,@ArrivedOn datetime=null,@DeliveredOn datetime=null,@RFQID int=null,@Active int=null)
AS
SELECT * from ShippingOrder
BEGIN
	INSERT INTO ShippingOrder
           ([ShippingOrderID]
           ,[SupplierInvoiceID],[FromAddress],[ToAddress],[Date],[Time],[ArrivedOn],[DeliveredOn],[RFQID],[Active]
           )
		   VALUES(@ShippingOrderID,@SupplierInvoiceID,@FromAddress,@ToAddress,@Date,@Time,@ArrivedOn,@DeliveredOn,@RFQID,@Active)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spSupplier]    Script Date: 08-12-2018 12:16:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spSupplier]
(	@SupplierID int=null, @SupplierName varchar(50)=null,@SupplierCode varchar(50)=null,@Address varchar(50)=null,@Contact1 varchar(50)=null,@Contact2 varchar(50)=null,@Email varchar(50)=null,@Active int=null)
AS
SELECT * from Supplier
BEGIN
	INSERT INTO Supplier
           ([SupplierID]
           ,[SupplierName],[SupplierCode],[Address],[Contact1],[Contact2],[Email],[Active]
           )
		   VALUES(@SupplierID,@SupplierName,@SupplierCode,@Address,@Contact1,@Contact2,@Email,@Active)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spSupplierInvoice]    Script Date: 08-12-2018 12:16:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spSupplierInvoice]
(	@SupplierInvoiceID int=null, @RFQID int=null,@RFQDetailID int=null,@SupplierID int=null,@Date date=null,@Time time=null,@CommType varchar(50)=null,@DocID int=null)
AS
SELECT * from SupplierInvoice
BEGIN
	INSERT INTO SupplierInvoice
           ([SupplierInvoiceID]
           ,[RFQID],[RFQDetailID],[SupplierID],[Date],[Time],[CommType],[DocID]
           )
		   VALUES(@SupplierInvoiceID,@RFQID,@RFQDetailID,@SupplierID,@Date,@Time,@CommType,@DocID)
	 
	END
GO
/****** Object:  StoredProcedure [dbo].[spTransactionMaster]    Script Date: 08-12-2018 12:17:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spTransactionMaster]
(@TransactionMasterID int=null,@Amount money=null,@Type varchar(50)=null,@RFQDetail varchar(50)=null,@RFQID int=null,@Active int=null)
AS
SELECT * from TransactionMaster
BEGIN
INSERT INTO TransactionMaster
           ([TransactionMasterID]
           ,[Amount]
           ,[Type]
           ,[RFQDetail]
           ,[RFQID]
           ,[Active])
     VALUES
           (@TransactionMasterID,
           @Amount
           ,@Type
           ,@RFQDetail
           ,@RFQID
           ,@Active)
END


GO
/****** Object:  StoredProcedure [dbo].[spUserLogin]    Script Date: 08-12-2018 12:17:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spUserLogin]
(	@ULID int=null, @UserID int=null, @UserName varchar(50)=null, @UserPassword varchar(50)=null, @Active int=null)
AS
SELECT * from UserLogin
BEGIN
	INSERT INTO UserLogin
           ([ULID]
           ,[UserID],[UserName],[UserPassword],[Active]
           )
		   VALUES(@ULID,@UserID,@UserName,@UserPassword,@Active)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spUserRoles]    Script Date: 08-12-2018 12:17:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spUserRoles]
(	@URID int=null, @UserID int=null, @RoleID int=null)
AS
SELECT * from UserRoles
BEGIN
	INSERT INTO UserRoles
           ([URID]
           ,[UserID],[RoleID]
           )
		   VALUES(@URID,@UserID,@RoleID)
	 
	END


GO
/****** Object:  StoredProcedure [dbo].[spUsers]    Script Date: 08-12-2018 12:18:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[spUsers]
(@FirstName varchar(50)=null, @MiddleName varchar(50)=null, @LastName varchar(50)=null, @Active int=null)
AS
SELECT * from Users
BEGIN
	INSERT INTO Users
           ([FirstName]
           ,[MiddleName],[LastName],[Active]
           )
		   VALUES(@FirstName,@MiddleName,@LastName,@Active)
	 
END
GO
/****** Object:  StoredProcedure [dbo].[GetRFQPersonnal]    Script Date: 10-12-2018 19:25:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetRFQPersonnal]
@Id int=-1
as
begin

SELECT ju.[Id]
      ,ju.[JobId]
      ,[UserId]
      ,ju.[FromDate]
      ,ju.[ToDate]
      ,ju.[CreatedBy]
      ,ju.[UpdatedBy]     
	  ,u.UserName
	  ,r.AssetId
  FROM [dbo].[JobUsers] ju
  left outer join Users u on u.Id = ju.UserId
  left outer join JobResources r on r.Id = ju.JobId
  where ju.JobId = @Id
  end
GO
/****** Object:  StoredProcedure [dbo].[GetRFQ]    Script Date: 10-12-2018 19:24:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetRFQ]
as
begin
SELECT [ID]
      ,[Name]
      ,[JobID]
      ,[WellNo]
      ,[AFE]
      ,[Trucking]
      ,[Dock]
      ,[CustPOC]
      ,[LocationID]
      ,[EstStartDt]
      ,[EstEndDt]
      ,[ProjDesc]
      ,[Bid]
      ,[CustomerID]
      ,[OCSG]
      ,[RIG]
      ,[POCPh]
      ,[JobType]
      ,[ActualEndDt]
      ,[ActualStartDt]
      ,[StatusId]
      ,[Supervisor]
      ,[CoMan]
      ,[PhoneNo]
      ,[RigName]
      ,[OrderBy]
      ,[DeliveryTicket]
      ,[DeliveryDate]
      ,[ShipVia]
      ,[ShipTo]
      ,[Field]
      ,[Lease]
      ,[County]
      ,[State]
      ,[JobTypeId]
  FROM [dbo].[Jobs]

end
GO


