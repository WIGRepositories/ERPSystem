
/****** Object:  StoredProcedure [dbo].[ValidateCredentials]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[ValidateCredentials]
GO
/****** Object:  StoredProcedure [dbo].[spUsers]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spUsers]
GO
/****** Object:  StoredProcedure [dbo].[spUserLogin]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spUserLogin]
GO
/****** Object:  StoredProcedure [dbo].[spTransactionMaster]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spTransactionMaster]
GO
/****** Object:  StoredProcedure [dbo].[spSupplierInvoice]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spSupplierInvoice]
GO
/****** Object:  StoredProcedure [dbo].[spSupplier]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spSupplier]
GO
/****** Object:  StoredProcedure [dbo].[spShippingOrder]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spShippingOrder]
GO
/****** Object:  StoredProcedure [dbo].[spRole]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spRole]
GO
/****** Object:  StoredProcedure [dbo].[spRFQStaff]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spRFQStaff]
GO
/****** Object:  StoredProcedure [dbo].[spRFQEstimation]    Script Date: 16-12-2018 07:53:46 ******/  
DROP PROCEDURE [dbo].[spRFQEstimation]
GO
/****** Object:  StoredProcedure [dbo].[spRFQDocs1]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spRFQDocs1]
GO
/****** Object:  StoredProcedure [dbo].[spRFQDocs]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spRFQDocs]
GO
/****** Object:  StoredProcedure [dbo].[spRFQDetails]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spRFQDetails]
GO
/****** Object:  StoredProcedure [dbo].[spRFQ]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spRFQ]
GO
/****** Object:  StoredProcedure [dbo].[spQuoteResponse1]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spQuoteResponse1]
GO
/****** Object:  StoredProcedure [dbo].[spQuoteResponse]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spQuoteResponse]
GO
/****** Object:  StoredProcedure [dbo].[spQuoteRequestDocs1]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spQuoteRequestDocs1]
GO
/****** Object:  StoredProcedure [dbo].[spQuoteRequestDocs]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spQuoteRequestDocs]
GO
/****** Object:  StoredProcedure [dbo].[spQuoteRequest]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spQuoteRequest]
GO
/****** Object:  StoredProcedure [dbo].[spPurchaseOrder]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spPurchaseOrder]
GO
/****** Object:  StoredProcedure [dbo].[spPayment]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spPayment]
GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmationDocs1]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spOrderConfirmationDocs1]
GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmationDocs]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spOrderConfirmationDocs]
GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmation2]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spOrderConfirmation2]
GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmation1]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spOrderConfirmation1]
GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmation]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spOrderConfirmation]
GO
/****** Object:  StoredProcedure [dbo].[spItemPricing1]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spItemPricing1]
GO
/****** Object:  StoredProcedure [dbo].[spItemPricing]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spItemPricing]
GO
/****** Object:  StoredProcedure [dbo].[spGetPurchaseOrder]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spGetPurchaseOrder]
GO
/****** Object:  StoredProcedure [dbo].[spGetOrderConfirmationDocs]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spGetOrderConfirmationDocs]
GO
/****** Object:  StoredProcedure [dbo].[spDocuments]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spDocuments]
GO
/****** Object:  StoredProcedure [dbo].[spDocTypes]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spDocTypes]
GO
/****** Object:  StoredProcedure [dbo].[spCustomerQuote]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spCustomerQuote]
GO
/****** Object:  StoredProcedure [dbo].[spCommType]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[spCommType]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdTypes]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[InsUpdTypes]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdTypeGroups]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[InsUpdTypeGroups]
GO
/****** Object:  StoredProcedure [dbo].[insupdSupplier]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[insupdSupplier]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelSubCategory]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[InsUpdDelSubCategory]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRFQSuppliers]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[InsUpdDelRFQSuppliers]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRFQResources]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[InsUpdDelRFQResources]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRFQDraftEstimation]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[InsUpdDelRFQDraftEstimation]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRFQDocs]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[InsUpdDelRFQDocs]
GO
/****** Object:  StoredProcedure [dbo].[InsupdDelInventoryItem]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[InsupdDelInventoryItem]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelInventory]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[InsUpdDelInventory]
GO
/****** Object:  StoredProcedure [dbo].[insupdCustomer]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[insupdCustomer]
GO
/****** Object:  StoredProcedure [dbo].[InsEditHistoryDetails]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[InsEditHistoryDetails]
GO
/****** Object:  StoredProcedure [dbo].[InsEditHistory]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[InsEditHistory]
GO
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetUsers]
GO
/****** Object:  StoredProcedure [dbo].[GetTypesByPaging]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetTypesByPaging]
GO
/****** Object:  StoredProcedure [dbo].[GetTypesByGroupId]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetTypesByGroupId]
GO
/****** Object:  StoredProcedure [dbo].[getTypes]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[getTypes]
GO
/****** Object:  StoredProcedure [dbo].[getTypeGroups]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[getTypeGroups]
GO
/****** Object:  StoredProcedure [dbo].[getSupplier]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[getSupplier]
GO
/****** Object:  StoredProcedure [dbo].[GetSubCategories]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetSubCategories]
GO
/****** Object:  StoredProcedure [dbo].[GetRFQwithoutstatus]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetRFQwithoutstatus]
GO
/****** Object:  StoredProcedure [dbo].[GetRFQItems_wip]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetRFQItems_wip]
GO
/****** Object:  StoredProcedure [dbo].[GetRFQDraftEstimation]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetRFQDraftEstimation]
GO
/****** Object:  StoredProcedure [dbo].[GetRFQDocuments]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetRFQDocuments]
GO
/****** Object:  StoredProcedure [dbo].[GetRFQDetails]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetRFQDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetRFQ]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetRFQ]
GO
/****** Object:  StoredProcedure [dbo].[GetItems]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetItems]
GO
/****** Object:  StoredProcedure [dbo].[GetItemModels]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetItemModels]
GO
/****** Object:  StoredProcedure [dbo].[GetItemForRFQ]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetItemForRFQ]
GO
/****** Object:  StoredProcedure [dbo].[GetInventoryItem]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetInventoryItem]
GO
/****** Object:  StoredProcedure [dbo].[GetInventory]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[GetInventory]
GO
/****** Object:  StoredProcedure [dbo].[getEditHistoryDetails]    Script Date: 16-12-2018 07:53:46 ******/
DROP PROCEDURE [dbo].[getEditHistoryDetails]
GO
/****** Object:  StoredProcedure [dbo].[getEditHistory]    Script Date: 16-12-2018 07:53:47 ******/
DROP PROCEDURE [dbo].[getEditHistory]
GO
/****** Object:  StoredProcedure [dbo].[getCustomer]    Script Date: 16-12-2018 07:53:47 ******/
DROP PROCEDURE [dbo].[getCustomer]
GO
/****** Object:  StoredProcedure [dbo].[GetConfigurationData]    Script Date: 16-12-2018 07:53:47 ******/
DROP PROCEDURE [dbo].[GetConfigurationData]
GO
/****** Object:  StoredProcedure [dbo].[RFQitemsAdding]    Script Date: 16-12-2018 17:12:37 ******/
DROP PROCEDURE [dbo].[RFQitemsAdding]
GO

/****** Object:  StoredProcedure [dbo].[InsUpdDelRFQUsers]    Script Date: 16-12-2018 17:13:45 ******/
DROP PROCEDURE [dbo].[InsUpdDelRFQUsers]
GO
/****** Object:  StoredProcedure [dbo].[GetOrderConfirmation]    Script Date: 12/19/2018 10:22:27 AM ******/
DROP PROCEDURE [dbo].[GetOrderConfirmation]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelOrderConfirmation]    Script Date: 12/19/2018 10:23:38 AM ******/
DROP PROCEDURE [dbo].[InsUpdDelOrderConfirmation]
GO

/****** Object:  StoredProcedure [dbo].[GetsupplierPurchaseOrder]    Script Date: 12/19/2018 10:24:47 AM ******/
DROP PROCEDURE [dbo].[GetsupplierPurchaseOrder]
GO

/****** Object:  StoredProcedure [dbo].[GetsupplierPODetails]    Script Date: 12/19/2018 10:25:15 AM ******/
DROP PROCEDURE [dbo].[GetsupplierPODetails]
GO

/****** Object:  StoredProcedure [dbo].[GetInvoice]    Script Date: 12/19/2018 10:25:41 AM ******/
DROP PROCEDURE [dbo].[GetInvoice]
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerPurchaseOrder]    Script Date: 12/19/2018 10:26:05 AM ******/
DROP PROCEDURE [dbo].[GetCustomerPurchaseOrder]
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerPODetails]    Script Date: 12/19/2018 10:26:19 AM ******/
DROP PROCEDURE [dbo].[GetCustomerPODetails]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelCustomerPurchaseOrder]    Script Date: 12/19/2018 10:26:44 AM ******/
DROP PROCEDURE [dbo].[InsUpdDelCustomerPurchaseOrder]
GO

/****** Object:  StoredProcedure [dbo].[InsUpdDelCustomerPODetails]    Script Date: 12/19/2018 10:27:07 AM ******/
DROP PROCEDURE [dbo].[InsUpdDelCustomerPODetails]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelInvoice]    Script Date: 12/19/2018 10:27:28 AM ******/
DROP PROCEDURE [dbo].[InsUpdDelInvoice]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelsupplierPurchaseOrder]    Script Date: 12/19/2018 10:27:55 AM ******/
DROP PROCEDURE [dbo].[InsUpdDelsupplierPurchaseOrder]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelsupplierPODetails]    Script Date: 12/19/2018 10:28:15 AM ******/
DROP PROCEDURE [dbo].[InsUpdDelsupplierPODetails]
GO


/****** Object:  StoredProcedure [dbo].[GetRFQItems_wip2]    Script Date: 16-12-2018 17:14:25 ******/
DROP PROCEDURE [dbo].[GetRFQItems_wip2]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelCustomerEstimation]    Script Date: 18-12-2018 15:40:56 ******/
DROP PROCEDURE [dbo].[InsUpdDelCustomerEstimation]
GO

/****** Object:  StoredProcedure [dbo].[getDeliveryNote]    Script Date: 12/17/2018 6:11:58 PM ******/
DROP PROCEDURE [dbo].[getDeliveryNote]
GO
/****** Object:  StoredProcedure [dbo].[insupdDeliveryNote]     Script Date: 12/17/2018 6:12:47 PM ******/
DROP PROCEDURE [dbo].[insupdDeliveryNote]
GO
/****** Object:  StoredProcedure [dbo].[getInvoiceDetails]    Script Date: 12/17/2018 6:09:32 PM ******/
DROP PROCEDURE [dbo].[getInvoiceDetails]
GO
/****** Object:  StoredProcedure [dbo].[InsupdInvoiceDetails]    Script Date: 12/17/2018 6:10:34 PM ******/
DROP PROCEDURE [dbo].[InsupdInvoiceDetails]
GO
/****** Object:  StoredProcedure [dbo].[getDeliveryNoteDetails]    Script Date: 12/17/2018 6:13:32 PM ******/
DROP PROCEDURE [dbo].[getDeliveryNoteDetails]
GO
/****** Object:  StoredProcedure [dbo].[insupdDeliveryNoteDetails]    Script Date: 12/17/2018 6:14:19 PM ******/
DROP PROCEDURE [dbo].[insupdDeliveryNoteDetails]
GO
/****** Object:  StoredProcedure [dbo].[getRecieptreturn]    Script Date: 12/20/2018 6:07:03 PM ******/
DROP PROCEDURE [dbo].[getRecieptreturn]

/****** Object:  StoredProcedure [dbo].[InsupdRecieptreturn]    Script Date: 12/20/2018 6:07:56 PM ******/
DROP PROCEDURE [dbo].[InsupdRecieptreturn]
GO

GO
/****** Object:  StoredProcedure [dbo].[GetRFQSupplierPO]    Script Date: 20-12-2018 15:42:36 ******/
DROP PROCEDURE [dbo].[GetRFQSupplierPO]
GO
/****** Object:  StoredProcedure [dbo].[spCommType]    Script Date: 12/19/2018 2:23:22 PM ******/
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
(	@OrderConfirmationDocsID int=null, @OrderConfirmationID int=null, @DocID int=null , @flag varchar=null)


---- @flag either as 'U'-->upadate,'I'--->insert,'D'---->Delete
---- flag=='I'
-----Gettypename  forinstance  : customer   --->GetCustomer
-----InsUpdDeltypenamej forinstance :customer ---->InsUpdDelCustomer
AS

BEGIN

    if  @flag='I'
    Begin
	INSERT INTO OrderConfirmationDocs
           ([OrderConfirmationDocsID],[OrderConfirmationID],[DocID])
		   VALUES(@OrderConfirmationDocsID,@OrderConfirmationID,@DocID)

		   SELECT [OrderConfirmationDocsID]
		  ,[OrderConfirmationID]
		  ,[DocID]
		   FROM [dbo].[OrderConfirmationDocs]

	END

	if  @flag='U'
   Begin
	---Update 
	select *from OrderConfirmationDocs
	END
	
	if  @flag='D'
   Begin
  ---- Delete
	 select *from OrderConfirmationDocs
	END
	End
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
(	@PurchaseOrderID int=null, @RFQID int=null,@RFQDetailID int=null,@SupplierID int=null,@RFQEstimation varchar(50)=null,@Date date=null,@Time time(7)=null,@EstimatedStart datetime=null,@EstimatedEnd datetime=null,@Active int=null,@flag varchar=null)

AS

BEGIN

if @flag='I' 

 Begin 
	INSERT INTO PurchaseOrder
           ([PurchaseOrderID]
           ,[RFQID],[RFQDetailID],[SupplierID],[RFQEstimation],[Date],[Time],[EstimatedStart],[EstimatedEnd],[Active]
           )
		   VALUES(@PurchaseOrderID,@RFQID,@RFQDetailID,@SupplierID,@RFQEstimation,@Date,@Time,@EstimatedStart,@EstimatedEnd,@Active)


	   SELECT [PurchaseOrderID]
      ,[RFQID]
      ,[RFQDetailID]
      ,[SupplierID]
      ,[RFQEstimation]
      ,[Date]
      ,[Time]
      ,[EstimatedStart]
      ,[EstimatedEnd]
      ,[Active]
       FROM [dbo].[PurchaseOrder]



	END
	if  @flag='U'
   Begin
	---Update 
	select *from PurchaseOrder
	END
	
	if  @flag='D'
   Begin
  ---- Delete
	 select *from PurchaseOrder
	END
	end 



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
(@flag varchar,@Id int=-1,@Name varchar(50), @Date date=null, @Time time(7)=null, 
@RFQUID int=null, @ComTypeId varchar(50)=null,@CustomerId int=null,@CustomerEmail varchar(50)=null, 
@CustomerPhoneno varchar(50)=null,@CustomerFaxno varchar(50)=null,
@Description varchar(250)=null,@SmId int =null,@changedById int=null,@Status int=null,@RFQId varchar(15)=null)
AS
BEGIN

declare @dt date,@t time(7),@r varchar(50),@jpid varchar(50),@rid int,@edithistoryid int
set @t = GETDATE()
set @dt = GETDATE()
select @rid=Count(*) from RFQ where ID=@Id
select @r = replace(CONVERT(VARCHAR(1), GETDATE(), 114),':','')+ CONVERT(VARCHAR(3),DATEPART(millisecond,GETDATE()))+20

--if @RFQId is not null 
--	 begin
--	 SELECT @jpid = 'RFQ-'+@r
--	 end 


if @flag = 'I'
begin
	INSERT INTO RFQ
           ([RFQID],[Name],[Date],[Time],[RFQUID],[RFQComType],[CustomerId],[CustomerEmail],[CustomerPhoneno],[CustomerFaxno],[SmanagerId],[StatusId],[Description])
		   VALUES(@RFQId,@Name,@dt,@t,@RFQUID,@ComTypeId,@CustomerId,@CustomerEmail,@CustomerPhoneno,@CustomerFaxno,@SmId,@Status,@Description)

		   select @rid = SCOPE_IDENTITY();

		   --exec InsEditHistory 'RFQ Type','Name','RFQ is created',@jpid,@dt,'admin','Insertion',@edithistoryid = @edithistoryid output				              
		   -- exec InsEditHistoryDetails @edithistoryid,null,@jpid,'Insertion','Name',null
end

if @flag='U'
begin
 if @rid>0
 Begin
     Update RFQ set [RFQComType]=@ComTypeId, [CustomerId]=@CustomerId,[SmanagerId]=@SmId ,[StatusId]=@Status,[Description]=@Description where ID=@Id
           select @rid = SCOPE_IDENTITY();
		 --  exec InsEditHistory 'RFQ Type','Name','RFQ is Update',@jpid,@dt,'admin','Upate',@edithistoryid = @edithistoryid output				              
		 --   exec InsEditHistoryDetails @edithistoryid,null,@jpid,'Insertion','Name',null
 End
End

SELECT [ID]
      ,[RFQID]
      ,[Date]
      ,[Time]
      ,[RFQUID]
      ,[RFQComType]
      ,[CustomerId]
      ,[CustomerEmail]
      ,[CustomerPhoneno]
      ,[CustomerFaxno]
      ,[SmanagerId]
      ,[Name]
      ,[StatusId]
      ,[Description]
  FROM [dbo].[RFQ] where id = @rid

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


/****** Object:  StoredProcedure [dbo].[spItemPricing1]    Script Date: 12/10/2018 6:59:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[spItemPricing1]
 as 
 begin 
     select * from  ItemPricing
	 end
GO

/****** Object:  StoredProcedure [dbo].[spQuoteRequestDocs1]    Script Date: 12/10/2018 7:00:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[spQuoteRequestDocs1]
 as 
 begin 
     select * from  QuoteRequestDocs
	 end
GO
/****** Object:  StoredProcedure [dbo].[spQuoteResponse1]    Script Date: 12/10/2018 7:01:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[spQuoteResponse1]
 as 
 begin 
     select * from  QuoteResponse
	 end
GO
/****** Object:  StoredProcedure [dbo].[spRFQDocs1]    Script Date: 12/10/2018 7:02:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[spRFQDocs1]
 as 
 begin 
     select * from  RFQDocs
	 end
GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmation1]    Script Date: 12/10/2018 7:03:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[spOrderConfirmation1]
 as 
 begin 
     select * from OrderConfirmation
	 end
GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmationDocs1]    Script Date: 12/10/2018 7:03:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[spOrderConfirmationDocs1]
 as 
 begin 
     select * from  OrderConfirmationDocs
	 end
GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmation2]    Script Date: 12/10/2018 7:04:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[spOrderConfirmation2]
 as 
 begin 
     select * from  OrderConfirmation
	 end
GO
/****** Object:  StoredProcedure [dbo].[spOrderConfirmationDocs]    Script Date: 12/11/2018 7:11:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[spGetOrderConfirmationDocs]



---- @flag either as 'U'-->upadate,'I'--->insert,'D'---->Delete
---- flag=='I'
-----Gettypename  forinstance  : customer   --->GetCustomer
-----InsUpdDeltypenamej forinstance :customer ---->InsUpdDelCustomer
AS

BEGIN

   select * from OrderConfirmationDocs
	
	END
GO
/****** Object:  StoredProcedure [dbo].[spGetPurchaseOrder]    Script Date: 12/11/2018 7:12:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



create PROCEDURE [dbo].[spGetPurchaseOrder]


AS

BEGIN

select * from PurchaseOrder



	END
GO
/****** Object:  StoredProcedure [dbo].[GetItemForRFQ]    Script Date: 11-12-2018 20:10:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetItemForRFQ]
(@modelId int =-1,@rfqId int)
as
begin
declare @jdd varchar(50),@ss int
--select @ss=StatusId from Jobs where JobId=@jobId

--if(@ss !=32 and @ss !=30)
Begin
SELECT i.[ID]
      ,i.[Name]  
      ,i.Active   
  FROM [dbo].[Items]  i 
  inner join ItemModel am on am.id = i.ItemModelId    
  where ItemModelId = @modelId  
  and i.ID not in (select ItemId from RFQResources JR where statusid <>9)
  order by upper(i.Name) 
end
end


GO
/****** Object:  StoredProcedure [dbo].[GetItemModels]    Script Date: 11-12-2018 20:10:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetItemModels]

as
begin
SELECT A.[ID]
      ,A.[Name]
      ,A.[Description]
      ,A.[ItemTypeId]
	  --,a1.ID	 
   --   ,a1.LocationId
	  --,a1.CurrLocation
	  --,a1.ManufactureId
	  --,a1.JobId  
	  --,a1.DatePurchased
	  --,a1.UnitPrice 
	  --,a1.JobRate  
	  --,a1.Rental  
	  --,a1.AdditionalDayRate
	  --,a1.DayRate 
	  --,a1.PerWeekStbyCharge
	  --,a1.RedressCost
	  --,a1.AdditionalDayRate
	  --,a1.AssetModelId
	  --,a1.DateSold
	  --,a1.LostDamaged
	  --,a1.Price
	  --,a1.CycleCountDate 
	  ,O.Name ItemType     
      ,amh.Id as AssetModelHierId
       ,COUNT(a1.id) AssetCount
  FROM [dbo].[ItemModel] A  
  inner join ObjectType O on A.ItemTypeId = O.ID
  inner join ItemModelHierarchy amh on amh.ItemModelId = A.id
  and amh.ParentId is null
  left outer join Items a1 on ((a1.ItemModelId = A.id))
  group by A.ID,A.Name,A.[Description],A.[ItemTypeId] ,
  --a1.ID
	 -- ,a1.Name
	 -- ,a1.[Description]
  --    ,a1.LocationId
	 -- ,a1.CurrLocation
	 -- ,a1.ManufactureId
	 -- ,a1.JobId  
	 -- ,a1.DatePurchased
	 -- ,a1.UnitPrice 
	 -- ,a1.JobRate  
	 -- ,a1.Rental  
	 -- ,a1.AdditionalDayRate
	 -- ,a1.DayRate 
	 -- ,a1.PerWeekStbyCharge
	 -- ,a1.RedressCost
	 -- ,a1.AdditionalDayRate
	 -- ,a1.AssetModelId
	 -- ,a1.DateSold
	 -- ,a1.LostDamaged
	 -- ,a1.Price
	 -- ,a1.CycleCountDate,
	O.Name,amh.Id
  order by A.Name
end
GO
/****** Object:  StoredProcedure [dbo].[GetRFQDetails]    Script Date: 11-12-2018 20:11:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetRFQDetails](@id int)
as
begin

  SELECT [ID]
      ,[RFQID]
      ,[Date]
      ,[Time]
      ,[RFQUID]
      ,[RFQComType]
      ,[CustomerId]
      ,[CustomerEmail]
      ,[CustomerPhoneno]
      ,[CustomerFaxno]
      ,[SmanagerId]
      ,[Name]
      ,[StatusId]
	  ,[Description]
  FROM [dbo].[RFQ] where ID = @id


if @@ROWCOUNT=1
begin
   
       select rs.[Id],rs.[RFQId],rs.[ItemId],rs.[FromDate],rs.[Sequence],
	   ii.[Id] ItemId_list,ii.[ItemName],ii.[InitialQuantity],ii.[Code],ii.[Description],ii.[CategoryId],ii.[SubCategoryId],ii.[Price],ii.[ExpiryDate]
				from RFQresources rs
				inner join InventoryItem ii on rs.ItemId = ii.Id
				--inner join ItemModel am on am.id = A.ItemModelId		
				--left outer join users cu on cu.id = jr.createdby
				--left outer join users uu on uu.id = jr.updatedby
		 where rs.RFQId = @id


	--- Sales users
		SELECT ru.[Id],ru.[RFQId],ru.[UserId],ru.[Sequence],ru.FromDate,ru.ToDate,url.RoleId,ur.[FirstName]+' '+ur.[LastName] as Username
                          FROM [RFQUsers] ru
						  inner join Users ur on ru.UserId=ur.Id
						   inner Join UserRoles url on ur.Id=url.UserId
						   where ru.RFQId=@id


       ---Job Documents
			SELECT jr.DocID
				   ,rd.RFQID
				  ,[Type]
				  ,[Extension]
				  ,[Content]
				  ,[Date]
				  ,[Time]
				  ,[UploadBy]
				  ,[LastUpdatedOn]
				  ,t.Name DocType
				  --,cu.firstname+' '+cu.lastname createdby, uu.firstname+' '+uu.lastname UpdatedBy
			  FROM [Documents] jr 
			  left outer join types t on t.id = jr.[Type]
			  --left outer join users cu on cu.id = 1
			  inner join  RFQDocs rd on jr.DocID=rd.DocID
					--left outer join users uu on uu.id =1	
					 where rd.RFQID=@id


			

end
else
		RAISERROR('No RFQ exists with the given ID',16,1)
end


----[GetRFQDetails] 1



----[GetRFQDetails] 1

GO

/****** Object:  StoredProcedure [dbo].[InsEditHistory]    Script Date: 11-12-2018 20:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[InsEditHistory]
(@Task varchar(50) =null,@Field varchar(50) =null
           ,@SubItem varchar(50) =null
           ,@Comment varchar(50) =null
           ,@Date datetime
           ,@ChangedBy varchar(50) =null
           ,@ChangedType varchar(50) =null           
           ,@edithistoryid int = -1 OUTPUT)
as
begin


INSERT INTO [dbo].[EditHistory]
           ([Field]
           ,[SubItem]
           ,[Comment]
           ,[Date]
           ,[ChangedBy]
           ,[ChangedType]
           ,[Task])
     VALUES
           (@Field
           ,@SubItem
           ,@Comment
           ,@Date
           ,@ChangedBy
           ,@ChangedType
           ,@Task)

 select @edithistoryid = SCOPE_IDENTITY()

end
GO
/****** Object:  StoredProcedure [dbo].[InsEditHistoryDetails]    Script Date: 11-12-2018 20:12:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsEditHistoryDetails]
(@EditHistoryId  int
         ,@FromValue varchar(50) = null
           ,@ToValue varchar(50)= null
           ,@ChangeType varchar(50)
           ,@Field1 varchar(50) = null
           ,@Field2 varchar(50) = null)
AS
BEGIN
	INSERT INTO [dbo].[EditHistoryDetails]
           ([EditHistoryId]
           ,[FromValue]
           ,[ToValue]
           ,[ChangeType]
           ,[Field1]
           ,[Field2])
     VALUES
           (@EditHistoryId
           ,@FromValue
           ,@ToValue
           ,@ChangeType
           ,@Field1
           ,@Field2)

END


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRFQResources]    Script Date: 11-12-2018 20:13:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[InsUpdDelRFQResources]
(@Id int,@RFQId int,@ItemId int,@CreatedBy int,@UpdatedBy int=null,@FromDate date = null, @ToDate date = null,@Sequence int=null,
@insupdflag varchar(1),@loggedinUserId int)
as
begin

declare @cnt int,@edithistoryid int,@equipment varchar(100),@rootAssetId int 
declare @username varchar(150),@name varchar(20),@jbid int,@status int,@jstatus varchar(50),@oldStatusId varchar(50)

--select @username = UserName from users where Id = @loggedInUserId

--select @rootAssetId = Id from assetdetails where RootAssetID = @ItemId and ParentID is null

if @insupdflag = 'I'
begin

select @cnt = COUNT(*) from dbo.RFQResources where RFQId = @RFQId and ItemId = @ItemId



if @cnt =0
BEGIN

select @equipment = Name from Items where ID = @ItemId

INSERT INTO [dbo].[RFQResources]
           ([RFQId]
           ,[ItemId]
           ,[FromDate]
           ,[ToDate]
           ,[CreatedBy]
           ,[UpdatedBy]
		   ,Sequence)
     VALUES
           (@RFQId
           ,@ItemId
           ,@FromDate
           ,@ToDate
           ,@CreatedBy
           ,@UpdatedBy 
		   --,case when @status <> 30 then 
		   --(select Sequence + 1 as seq from JobResources where JobId = @JobId)
		   --else 1 
		   --end)
		   ,@Sequence
		   )
		   update dbo.Items
		   set RFQId = (select RFQID from RFQ where id = @RFQId) where ID = @ItemId
		   
		   

		   update dbo.Items 
		   set StatusId= (select StatusId from RFQ where id = @RFQId) where ID=@ItemId	 
		     
		   select @name = Name,@jbid = ID,@jstatus = StatusId from RFQ where id = @RFQId 
		   --exec InsEditHistory @JobId,'Insertion', 'Equipment is assigned to Job',@equipment,'Job Equipment',null,@username,@edithistoryid = @edithistoryid output				              
		   --exec InsJobHistoryDetails @edithistoryid,null,@equipment,'Insertion','Name',null	
		   --exec InsAssetEditHistory @rootAssetId,'Insertion','Equipment is assigned to Job',@equipment,'Equipment','Job',@username,@jbid,@name,@edithistoryid output
		   --exec InsAssetEditHistoryDetails @edithistoryid,null,@equipment,'Insertion',null,null

		    --exec InsEditHistory 'RFQ Type','Name','RFQ is created',@jpid,@dt,'admin','Insertion',@edithistoryid = @edithistoryid output				              
		    --exec InsEditHistoryDetails @edithistoryid,null,@jpid,'Insertion','Name',null


  END
   
 end


end




GO

/****** Object:  StoredProcedure [dbo].[GetInventory]    Script Date: 13-12-2018 19:07:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[GetInventory]
As
Begin
SELECT  [Active]
      ,[availableQty]
      ,[category]
      ,[code]
      ,[desc]
      ,[InventoryItemId]
      ,[name] as Name
      ,[PerUnitPrice]
      ,[reorderpoint]
      ,[subcat]
      ,[Id]
  FROM [dbo].[Inventory]
  End
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRFQSuppliers]    Script Date: 13-12-2018 20:25:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[InsUpdDelRFQSuppliers]
@SId int,@RFQID int=null,@ItemId int=null,@flag varchar

as
Begin
  declare @cnt int
   --select  @tint=ID from RFQ where RFQID=@rfqcode

   select @cnt=COUNT(8) from [RFQSuppliers] where (RFQId=@RFQID and RFQItemId=@ItemId) and SupplierId=@SId
 if @flag='I'
 Begin
  if @cnt=0
  Begin
  INSERT INTO [dbo].[RFQSuppliers]
              ([RFQId],[RFQItemId],[SupplierId],[NoOfUnits],[UnitPrice],[Discounts],[Charges],[SubTotal],[IsenquireSent],[EnquirySentOn],[isQuoteRecived],[QuoteRecivedOn])
        VALUES(@RFQID,@ItemId,@SId,null,null,null,null,null,null,null,null,null)
 End
 End
End
GO
/****** Object:  StoredProcedure [dbo].[ValidateCredentials]    Script Date: 13-12-2018 23:24:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ValidateCredentials](@logininfo varchar(50) = null, @passkey varchar(50) = null)
as
begin

select logininfo,firstname, lastname,u.Id,firstname+' '+lastname as uname ,r.Name as RoleName,ur.roleid,u.CompanyId
from userlogins ul 
inner join users u on 
u.id = ul.userid
left outer join UserRoles ur on ur.UserId=u.Id
left outer join roles r on r.id = ur.roleid
where LoginInfo=@logininfo and [PassKey]=@passkey and ul.Active = 1

end

GO

create PROCEDURE [dbo].[GetConfigurationData] 
	@includeStatus int = 0
,@includeCategories int = 0
,@includeLicenseCategories int = 0
,@includeVehicleGroup int = 0
,@includeGender int = 0
,@includeFrequency int = 0
,@includePricingType int = 0
,@includeTransactionType int = 0
,@includeApplicability int = 0
,@includeFeeCategory int = 0
,@includeTransChargeType int = 0
,@includeVehicleType int = 0
,@includeVehicleModel int = 0
,@includeVehicleMake int = 0
,@includeDocumentType int = 0
,@includePaymentType int = 0
,@includeMiscellaneousTypes int = 0
,@includeCardCategories int = 0
,@includeCardTypes int = 0
,@includeVehicleLayoutType int = 0
,@includeLicenseFeatures int = 0
,@includeCardModels int = 0
,@includeCards int = 0
,@includeTransactions int = 0
,@includeCountry int = 0
,@includeActiveCountry int = 0
,@includeFleetOwner int = 0
,@includeUserType int =0
,@includeAuthType int =0
,@includeState int=0
,@includePackageTypeName int =0
,@includePackageNames int=0
,@needCompanyName int=0
,@includeUnitType int=0
,@includeUnit int=0
,@includeApplicabilityType int=0
,@includeOperationName int = 0
,@includeValueType int=0
,@includeApplyOn int=0
AS
BEGIN
	if @includeStatus  = 1
	  SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  1

 
	if @includeCategories  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  2
  
	if @includeLicenseCategories  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  3
  
	if @includeVehicleGroup  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  4

	if @includeGender  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  5

	if @includeFrequency  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  6



	if @includePricingType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  7

	if @includeTransactionType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  8
  
	if @includeApplicability  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  9
  
	if @includeFeeCategory  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  10
  
	if @includeTransChargeType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  11
  
	if @includeVehicleType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  12
  
	if @includeVehicleModel  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  13
  
	if @includeVehicleMake  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  14
  
	if @includeDocumentType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  15
  
	if @includePaymentType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  16
  
	if @includeMiscellaneousTypes  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  17
  
	if @includeCardCategories  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  18
  
	if @includeCardTypes  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  19
  
	if @includeVehicleLayoutType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  20
  
	if @includeLicenseFeatures  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  21
  
	if @includeCardModels  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  22
  
	if @includeCards  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  23
  
	if @includeTransactions  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  24
  
	if @includeCountry  = 1
	SELECT [Id]
      ,[Name]
      ,[Latitude]
      ,[Longitude]
      ,[ISOCode]
      ,[HasOperations]
  FROM [dbo].[Country]

	if @includeActiveCountry  = 1
	SELECT [Id]
      ,[Name]
      ,[Latitude]
      ,[Longitude]
      ,[ISOCode]
      ,[HasOperations]
  FROM [dbo].[Country] where HasOperations = 1
  
	if @includeFleetOwner  = 1
	select u.FirstName+' '+u.LastName as Name,
	c.Name as CompanyName
	,FO.FleetOwnerCode
	,FO.CompanyId
	,FO.Id
	,FO.UserId
	 from FleetOwner FO
	inner join Users u on  u.Id =  FO.UserId
	inner join Company c on c.Id =  FO.companyId
    --where (FO.company[TypeGroupId] =  @cmpId or @cmp[TypeGroupId] = -1)
	order by u.FirstName,u.LastName

if @includeUserType = 1
SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 25	
  
  if @includeAuthType = 1
SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 27
  
  if @includeState  = 1
SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 28
  	
	If @includePackageTypeName=1
  	SELECT [Id]
      ,[PackageId]
      ,[Name]      
  FROM [dbo].[PackagesTypes]
  
  if @includePackageNames =1
  SELECT [Id]
      ,[VehicleGroupId]
      ,[Name]      
  FROM [dbo].[Packages]

  if @needCompanyName = 1
	select Name,Id from Company order by Name
	
	if @includeApplicabilityType = 1
SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 26	
  
  if @includeUnitType = 1
SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 29	
  
   if @includeUnit = 1
SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 30	
  
  if @includeOperationName = 1
  SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 35	
  
   if @includeValueType = 1
  SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 34
  
   if @includeApplyOn = 1
  SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 31

END

GO
/****** Object:  StoredProcedure [dbo].[getEditHistory]    Script Date: 13-12-2018 19:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getEditHistory]
@Task varchar(20)
as
begin
SELECT [Field]
      ,[SubItem]
      ,[Comment]
      ,[Date]
      ,[ChangedBy]
      ,[ChangedType]
      ,[Task]
      ,[Id]
  FROM [dbo].[EditHistory]
  where Task = @Task
end

GO
/****** Object:  StoredProcedure [dbo].[getEditHistoryDetails]    Script Date: 13-12-2018 19:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getEditHistoryDetails]
(@edithistoryid int =-1)
as
begin
SELECT [EditHistoryId]
      ,[FromValue]
      ,[ToValue]
      ,[ChangeType]
      ,[Field1]
      ,[Field2]
      ,e.Task
      ,e.SubItem
  FROM [dbo].[EditHistoryDetails] ed
  inner join EditHistory e on e.Id = ed.EditHistoryId
  WHERE EditHistoryId = @edithistoryid
  
end

GO

GO
/****** Object:  StoredProcedure [dbo].[GetInventoryItem]    Script Date: 13-12-2018 19:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetInventoryItem]
@subCatId int = -1
as 
begin
SELECT I.[Id]
      ,[ItemName],
	  [InitialQuantity]     
      ,[Code]
      ,I.[Description]
      --,t.name as Category
	  ,'Inventory Category' as Category
      --,t.id as categoryid
	  ,1  as SubCategory
	  ,'SubCategory' as SubCategory
	  ,1 as SubCategoryId
      --,s.name as SubCategory
      --,s.id as SubCategoryId
      ,[ReOrderPoint]
      ,[ItemImage] 
      ,[Price]
      ,[ItemModel]
      ,[Features]
      ,[PublishDate]
      ,[ExpiryDate]
  FROM [dbo].[InventoryItem]I
 --inner join types t on t.id = i.categoryid
 --INNER JOIN SubCategory s  ON s.id = I.SubCategoryid
--  where s.Id  = @subCatId or @subCatId = -1
  
end


GO
/****** Object:  StoredProcedure [dbo].[GetSubCategories]    Script Date: 13-12-2018 19:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetSubCategories] 
(@catid int =-1)	
AS
BEGIN
	
	SELECT S.[Id]
      ,S.[Name]
      ,S.[Description]
      ,[CategoryId]
      ,t.NAME CATEGORY
      ,S.[Active]
  FROM [dbo].[SubCategory] S
  INNER JOIN Types T ON T.ID = S.CATEGORYID
  INNER JOIN TypeGroups TG ON TG.Id = T.TypeGroupId 
  where (S.CATEGORYID = @catid or @catid = -1)
   	
END

GO
/****** Object:  StoredProcedure [dbo].[getTypeGroups]    Script Date: 13-12-2018 19:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getTypeGroups]
as
begin
select * from TypeGroups
end

GO
/****** Object:  StoredProcedure [dbo].[getTypes]    Script Date: 13-12-2018 19:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getTypes]

as
begin
SELECT t.Id, t.Name, t.[Description],t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	

END

GO
/****** Object:  StoredProcedure [dbo].[GetTypesByPaging]    Script Date: 13-12-2018 19:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetTypesByPaging] 
(@typegrpid int = -1,
@curpage int=-1,
@maxrows int=-1
)
AS
begin

-- Determine the first record and last record 
DECLARE @FirstRec int, @LastRec int,@totalpages int, @totalrec int

SELECT @FirstRec = (@curpage - 1) * @maxrows
SELECT @LastRec = (@curpage * @maxrows + 1);

WITH TempResult as
(
SELECT ROW_NUMBER()  OVER(ORDER BY t.id asc) as RowNum,t.Id, t.Name, t.[Description],t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	 
	  where (TypeGroupId = @typegrpid or @typegrpid = -1)
)
SELECT top (@LastRec-1) *
FROM TempResult
WHERE RowNum > @FirstRec 
AND RowNum < @LastRec

select @totalrec =  COUNT(*)
from (SELECT ROW_NUMBER()  OVER(ORDER BY t.id asc) as RowNum,t.Id, t.Name, t.[Description]
,t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	 
	  where (TypeGroupId = @typegrpid or @typegrpid = -1)) as temp
	if((@totalrec%@maxrows)=0)
	select @totalpages=(@totalrec/@maxrows);
	else 
	select @totalpages=(@totalrec/@maxrows)+1;
	  
select @totalpages as totalpages, @totalrec as recordcount  

end

GO

/****** Object:  StoredProcedure [dbo].[InsUpdDelInventory]    Script Date: 13-12-2018 19:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsUpdDelInventory](@Active int,@availableQty int,@category varchar(50)
,@code varchar(50),@desc varchar(50),@InventoryId int,@name varchar(50),@PerUnitPrice int,@reorderpoint int,@subcat varchar(50))
as
begin
insert into Inventory values(@Active,@availableQty,@category,@code,@desc,@InventoryId,@name,@PerUnitPrice,@reorderpoint,@subcat)
end

GO
/****** Object:  StoredProcedure [dbo].[InsupdDelInventoryItem]    Script Date: 14-12-2018 19:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsupdDelInventoryItem]
(@Id int,
@ItemName varchar(50),@InitialQuantity decimal(18,0),
@Code varchar(50),
@Description varchar(50) = null,
@CategoryId int,
@SubCategoryId int,
@ReOrderPoint int,@ItemImage varchar(max),@Price decimal(18,0),@ItemModel varchar(50),@Features varchar(50),@PublishDate datetime=null,@ExpiryDate datetime=null ,@rfqid int=null)
as 
begin
declare @dt datetime,@ex datetime,@type int,@rid int 
set @dt = GETDATE()

if (@type ='1')
set @ex = DATEADD(DD,360,GETDATE())
if (@type ='2')
set @ex = DATEADD(DD,180,GETDATE())
if (@type ='3')
set @ex = DATEADD(DD,90,GETDATE())
if (@type ='2')
set @ex = DATEADD(DD,30,GETDATE())
select @ex as expirydate



declare @edithistoryid int
declare @oldItemName varchar(50)
declare @oldCode varchar(50)
declare @oldDescription varchar(50)
declare @oldSubCategoryId int
declare @oldReOrderPoint int

UPDATE [dbo].[InventoryItem]
   SET [ItemName] = @ItemName,
   [ItemImage] = @ItemImage
      ,[Code] = @Code
      ,[Description] = @Description
      ,[CategoryId] = @CategoryId
      ,[SubCategoryId] = @SubCategoryId
      ,[ReOrderPoint] = @ReOrderPoint
 WHERE Id = @Id
     exec InsEditHistory 'InventoryItem','Name', @ItemName,'InventoryItem updation',@dt,'Admin','Modification',@edithistoryid = @edithistoryid output           

       if @ItemName <> @ItemName
     exec InsEditHistoryDetails @edithistoryid,@oldItemName,@ItemName,'Modication','ItemName',null		

       if @Code <> @Code
     exec InsEditHistoryDetails @edithistoryid,@oldCode,@Code,'Modication','Code',null		

       if @Description <> @Description
     exec InsEditHistoryDetails @edithistoryid,@oldDescription,@Description,'Modication','Description',null		
        
        if @SubCategoryId <> @SubCategoryId
     exec InsEditHistoryDetails @edithistoryid,@oldSubCategoryId,@SubCategoryId,'Modication','SubCategoryId',null		

       if @ReOrderPoint <> @ReOrderPoint
     exec InsEditHistoryDetails @edithistoryid,@oldReOrderPoint,@ReOrderPoint,'Modication','ReOrderPoint',null		

       
if @@rowcount = 0 
begin

  insert into InventoryItem(ItemName,Code,[Description],CategoryId,SubCategoryId,ReOrderPoint,ItemImage,Price,ItemModel,Features,PublishDate,ExpiryDate,[InitialQuantity])
  values(@ItemName,@Code,@Description,@CategoryId,@SubCategoryId,@ReOrderPoint,@ItemImage,@Price,@ItemModel,@Features,@dt,@ex,@InitialQuantity)
    select @rid=SCOPE_IDENTITY(); 

   if @rfqid <> null
   Begin
	INSERT INTO [dbo].[RFQResources]
           ([RFQId],[ItemId],[FromDate],[ToDate],[CreatedBy],[UpdatedBy],[Sequence])
     VALUES
           (@rfqid,@rid,null,null,null,null,null)
		   End
            exec InsEditHistory 'InventoryItem','Name', @ItemName,'InventoryItem Creation',@dt,'Admin','Insertion',@edithistoryid = @edithistoryid output
		              
			exec InsEditHistoryDetails @edithistoryid,null,@ItemName,'Insertion','ItemName',null			
			exec InsEditHistoryDetails @edithistoryid,null,@Code,'Insertion','Code',null
			
            exec InsEditHistoryDetails @edithistoryid,null,@Description,'Insertion','Description',null
            exec InsEditHistoryDetails @edithistoryid,null,@CategoryId,'Insertion','CategoryId',null			
			exec InsEditHistoryDetails @edithistoryid,null,@SubCategoryId,'Insertion','SubCategoryId',null
			
            exec InsEditHistoryDetails @edithistoryid,null,@ReOrderPoint,'Insertion','ReOrderPoint',null







end

end


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelSubCategory]    Script Date: 13-12-2018 19:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsUpdDelSubCategory]
(@Id int,@Name varchar(50),@Description varchar(50) = null,@CategoryId int,@Active int)
as
begin

declare @dt datetime
set @dt = GETDATE()

declare @cnt int
declare @edithistoryid int
declare @oldname varchar(50)
declare @olddesc varchar(250)
declare @oldactive int
select @oldname = name, @olddesc = description, @oldactive = active from types where Id = @Id



if @@rowcount = 0 
begin
insert into subcategory(Name,[Description],CategoryId,Active) values(@Name,@Description,@CategoryId,@Active)

 exec InsEditHistory 'subcategory','Name', @Name,'subcategory Creation',@dt,'Admin','Insertion',@edithistoryid = @edithistoryid output
		              
			exec InsEditHistoryDetails @edithistoryid,null,@Name,'Insertion','Name',null			
			exec InsEditHistoryDetails @edithistoryid,null,@Description,'Insertion','Description',null
			exec InsEditHistoryDetails @edithistoryid,null,@Active,'Insertion','Active',null
end

else
begin
update subcategory 
set name=@Name
,Active = @Active
,Description = @Description
,CategoryId = @CategoryId
where Id = @Id

exec InsEditHistory 'subcategory','Name', @Name,'subcategory updation',@dt,'Admin','Modification',@edithistoryid = @edithistoryid output           

if @oldname <> @Name
exec InsEditHistoryDetails @edithistoryid,@oldname,@Name,'Modication','Name',null		

if @olddesc <> @Description
exec InsEditHistoryDetails @edithistoryid,@olddesc,@Description,'Modication','Description',null		

if @oldactive <> @Active
exec InsEditHistoryDetails @edithistoryid,@oldactive,@Active,'Modication','Active',null		

end

end



/****** Object:  StoredProcedure [dbo].[InsupdCreateFleetOwner]    Script Date: 07/18/2016 12:13:31 ******/
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[InsUpdTypeGroups]    Script Date: 13-12-2018 19:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsUpdTypeGroups](@Id int,@Name varchar(50)
,@Description varchar(50) = null,@Active int, @insupdflag varchar(1))
as
begin
declare @dt datetime
set @dt = GETDATE()
declare @cnt int
declare @edithistoryid int
declare @oldname varchar(50)
declare @olddesc varchar(250)
declare @oldactive int

if @insupdflag = 'I'
begin

select @cnt = COUNT(*) from TypeGroups where UPPER(name) = UPPER(@Name)

if @cnt =0

INSERT INTO [dbo].[TypeGroups]
           ([Name]
           ,[Description]
           ,[Active])
     VALUES
           (@Name
           ,@Description
           ,@Active)

exec InsEditHistory 'TypeGroups','Name', @Name,'TypeGroups Creation',@dt,'Admin','Insertion',@edithistoryid = @edithistoryid output
		              
			exec InsEditHistoryDetails @edithistoryid,null,@Name,'Insertion','Name',null			
			exec InsEditHistoryDetails @edithistoryid,null,@Description,'Insertion','Description',null
			exec InsEditHistoryDetails @edithistoryid,null,@Active,'Insertion','Active',null




end
else
if @insupdflag = 'U'
begin

select @cnt = COUNT(*) from TypeGroups where UPPER(name) = UPPER(@Name) 
and Id <> @Id
              
if @cnt =0
           
   select @oldname = name, @olddesc = description, @oldactive = active from TypeGroups where Id = @Id        

UPDATE [dbo].[TypeGroups]
   SET [Name] = @Name
      ,[Description] = @Description
      ,[Active] = @Active
 WHERE Id = @Id
	
	exec InsEditHistory 'TypeGroups','Name', @Name,'Type updation',@dt,'Admin','Modification',@edithistoryid = @edithistoryid output           

if @oldname <> @Name
exec InsEditHistoryDetails @edithistoryid,@oldname,@Name,'Modication','Name',null		

if @olddesc <> @Description
exec InsEditHistoryDetails @edithistoryid,@olddesc,@Description,'Modication','Description',null		

if @oldactive <> @Active
exec InsEditHistoryDetails @edithistoryid,@oldactive,@Active,'Modication','Active',null		


              
end
if @insupdflag = 'D'
begin
DELETE FROM [dbo].[TypeGroups]
      WHERE Id = @Id
end
end


GO
/****** Object:  StoredProcedure [dbo].[InsUpdTypes]    Script Date: 14-12-2018 19:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsUpdTypes](@Id int,@Name varchar(50),@Description varchar(50) = null,@TypeGroupId varchar(50),@Active varchar(30),@insupdflag varchar(1))
as
begin

declare @dt datetime
set @dt = GETDATE()

declare @cnt int
declare @edithistoryid int
declare @oldname varchar(50)
declare @olddesc varchar(250)
declare @oldactive int

if @insupdflag = 'I'
begin

select @cnt = COUNT(*) from Types where UPPER(name) = UPPER(@Name)

if @cnt =0
INSERT INTO [dbo].[Types]
           ([Name]
           ,[Description]
           ,[TypeGroupId] 
           ,[Active])
     VALUES
           (@Name
           ,@Description
           ,@TypeGroupId 
           ,@Active)
           
           
           exec InsEditHistory 'Types','Name', @Name,'Type Creation',@dt,'Admin','Insertion',@edithistoryid = @edithistoryid output
		              
			exec InsEditHistoryDetails @edithistoryid,null,@Name,'Insertion','Name',null			
			exec InsEditHistoryDetails @edithistoryid,null,@Description,'Insertion','Description',null
			exec InsEditHistoryDetails @edithistoryid,null,@Active,'Insertion','Active',null


           
           end
else
if @insupdflag = 'U'
begin

select @cnt = COUNT(*) from Types where UPPER(name) = UPPER(@Name) 
and Id <> @Id

if @cnt =0

select @oldname = name, @olddesc = description, @oldactive = active from types where Id = @Id


update types 
set 
[Name]=@Name
,[Active] = @Active
,[Description] = @Description

where Id = @Id

 exec InsEditHistory 'Types','Name', @Name,'Type updation',@dt,'Admin','Modification',@edithistoryid = @edithistoryid output           

if @oldname <> @Name
exec InsEditHistoryDetails @edithistoryid,@oldname,@Name,'Modication','Name',null		

if @olddesc <> @Description
exec InsEditHistoryDetails @edithistoryid,@olddesc,@Description,'Modication','Description',null		

if @oldactive <> @Active
exec InsEditHistoryDetails @edithistoryid,@oldactive,@Active,'Modication','Active',null		

end
if @insupdflag = 'D'
begin
DELETE FROM [dbo].[Types]
      WHERE Id = @Id
end
end

GO
/****** Object:  StoredProcedure [dbo].[getCustomer]    Script Date: 12/17/2018 1:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[getCustomer]
as
begin


SELECT [Id]
      ,[Name]
      ,[CustomerCode]
      ,[shippingaddress]
	  ,[billingaddress]
      ,[ContactNo]
      ,[ContactNo1]
      ,[Email]
      ,[Active]
  FROM [dbo].[Customer]


	  end

GO
/****** Object:  StoredProcedure [dbo].[getSupplier]    Script Date: 14-12-2018 19:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getSupplier]
as
begin


SELECT [Id]
      ,[Name]
      ,[SupplierCode]
      ,[shippingaddress]
	  ,[billingaddress]
      ,[ContactNo]
      ,[ContactNo1]
      ,[Email]
      ,[Active]
  FROM [dbo].[Suppliers]


	  end

GO
/****** Object:  StoredProcedure [dbo].[insupdCustomer]    Script Date: 14-12-2018 19:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insupdCustomer]
(@name varchar(50),@CustomerCode varchar(50)=null,@shippingaddress varchar(250)=null,@billingaddress varchar(250)=null,@ContactNo varchar(50)=null,@ContactNo1 varchar(50)=null,@Email varchar(250)=null,@Active int,@flag varchar=null)
as 
begin
   

INSERT INTO [dbo].[Customers]
           ([Name]
           ,[CustomerCode]
           ,[shippingaddress]
		   ,[billingaddress]
           ,[ContactNo]
           ,[ContactNo1]
           ,[Email]
           ,[Active])
     VALUES
          (@name,@CustomerCode,@shippingaddress,@shippingaddress,@ContactNo,@ContactNo1,@Email,@Active)



	end


/****** Object:  StoredProcedure [dbo].[insupdSupplier]    Script Date: 14-12-2018 19:14:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insupdSupplier]
(@name varchar(50),@SupplierCode varchar(50)=null,@shippingaddress varchar(50),@billingaddress varchar(50),@ContactNo varchar(50),@ContactNo1 varchar(50),@Email varchar(50),@Active int,@flag varchar)
as 
begin

INSERT INTO [dbo].[Suppliers]
           ([Name]
           ,[SupplierCode]
           ,[shippingaddress]
		   ,[billingaddress]
           ,[ContactNo]
           ,[ContactNo1]
           ,[Email]
           ,[Active])
     VALUES
           (@name,@SupplierCode,@shippingaddress,@billingaddress,@ContactNo,@ContactNo1,@Email,@Active)

	end

GO

/****** Object:  StoredProcedure [dbo].[GetRFQ]    Script Date: 14-12-2018 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetRFQ]
@statusId int=null,@custId int=null
as
begin


SELECT r.[ID]
      ,[RFQID]
      ,[Date]
      ,[Time]
      ,[RFQUID]
      ,[RFQComType]
      ,r.[CustomerId]
      ,r.[CustomerEmail]
      ,[CustomerPhoneno]
      ,[CustomerFaxno]
      ,[SmanagerId]
      ,r.[Name]
	  ,cust.Name
      ,[StatusId]
  FROM [dbo].[RFQ] r

  --inner join Types t on t.ID = r.StatusId
	left outer join Customer cust on cust.ID = r.CustomerID	
	where ((StatusId=@statusId or @statusId=-1)
	and (r.CustomerID = @custId  or @custId  = -1))
    order by r.Name


end
/****** Object:  StoredProcedure [dbo].[InsUpdDelRFQDraftEstimation]    Script Date: 14-12-2018 18:59:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[InsUpdDelRFQDraftEstimation]
@rfqid int=null,@ItemId int=null,@flag varchar,@unit int=null,@unitprice int =null,
@subtotal int=null,@supid int=null
As
Begin
declare @cnt int
    select @cnt=COUNT(*) from RFQDraftEstimation where (RFQId=@rfqid and RFQSupplierId=@supid) and RFQItemId=@ItemId

if @flag='I'
Begin
if @cnt=0
Begin
INSERT INTO [dbo].[RFQDraftEstimation]
           ([RFQId],[RFQItemId],[RFQSupplierId],[NoOfUnits],[DealerUnitPrice],[DealerDiscount],[DealerCharges],[DealerSubTotal],[DealerMargin],[Subtotal],[IsApproved])
     VALUES(@rfqid,@ItemId,@supid,@unit,@unitprice,null,null,null,null,@subtotal,null)

End
else
  if @cnt=1
  Begin
  Update [RFQDraftEstimation] set [NoOfUnits]=@unit,[DealerUnitPrice]=@unitprice,[Subtotal]=@subtotal where (RFQId=@rfqid and RFQSupplierId=@supid) and RFQItemId=@ItemId
  End
End
End
   
   
   
   
GO
/****** Object:  StoredProcedure [dbo].[GetRFQItems_wip]    Script Date: 14-12-2018 19:05:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetRFQItems_wip]
	@modelId int = -1, @rfqId int =-1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
  with cte as
(SELECT J.[ID],J.RFQID
      ,convert(varchar(100),J.[Name]) Name
      ,null ParentId        
      ,0 isDoc
     --,convert(varchar(50),'RFQ') eType
     --,-1 as eTypeId
        ,GETDATE() fromdate
         ,GETDATE() todate               
      ,J.CustomerID custId
      ,(select c.Name from Customer c where c.Id = j.CustomerID) Client
      ,  CAST(J.ID AS VARCHAR(100)) AS RowID
      ,-1 ItemId
      ,0 [LEVEL]
  FROM [dbo].[RFQ] J
  --inner join Location l on (l.ID = LocationID or  @locationId = -1)
  --inner join Customer c on c.Id = J.CustomerID
   where (@modelId = J.StatusId or @modelId = -1) and (@rfqId = J.ID or @rfqId = -1)
union all
SELECT 100000+jd.[Id],j.RFQID
	  ,t.Name
      ,jd.[RFQId] ParentId      
      ,1 isDoc
      --,am.name eType
      --,am.id eTypeid
      ,CONVERT(DATETIME,jd.fromdate)
      ,CONVERT(DATETIME,jd.todate)   
       ,-1 custId
       ,null Customer       
      ,CAST(RowID + '.' + CAST(10000+jd.[Id] AS VARCHAR(100)) AS VARCHAR(100)) 
      ,jd.ItemId 
      ,[LEVEL]+1   
  FROM [dbo].[RFQResources] jd
  inner join Items t on jd.ItemId = t.ID
  --inner join ItemModel am on (am.id = t.ItemModelId  and (@ItemModelId = -1 or am.id = @ItemModelId))
  inner join RFQ j on j.ID = jd.RFQID
  JOIN cte g2 ON jd.RFQId = g2.ID and [LEVEL] < 1 

  union all
SELECT 10000+jd.[Id]+1,j.RFQID
	  ,u.firstName
      ,100000+rr.[Id] ParentId      
      ,1 isDoc
      --,am.name eType
      --,am.id eTypeid
      ,null--CONVERT(DATETIME,jd.fromdate)
      ,null--CONVERT(DATETIME,jd.todate)   
       ,-1 custId
       ,null Customer       
      ,CAST(RowID + '.' + CAST(10000+jd.[Id]+1 AS VARCHAR(100)) AS VARCHAR(100)) 
      ,jd.rfqItemId 
      ,[LEVEL]+2   
  FROM [dbo].RFQSuppliers jd
  inner join Items t on jd.rfqItemId = t.ID
  inner join [RFQResources] rr on rr.ItemId = t.ID and rr.rfqid = jd.rfqid
  inner join users u on u.id = jd.[SupplierId]
  --inner join ItemModel am on (am.id = t.ItemModelId  and (@ItemModelId = -1 or am.id = @ItemModelId))
  inner join RFQ j on j.ID = jd.RFQID
  JOIN cte g2 ON jd.RFQId = g2.ID and [LEVEL] < 1 

  )
  select * from cte order by Rowid 
  
END

GO
/****** Object:  StoredProcedure [dbo].[GetTypesByGroupId]    Script Date: 14-12-2018 19:07:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[GetTypesByGroupId]
@typegrpid int = -1
AS
BEGIN
	

	SELECT t.Id, t.Name, t.[Description],t.Active, tg.name as TypeGroup, TypeGroupId
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	 
	  where (TypeGroupId = @typegrpid or @typegrpid = -1)
	  order by TypeGroupId,UPPER(t.name)


END

GO
/****** Object:  StoredProcedure [dbo].[GetItems]    Script Date: 14-12-2018 19:09:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[GetItems]
As
Begin

SELECT  [ID]
      ,[Name]
      ,[Description]
      ,[ItemTypeId]
      ,[ParentID]
      ,[RootAssetID]
      ,[Path]
      ,[Active]
      ,[LocationId]
      ,[ItemModelId]
      ,[CurrLocation]
      ,[ManufactureId]
      ,[RFQId]
      ,[DatePurchased]
      ,[UnitPrice]
      ,[RFQRate]
      ,[Rental]
      ,[AdditionalDayRate]
      ,[DayRate]
      ,[PerWeekStbyCharge]
      ,[RedressCost]
      ,[DateSold]
      ,[LostDamaged]
      ,[Price]
      ,[CycleCountDate]
      ,[StatusId]
      ,[Locked]
      ,[SerialNumber]
      ,[CreatedOn]
      ,[UpdatedOn]
      ,[CreatedId]
      ,[UpdatedId]
      ,[Condition]
      ,[Material]
      ,[PurchaseCost]
      ,[Customer]
      ,[LostLIHDamaged]
      ,[LocationDate]
      ,[Notes]
  FROM [dbo].[Items]
  End
GO



/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 15-12-2018 16:09:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[GetUsers]
(@cmpId int = -1)
AS
BEGIN

SELECT U.[Id]
       ,U.FirstName+' '+u.LastName as Username
      ,U.[FirstName]
      ,U.[LastName]      
      ,U.[EmpNo]
      ,U.[EmailId]
      ,U.[Address]
      ,U.[ContactNo1]    
      ,U.[Active]
      ,U.[MiddleName]
      ,mgr.Firstname + ' ' +mgr.LastName as mgrName
      ,mgr.Id as ManagerId
      ,ul.logininfo as DUserName
      ,ul.passkey as [DPassword]            
      --,c.name as [Company]
      ,Ur.[RoleId]
      ,U.[CompanyId]      
      ,U.[GenderId]     
      ,U.[CountryId]
      ,U.[StateId]
      ,U.[ZipCode]      
      ,U.[ContactNo2]      
      ,U.[AltAddress]
      ,U.[photo]
      ,R.Name RoleName
  FROM [dbo].[Users] U
  left outer join userroles ur on ur.userid = u.id
 -- inner join company c on (U.companyid = c.id)
  left outer join Users mgr on mgr.id = U.managerid
  left outer join dbo.userlogins ul on ul.userid = U.id  
  left outer join Roles r on r.Id = Ur.RoleId     
  --where (c.id = @cmpId or   @cmpId = -1)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRFQDocs]    Script Date: 15-12-2018 16:10:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[InsUpdDelRFQDocs]
@Id int=-1,@rfqid int=null,@doctype int=null,@DocName varchar(100)=null           
           ,@DocContent varchar(max)=null
           ,@ExpiryDate datetime = null
           ,@insupdflag varchar= null
           ,@loggedinUserId int=null
As
Begin

 declare @rid int
if @insupdflag='I' 
Begin
INSERT INTO [dbo].[Documents]
           ([Type],[Extension],[Content],[Date],[Time],[UploadBy],[LastUpdatedOn])
     VALUES(@doctype,@DocName,@DocContent,Convert(date,GETDATE()),Convert(time,GETDATE()),null,GETDATE())

	     select @rid = SCOPE_IDENTITY();
INSERT INTO [dbo].[RFQDocs]
           ([DocID],[RFQID])
     VALUES(@rid,@rfqid)
End
End
--delete from Documents
--delete from RFQDocs
--delete from Documents
--delete from RFQDocs
GO
/****** Object:  StoredProcedure [dbo].[GetRFQwithoutstatus]    Script Date: 15-12-2018 16:11:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create procedure [dbo].[GetRFQwithoutstatus]
@statusId int=null,@custId int=null
as
begin


SELECT r.[ID]
      ,[RFQID]
      ,[Date]
      ,[Time]
      ,[RFQUID]
      ,[RFQComType]
      ,r.[CustomerId]
      ,r.[CustomerEmail]
      ,[CustomerPhoneno]
      ,[CustomerFaxno]
      ,[SmanagerId]
      ,r.[Name]
	  ,cust.Name
      ,[StatusId]
  FROM [dbo].[RFQ] r

  --inner join Types t on t.ID = r.StatusId
	left outer join Customer cust on cust.ID = r.CustomerID	
    order by r.Name


end
GO
/****** Object:  StoredProcedure [dbo].[GetRFQDocuments]    Script Date: 15-12-2018 16:12:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[GetRFQDocuments]
@rfqid int =-1
As
Begin
SELECT jr.DocID
       ,rd.RFQID
      ,[Type]
      ,[Extension]
      ,[Content]
      ,[Date]
      ,[Time]
      ,[UploadBy]
      ,[LastUpdatedOn]
      ,t.Name DocType
      ,cu.firstname+' '+cu.lastname createdby, uu.firstname+' '+uu.lastname UpdatedBy
  FROM [Documents] jr 
  left outer join types t on t.id = jr.[Type]
  left outer join users cu on cu.id = 1
  inner join  RFQDocs rd on jr.DocID=rd.DocID
		left outer join users uu on uu.id =1	
		 where (rd.RFQID=@rfqid	or rd.RFQID=-1) 
End
GO

/****** Object:  StoredProcedure [dbo].[GetRFQDraftEstimation]    Script Date: 15-12-2018 16:12:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetRFQDraftEstimation]
	@modelId int = -1, @rfqId int =-1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
  with cte as
(SELECT J.[ID],J.RFQID
      ,convert(varchar(100),J.[Name]) Name
      ,null ParentId        
      ,0 isDoc                  
      ,J.CustomerID custId
      ,(select c.Name from Customer c where c.Id = j.CustomerID) Client
      ,  CAST(J.ID AS VARCHAR(100)) AS RowID
      ,-1 ItemId
      ,0 [LEVEL]	 
	,convert(varchar(250),'') Email
	,-1 draftId
	,j.ID RFQAUTOID
  FROM [dbo].[RFQ] J
  inner join [RFQDraftEstimation] re on j.ID=re.[RFQId]
  --inner join Location l on (l.ID = LocationID or  @locationId = -1)
  --inner join Customer c on c.Id = J.CustomerID
   where (@modelId = J.StatusId or @modelId = -1) and (@rfqId = J.ID or @rfqId = -1)
union all
SELECT 100000+jd.[Id],j.RFQID
	 ,convert(varchar(100),t.ItemName) Name  
      ,jd.[RFQId] ParentId      
      ,1 isDoc     
       ,-1 custId
       ,null Customer       
      ,CAST(RowID + '.' + CAST(10000+jd.[Id] AS VARCHAR(100)) AS VARCHAR(100)) 
      ,jd.ItemId 
      ,[LEVEL]+1  
     ,convert(varchar(250),'') Email
	 ,0 draftId
	 ,null RFQAUTOID
  FROM [dbo].[RFQResources] jd
  inner join InventoryItem t on jd.ItemId = t.Id
   inner join [RFQDraftEstimation] re on jd.RFQID=re.[RFQId]
  --inner join ItemModel am on (am.id = t.ItemModelId  and (@ItemModelId = -1 or am.id = @ItemModelId))
  inner join RFQ j on j.ID = jd.RFQID
  JOIN cte g2 ON jd.RFQId = g2.ID and [LEVEL] < 1 

  union all
SELECT 10000+jd.[Id]+1,j.RFQID
	  ,u.Name
      ,100000+rr.[Id] ParentId      
      ,2 isDoc      
        ,u.Id custId
       ,null Customer       
      ,CAST(RowID + '.' + CAST(10000+jd.[Id]+1 AS VARCHAR(100)) AS VARCHAR(100)) 
      ,jd.rfqItemId 
      ,[LEVEL]+2   	
	 ,convert(varchar(250),u.Email) Email
	 ,re.Id draftId
	 ,rr.RFQId RFQAUTOID
  FROM [dbo].RFQSuppliers jd
  inner join InventoryItem t on jd.rfqItemId = t.Id
  inner join [RFQResources] rr on rr.ItemId = t.Id and rr.rfqid = jd.rfqid  
   inner join Suppliers u on u.id = jd.[SupplierId]
   inner join [RFQDraftEstimation] re on jd.RFQID=re.[RFQId] and re.RFQSupplierId=u.Id and re.RFQItemId = t.id
  --inner join ItemModel am on (am.id = t.ItemModelId  and (@ItemModelId = -1 or am.id = @ItemModelId))
  inner join RFQ j on j.ID = jd.RFQID
  JOIN cte g2 ON jd.RFQId = g2.ID and [LEVEL] < 1 

  )
  select distinct cte.ID,cte.RFQID,Name,ParentId,isDoc,custId,Client,RowID,ItemId,[LEVEL],Email,draftId
  ,rd.DealerUnitPrice,rd.DealerDiscount,rd.DealerCharges,rd.DealerSubTotal,rd.NoOfUnits,RFQAUTOID
  from cte 
  left outer join RFQDraftEstimation rd on rd.id = cte.draftId
  order by Rowid 
END
GO
/****** Object:  StoredProcedure [dbo].[RFQitemsAdding]    Script Date: 16-12-2018 17:12:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[RFQitemsAdding]
(@Id int,
@ItemName varchar(50),@InitialQuantity decimal(18,0),
@Code varchar(50),
@Description varchar(50) = null,
@CategoryId int,
@SubCategoryId int,
@ReOrderPoint int,@ItemImage varchar(max),@Price decimal(18,0),@ItemModel varchar(50),@Features varchar(50),@PublishDate datetime=null,@ExpiryDate datetime=null ,@rfqid int=null)
as 
begin
declare @dt datetime,@ex datetime,@type int,@rid int 
set @dt = GETDATE()

if (@type ='1')
set @ex = DATEADD(DD,360,GETDATE())
if (@type ='2')
set @ex = DATEADD(DD,180,GETDATE())
if (@type ='3')
set @ex = DATEADD(DD,90,GETDATE())
if (@type ='2')
set @ex = DATEADD(DD,30,GETDATE())
select @ex as expirydate




       

  insert into InventoryItem(ItemName,Code,[Description],CategoryId,SubCategoryId,ReOrderPoint,ItemImage,Price,ItemModel,Features,PublishDate,ExpiryDate,[InitialQuantity])
  values(@ItemName,@Code,@Description,@CategoryId,@SubCategoryId,@ReOrderPoint,@ItemImage,@Price,@ItemModel,@Features,@dt,@ex,@InitialQuantity)
    select @rid=SCOPE_IDENTITY(); 

  
	INSERT INTO [dbo].[RFQResources]
           ([RFQId],[ItemId],[FromDate],[ToDate],[CreatedBy],[UpdatedBy],[Sequence])
     VALUES
           (@rfqid,@rid,null,null,null,null,null)
		 
   --         exec InsEditHistory 'InventoryItem','Name', @ItemName,'InventoryItem Creation',@dt,'Admin','Insertion',@edithistoryid = @edithistoryid output
		              
			--exec InsEditHistoryDetails @edithistoryid,null,@ItemName,'Insertion','ItemName',null			
			--exec InsEditHistoryDetails @edithistoryid,null,@Code,'Insertion','Code',null
			
   --         exec InsEditHistoryDetails @edithistoryid,null,@Description,'Insertion','Description',null
   --         exec InsEditHistoryDetails @edithistoryid,null,@CategoryId,'Insertion','CategoryId',null			
			--exec InsEditHistoryDetails @edithistoryid,null,@SubCategoryId,'Insertion','SubCategoryId',null
			
   --         exec InsEditHistoryDetails @edithistoryid,null,@ReOrderPoint,'Insertion','ReOrderPoint',null
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRFQUsers]    Script Date: 16-12-2018 17:13:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[InsUpdDelRFQUsers]
@Id int=-1,@RFQId int=null,@UserId int=null,@CreatedBy int=null, @UpdatedBy int=null, 
@FromDate datetime=null,@ToDate datetime=null, @Sequence int=null ,@insupdflag varchar
As
Begin

if @insupdflag='I'
Begin
INSERT INTO [RFQUsers]([RFQId],[UserId],[FromDate],[ToDate],[CreatedBy],[UpdatedBy],[Sequence])
                VALUES(@RFQId,@UserId,@FromDate,@ToDate,@CreatedBy,@UpdatedBy,@Sequence)
End
End



GO
/****** Object:  StoredProcedure [dbo].[GetRFQItems_wip2]    Script Date: 16-12-2018 17:14:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetRFQItems_wip2]
	@modelId int = -1, @rfqId int =-1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
  with cte as
(SELECT J.[ID],J.RFQID
      ,convert(varchar(100),J.[Name]) Name
      ,null ParentId        
      ,0 isDoc
     --,convert(varchar(50),'RFQ') eType
     --,-1 as eTypeId
        ,GETDATE() fromdate
         ,GETDATE() todate               
      ,J.CustomerID custId
      ,(select c.Name from Customer c where c.Id = j.CustomerID) Client
      , CAST(J.ID AS VARCHAR(100)) AS RowID
	 
      ,-1 ItemId
      ,0 [LEVEL]
	  ,j.ID RFQid2
	 , convert(varchar(250),'') Email
	 ,convert(varchar(100),'') InitialQuantity
  FROM [dbo].[RFQ] J
  --inner join Location l on (l.ID = LocationID or  @locationId = -1)
  --inner join Customer c on c.Id = J.CustomerID
   where (@modelId = J.StatusId or @modelId = -1) and (@rfqId = J.ID or @rfqId = -1)
union all
SELECT 100000+jd.[Id],j.RFQID
	  ,convert(varchar(100),t.ItemName) Name  
      ,jd.[RFQId] ParentId      
      ,1 isDoc
      --,am.name eType
      --,am.id eTypeid
      ,CONVERT(DATETIME,jd.fromdate)
      ,CONVERT(DATETIME,jd.todate)   
       ,-1 custId
       ,null Customer       
      ,CAST(RowID + '.' + CAST(10000+jd.[Id] AS VARCHAR(100)) AS VARCHAR(100)) 
      ,jd.ItemId 
      ,[LEVEL]+1
	  ,jd.RFQId RFQid2
	, convert(varchar(250),'') Email
	 ,convert(varchar(100),t.InitialQuantity) InitialQuantity
  FROM [dbo].[RFQResources] jd
  inner join InventoryItem t on jd.ItemId = t.Id
  --inner join ItemModel am on (am.id = t.ItemModelId  and (@ItemModelId = -1 or am.id = @ItemModelId))
  inner join RFQ j on j.ID = jd.RFQID
  JOIN cte g2 ON jd.RFQId = g2.ID and [LEVEL] < 1 

  union all
SELECT 10000+jd.[Id]+1,j.RFQID
	  ,u.Name
      ,100000+rr.[Id] ParentId      
      ,2 isDoc
      --,am.name eType
      --,am.id eTypeid
      ,null--CONVERT(DATETIME,jd.fromdate)
      ,null--CONVERT(DATETIME,jd.todate)   
       ,u.Id custId
       ,null Customer       
      ,CAST(RowID + '.' + CAST(10000+jd.[Id]+1 AS VARCHAR(100)) AS VARCHAR(100)) 
      ,jd.rfqItemId 
      ,[LEVEL]+2 
	  ,rr.RFQId RFQid2
	  ,u.Email
	  ,convert(varchar(100),'') InitialQuantity
  FROM [dbo].RFQSuppliers jd
  inner join InventoryItem t on jd.rfqItemId = t.Id
  inner join [RFQResources] rr on rr.ItemId = t.Id and rr.rfqid = jd.rfqid
  inner join Suppliers u on u.id = jd.[SupplierId]
  --inner join ItemModel am on (am.id = t.ItemModelId  and (@ItemModelId = -1 or am.id = @ItemModelId))
  inner join RFQ j on j.ID = jd.RFQID
  JOIN cte g2 ON jd.RFQId = g2.ID and [LEVEL] < 1 

  )
  select * from cte order by Rowid 
  
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserRoles]    Script Date: 12/17/2018 10:46:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetUserRoles]	

AS
BEGIN
	
  SELECT ur.[Id]
      ,ur.[UserId]
      ,ur.[RoleId]
      ,ur.[CompanyId]
	  ,u.FirstName as username
  FROM [dbo].[UserRoles] ur
 left outer join Users u on ur.RoleId=u.RoleId   

END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdUsers]    Script Date: 12/17/2018 10:52:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[InsUpdUsers](
@FirstName varchar(40) = null
,@LastName varchar(40) = null
,@MiddleName varchar(40) = null
,@EmpNo varchar(15) = null
,@Email varchar(40) = null
,@Address varchar(250) = null
,@AltAddress varchar(250) = null
,@ContactNo1 varchar(15) = null
,@ContactNo2 varchar(15) = null
,@RoleId int
,@cmpId int
,@Active int
,@DUserName varchar(30)  = null
,@DPassword varchar(30)  = null
,@insupdflag varchar(10)
,@ManagerId int = null
,@userid int = -1
,@ZipCode varchar(10) = null
,@StateId int = 0
,@CountryId int = 0
,@GenderId int = 0
,@RFromDate Datetime = null
,@RToDate Datetime = null
,@photo varchar(max) = null
)
 as begin
 
 declare @currid int, @cnt int, @logincnt int, @ulogincnt int, @edithistoryid int, @dt datetime, @fc varchar(15),@flogincnt int, @UId varchar(10)
	set @dt = GETDATE()
	set @UId = replace(CONVERT(VARCHAR(20), GETDATE(), 114),':','') 
 
 if @insupdflag = 'I'
 begin
 
	 if @EmpNo is null 
	 begin
	 SELECT @EmpNo = 'EMP'+@UId
	 end 
 
	select @cnt = COUNT(*)  from Users where UPPER(EmailId) = @Email
 
	select @logincnt = COUNT(*) from userlogins where upper(logininfo) = UPPER(@DUserName) 
 
	 if @cnt > 0
	 begin
	 RAISERROR ('User email address already exists',16,1);
	 return;
	 end
         
		if @logincnt > 0
		begin
				RAISERROR ('Already user login exists',16,1);
				return;
		end
  
		 if @cnt = 0 
		 begin
			insert into Users(FirstName,LastName,MiddleName, EmpNo,EmailId,[RoleId],[CompanyId],[Active],[GenderId],[ManagerId],[CountryId]
						,[StateId],[ZipCode],[ContactNo1],[ContactNo2],[Address],[AltAddress],[photo])
			values(@FirstName,@LastName,@MiddleName, @EmpNo,@Email ,@RoleId,@cmpId,@Active,@GenderId,@ManagerId,@CountryId
					,@StateId,@ZipCode,@ContactNo1,@ContactNo2,@Address,@AltAddress,@photo) 

		  --insert into edit history
			exec InsEditHistory 'Users', 'Name',@FirstName,'User creation',@dt,'Admin','Insertion',@edithistoryid = @edithistoryid output
		           
			exec InsEditHistoryDetails @edithistoryid,null,@FirstName,'Insertion','First Name',null
			exec InsEditHistoryDetails @edithistoryid,null,@LastName,'Insertion','Last Name',null
			exec InsEditHistoryDetails @edithistoryid,null,@EmpNo,'Insertion','EmpNo',null
			exec InsEditHistoryDetails @edithistoryid,null,@Email,'Insertion','Email',null

		 
		   SELECT @currid = SCOPE_IDENTITY()
  
		  
		-- insert user role		
		if @RoleId is not null
		exec InsUpdDelUserRoles -1,@RoleId, @currid, @cmpId,'I'
		end
		
		   if @logincnt = 0 
		   begin

					   --check if it is normal user or fleet owner. for fleet owner we have different logic
					   if @RoleId = 6 
					   begin
					     
									 set @fc = case when (select COUNT(*) from fleetowner) = 0
															   then '1' 
															   else (select ltrim(rtrim(STR((max(Id)+1)))) from fleetowner ) 
															   end  

									

									----the login will be assigned once the user buys the license. this is for testing
									--select @flogincnt = COUNT(*) from userlogins where upper(logininfo) = 'FL00'+@fc

									 --if @flogincnt = 0
									 --  begin
										--insert into userlogins(logininfo,PassKey,active,userid)values('FL00'+@fc,'FL00'+@fc,1,@currid)
									 --  end
					   end
					   else
						if  @DUserName is not null
						insert into userlogins(logininfo,PassKey,active,userid)values(@DUserName,@DPassword,1,@currid)
					   
			  end
    


end
 else
 
 begin
 
 SELECT @currid = @userid
 
 UPDATE [dbo].[Users]
   SET [FirstName] = @FirstName
      ,[LastName] = @LastName
      ,[MiddleName] = @MiddleName
      ,[EmpNo] = @EmpNo
      ,[EmailId] = @Email
      ,[RoleId] = @RoleId
      ,[CompanyId] = @cmpId
      ,[Active] = @Active
      ,[GenderId] = @GenderId
      ,[ManagerId] = @ManagerId
      ,[CountryId] = @CountryId
      ,[StateId] = @StateId
      ,[ZipCode] = @ZipCode
      ,[ContactNo1] = @ContactNo1
      ,[ContactNo2] = @ContactNo2
      ,[Address] = @Address
      ,[AltAddress] = @AltAddress
      ,[photo] = @photo
  where id = @userid
 
-- insert user role
        if @RoleId is not null
		exec InsUpdDelUserRoles -1,@RoleId, @currid, @cmpId,'I'
		else
		exec InsUpdDelUserRoles -1,@RoleId, @currid, @cmpId,'D'
 
 select @logincnt = COUNT(*) from userlogins where  userid = @userid
 
 
 if @logincnt = 0 
   begin

			   --check if it is normal user or fleet owner. for fleet owner we have different logic
			   if @RoleId = 6 
			   begin
			      
					
							 set @fc = 'FL'+replace(CONVERT(VARCHAR(20), GETDATE(), 114),':','')  

							

							----the login will be assigned once the user buys the license. this is for testing
							--select @flogincnt = COUNT(*) from userlogins where upper(logininfo) = @fc

							-- if @flogincnt = 0
							--   begin
							--	insert into userlogins(logininfo,PassKey,active,userid)values(@fc,@fc,1,@currid)
							--   end
			   end
			   else
			    if @DUserName is not null
				insert into userlogins(logininfo,PassKey,active,userid)values(@DUserName,@DPassword,1,@currid)
			   
      end
 
 else
 begin
     if @DUserName is not null
		 begin
		 --check if updation causes duplicates
		 select @ulogincnt = COUNT(*) from userlogins where upper(logininfo) = UPPER(@DUserName) and userid <> @userid
		 
		 if @ulogincnt = 0
 			update userlogins
			set logininfo = @DUserName
			,PassKey = @DPassword
			,active = @active
			where userid = @currid
		else
		 RAISERROR ('User login already exists',16,1);
		end
 end

 
 end --end of 'i' check
 
 --if role is fleet owner then insert the code into fleet owner table
 
 declare @fcnt int
 
 if @RoleId = 6
 begin
 
 select @fcnt = COUNT(*) from FleetOwner where UserId = @currid
  set @fc = 'FL'+replace(CONVERT(VARCHAR(20), GETDATE(), 108),':','')  
			 if @fcnt = 0 
			 begin
				INSERT INTO [dbo].[FleetOwner]
					   ([UserId]
					   ,[CompanyId]
					   ,[Active]
					   ,[FleetOwnerCode])
				 VALUES
					   (@currid
						,@cmpId
					   ,1
					   ,@fc)
		      end						
				else
					UPDATE [dbo].[FleetOwner]
						SET 
						[CompanyId] = @cmpId
						,[Active] = 1
						,[FleetOwnerCode] = @fc
					 WHERE [UserId] = @currid
 
 end
 
 end
 GO
 /****** Object:  StoredProcedure [dbo].[InsUpdDelUserRoles]    Script Date: 12/17/2018 10:58:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[InsUpdDelUserRoles](
@Id int,
@roleid int,
@UserId int,
@CompanyId int = null,
@insupdflag varchar
)
as
begin

declare @cnt int

select @cnt = count(*) from UserRoles where [UserId] = @UserId and [roleid] = @roleid

if @insupdflag = 'I'
begin
if @cnt = 0
INSERT INTO [dbo].[UserRoles]
           ([UserId]
           ,[RoleId]
           ,[CompanyId])
     VALUES
           (@UserId
           ,@RoleId
           ,@CompanyId)
    end
 else
   if @insupdflag = 'U'
 begin
UPDATE [dbo].[UserRoles]
  SET [UserId] = @UserId
     ,[RoleId] = @RoleId
     ,[CompanyId] = @CompanyId
  WHERE Id = @Id
 end
 else

if @insupdflag = 'D'
 begin
delete from [UserRoles] where [UserId] = @UserId and [RoleId] = @roleid and [CompanyId]  = @CompanyId

end

end

GO
/****** Object:  StoredProcedure [dbo].[GetOrderConfirmation]    Script Date: 12/17/2018 11:18:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  Procedure GetOrderConfirmation
as
Begin
SELECT rc.[Id]
      ,rc.[RFQId]
      ,rc.[CustomerId]
      ,rc.[confirmedon]
      ,rc.[commtypeid]
      ,rc.[active]
      ,rc.[isPOSent]
      ,rc.[Posenton]
      ,rc.[RFQConfirmationId]
	  ,rq.RFQID as RFQCode
	  ,ct.Name as CustomerName
  FROM [OrderConfirmation]  rc
  inner join RFQ rq on rc.RFQId=rq.Id
  inner join Customer ct on rc.CustomerId=ct.Id
  End
Go
/****** Object:  StoredProcedure [dbo].[GetsupplierPurchaseOrder]    Script Date: 12/17/2018 11:22:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetsupplierPurchaseOrder]
AS
BEGIN
	

SELECT [Id]
      ,[RFQId]
      ,[RFQConfirmationId]
      ,[PONum]
      ,[PODate]
      ,[SupplierId]
      ,[PoSenton]
      ,[isPOSent]
      ,[PODocId]
      ,[ShippingMethod]
      ,[ShippingTerms]
      ,[DeliveryDate]
      ,[POSubTotal]
      ,[POCharges]
      ,[PODiscounts]
      ,[POTotal]
  FROM [dbo].[supplierPurchaseOrder]

END
GO
/****** Object:  StoredProcedure [dbo].[GetsupplierPODetails]    Script Date: 12/17/2018 11:22:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetsupplierPODetails]
AS
BEGIN

SELECT [Id]
      ,[POId]
      ,[RFQItemId]
      ,[NoOfUnits]
      ,[UnitPrice]
      ,[charges]
      ,[discounts]
      ,[subtotal]
      ,[Total]
  FROM [dbo].[supplierPODetails]

END
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerPurchaseOrder]    Script Date: 12/17/2018 11:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetCustomerPurchaseOrder]
AS
BEGIN


SELECT [Id]
      ,[RFQId]
      ,[RFQConfirmationId]
      ,[PONum]
      ,[PODate]
      ,[SupplierId]
      ,[PoSenton]
      ,[isPOSent]
      ,[PODocId]
      ,[ShippingMethod]
      ,[ShippingTerms]
      ,[DeliveryDate]
      ,[POSubTotal]
      ,[POCharges]
      ,[PODiscounts]
      ,[POTotal]
  FROM [dbo].[CustomerPurchaseOrder]

END
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerPODetails]    Script Date: 12/17/2018 11:24:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetCustomerPODetails]
AS
BEGIN
	

SELECT [Id]
      ,[POId]
      ,[RFQItemId]
      ,[NoOfUnits]
      ,[DealerUnitPrice]
      ,[Dealercharges]
      ,[Dealerdiscounts]
      ,[subtotal]
      ,[SupplierUnitPrice]
      ,[SupplierDiscount]
      ,[SupplierCharges]
      ,[Othercharges]
      ,[total]
  FROM [dbo].[CustomerPODetails]
  end 
  GO
  /****** Object:  StoredProcedure [dbo].[GetInvoice]    Script Date: 12/17/2018 11:25:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetInvoice]
	
AS
BEGIN
	

SELECT [Id]
      ,[InvoiceNo]
      ,[POId]
      ,[PONum]
      ,[invoicedate]
      ,[paymentmodeid]
      ,[supplierid]
      ,[receivedon]
      ,[isapproved]
      ,[ispaid]
      ,[paidOn]
      ,[OrderconfirmationId]
      ,[RFQId]
      ,[InvoiceSubTotal]
      ,[InvoiceCharges]
      ,[InvoiceDiscounts]
      ,[InvoiceTotal]
  FROM [dbo].[Invoice]

END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelOrderConfirmation]    Script Date: 12/17/2018 11:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[InsUpdDelOrderConfirmation]
(@RFQId int=null,@CustomerId int =null ,@confirmedon datetime=null,@commtypeid int =null,@active int =null,
@isPOSent datetime=null,@Posenton datetime=null,@RFQConfirmationId int =null, @flag varchar,@Id int=null)
AS
BEGIN
	if @flag='I'
	begin 

INSERT INTO [dbo].[OrderConfirmation]
           ([RFQId]
           ,[CustomerId]
           ,[confirmedon]
           ,[commtypeid]
           ,[active]
           ,[isPOSent]
           ,[Posenton]
           ,[RFQConfirmationId])
     VALUES
           (@RFQId
           ,@CustomerId
           ,@confirmedon
           ,@commtypeid
           ,@active
           ,@isPOSent
           ,@Posenton
           ,@RFQConfirmationId)
		   SELECT [Id]
      ,[RFQId]
      ,[CustomerId]
      ,[confirmedon]
      ,[commtypeid]
      ,[active]
      ,[isPOSent]
      ,[Posenton]
      ,[RFQConfirmationId]
  FROM [dbo].[OrderConfirmation]



end 


if @flag='U'
	begin 
	 
         UPDATE [dbo].[OrderConfirmation]
   SET [RFQId] = @RFQId
      ,[CustomerId] = @CustomerId
      ,[confirmedon] = @confirmedon
      ,[commtypeid] = @commtypeid
      ,[active] = @active
      ,[isPOSent] =@isPOSent
      ,[Posenton] = @Posenton
      ,[RFQConfirmationId] =@RFQConfirmationId

  WHERE [Id]=@Id

	end
if @flag='D'
	begin 


DELETE FROM [dbo].[OrderConfirmation]
      WHERE [RFQId] = @RFQId
    
	end

END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelsupplierPurchaseOrder]    Script Date: 12/17/2018 12:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  PROCEDURE [dbo].[InsUpdDelsupplierPurchaseOrder]
	       (@RFQId int=null
           ,@RFQConfirmationId int=null
           ,@PONum int=null
           ,@PODate date=null
           ,@SupplierId int=null
           ,@PoSenton datetime =null
           ,@isPOSent datetime=null
           ,@PODocId int=null
           ,@ShippingMethod int=null
           ,@ShippingTerms int=null
           ,@DeliveryDate date=null
           ,@POSubTotal decimal=null 
           ,@POCharges decimal=null 
           ,@PODiscounts decimal=null 
           ,@POTotal decimal=null ,
		   @Id int=null,
		    @flag varchar)

AS
BEGIN
if @flag='I'
begin 
  INSERT INTO [dbo].[supplierPurchaseOrder]
           ([RFQId]
           ,[RFQConfirmationId]
           ,[PONum]
           ,[PODate]
           ,[SupplierId]
           ,[PoSenton]
           ,[isPOSent]
           ,[PODocId]
           ,[ShippingMethod]
           ,[ShippingTerms]
           ,[DeliveryDate]
           ,[POSubTotal]
           ,[POCharges]
           ,[PODiscounts]
           ,[POTotal])
     VALUES
           (@RFQId
           ,@RFQConfirmationId
           ,@PONum
           ,@PODate
           ,@SupplierId
           ,@PoSenton
           ,@isPOSent
           ,@PODocId
           ,@ShippingMethod
           ,@ShippingTerms
           ,@DeliveryDate
           ,@POSubTotal
           ,@POCharges
           ,@PODiscounts
           ,@POTotal)

                SELECT [Id]
      ,[RFQId]
      ,[RFQConfirmationId]
      ,[PONum]
      ,[PODate]
      ,[SupplierId]
      ,[PoSenton]
      ,[isPOSent]
      ,[PODocId]
      ,[ShippingMethod]
      ,[ShippingTerms]
      ,[DeliveryDate]
      ,[POSubTotal]
      ,[POCharges]
      ,[PODiscounts]
      ,[POTotal]
  FROM [dbo].[supplierPurchaseOrder]



end 

if @flag='U'
begin 



UPDATE [dbo].[supplierPurchaseOrder]
   SET [RFQId] =  @RFQId
      ,[RFQConfirmationId] =  @RFQConfirmationId
      ,[PONum] =  @PONum
      ,[PODate] =  @PODate
      ,[SupplierId] =  @SupplierId
      ,[PoSenton] =  @PoSenton
      ,[isPOSent] =  @isPOSent
      ,[PODocId] = @PODocId
      ,[ShippingMethod] = @ShippingMethod
      ,[ShippingTerms] = @ShippingTerms
      ,[DeliveryDate] = @DeliveryDate
      ,[POSubTotal] = @POSubTotal
      ,[POCharges] = @POCharges
      ,[PODiscounts] = @PODiscounts
      ,[POTotal] = @POTotal
 WHERE [Id]=@Id
 end 
 if @flag='D'
begin 
   

DELETE FROM [dbo].[supplierPurchaseOrder]
      WHERE  [RFQId] =  @RFQId

end 
END
GO


/****** Object:  StoredProcedure [dbo].[getInvoiceDetails]    Script Date: 12/17/2018 6:09:32 PM ******/
SET ANSI_NULLS ON
GO

GO
CREATE procedure [dbo].[getInvoiceDetails]
as 
begin
	
Select [Id]
	  ,[POId] 
	  ,[RFQItemId] 
	  ,[NoOfUnits] 
	  ,[UnitPrice] 
	  ,[discounts]
	  ,[charges] 
	  ,[subtotal] 
	  ,[Total] 
from [dbo].[InvoiceDetails]
end
GO
/****** Object:  StoredProcedure [dbo].[InsupdInvoiceDetails]    Script Date: 12/17/2018 6:10:34 PM ******/
SET ANSI_NULLS ON
GO


create procedure [dbo].[InsupdInvoiceDetails]
(@flag varchar(50)
,@POId int=null
,@RFQItemId int=null
,@NoOfUnits int=null
,@UnitPrice decimal(18,2)=null
,@charges decimal(18,2)=null
,@discounts decimal(18,2)=null
,@subtotal decimal(18,2)=null
,@Total decimal(18,2)=null)
as 
begin 
INSERT INTO [dbo].[InvoiceDetails]
           ([POId]
           ,[RFQItemId]
           ,[NoOfUnits]
           ,[UnitPrice]
           ,[charges]
           ,[discounts]
           ,[subtotal]
           ,[Total])
		   values(@POId,@RFQItemId,@NoOfUnits,@UnitPrice,@charges,@discounts,@subtotal,@Total)
		   end
GO
/****** Object:  StoredProcedure [dbo].[getDeliveryNote]    Script Date: 12/17/2018 6:11:58 PM ******/
SET ANSI_NULLS ON
GO



create procedure  [dbo].[getDeliveryNote]
as
begin

SELECT [Id]
      ,[RFQId]
      ,[POId]
      ,[DeliveryNoteNo]
      ,[SupplierId]
      ,[DispatchDate]
      ,[Deliverymethod]
      ,[IsDelivered]
      ,[DeliveredOn]
      ,[TotalItems]
      ,[InvoiceAddress]
      ,[CustomerAddress]
  FROM [dbo].[DeliveryNote]
end



GO
/****** Object:  StoredProcedure [dbo].[insupdDeliveryNote]    Script Date: 12/17/2018 6:12:47 PM ******/
SET ANSI_NULLS ON
GO

create procedure [dbo].[insupdDeliveryNote]
(@flag varchar
,@RFQId int=null
,@POId int=null
,@DeliveryNoteNo int=null
,@SupplierId int=null
,@DispatchDate datetime=null
,@Deliverymethod varchar(50)=null
,@IsDelivered varchar(50)=null
,@DeliveredOn datetime
,@TotalItems int=null
,@InvoiceAddress varchar(250)=null
,@CustomerAddress varchar(250)=null)
as
begin

INSERT INTO [dbo].[DeliveryNote]
           (
            [RFQId]
           ,[POId]
           ,[DeliveryNoteNo]
           ,[SupplierId]
           ,[DispatchDate]
           ,[Deliverymethod]
           ,[IsDelivered]
           ,[DeliveredOn]
           ,[TotalItems]
           ,[InvoiceAddress]
           ,[CustomerAddress])
     VALUES
           (@RFQId,@POId,@DeliveryNoteNo,@SupplierId,@DispatchDate,@Deliverymethod,@IsDelivered,@DeliveredOn,@TotalItems,@InvoiceAddress,@CustomerAddress)
		   end



GO
/****** Object:  StoredProcedure [dbo].[getDeliveryNoteDetails]    Script Date: 12/17/2018 6:13:32 PM ******/
SET ANSI_NULLS ON
GO

create procedure  [dbo].[getDeliveryNoteDetails]
as
begin
SELECT [Id]
      ,[DeliveryNoteId]
      ,[RFQItemId]
      ,[NoOfUnitsOrdered]
      ,[NoOfUnitsDelivered]
  FROM [dbo].[DeliveryNoteDetails]
  end
GO
/****** Object:  StoredProcedure [dbo].[insupdDeliveryNoteDetails]    Script Date: 12/17/2018 6:14:19 PM ******/
SET ANSI_NULLS ON
GO
create procedure [dbo].[insupdDeliveryNoteDetails]
(@flag varchar(50),@DeliveryNoteId int=null,@RFQItemId int=null,@NoOfUnitsOrdered int=null,@NoOfUnitsDelivered int=null)
as
begin

INSERT INTO [dbo].[DeliveryNoteDetails]
           ([DeliveryNoteId]
           ,[RFQItemId]
           ,[NoOfUnitsOrdered]
           ,[NoOfUnitsDelivered])
     VALUES
           (@DeliveryNoteId,@RFQItemId,@NoOfUnitsOrdered,@NoOfUnitsDelivered)
		   end
		   go
/****** Object:  StoredProcedure [dbo].[InsUpdDelsupplierPODetails]    Script Date: 12/19/2018 4:27:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsUpdDelsupplierPODetails]
           (@POId int=null
           ,@RFQItemId  int=null
           ,@NoOfUnits  int=null
		   ,@UnitPrice  decimal(18,2)=null
           ,@charges decimal(18,2)=null
           ,@discounts decimal(18,2)=null
           ,@subtotal decimal(18,2)=null
           ,@Total decimal(18,2)=null
		   ,@Id int=null
		   ,@flag varchar)
AS
BEGIN
	if @flag='I'
	begin
INSERT INTO [dbo].[supplierPODetails]
           ([POId]
           ,[RFQItemId]
           ,[NoOfUnits]
           ,[UnitPrice]
           ,[charges]
           ,[discounts]
           ,[subtotal]
           ,[Total])
     VALUES
           (@POId
           ,@RFQItemId
           ,@NoOfUnits
           ,@UnitPrice
           ,@charges
           ,@discounts
           ,@subtotal
           ,@Total)
		
               SELECT [Id]
      ,[POId]
      ,[RFQItemId]
      ,[NoOfUnits]
      ,[UnitPrice]
      ,[charges]S
      ,[discounts]
      ,[subtotal]
      ,[Total]
  FROM [dbo].[supplierPODetails]




end

	if @flag='U'
	begin
UPDATE [dbo].[supplierPODetails]
   SET [POId] = @POId
      ,[RFQItemId] = @RFQItemId
      ,[NoOfUnits]=@NoOfUnits
      ,[UnitPrice] = @UnitPrice
      ,[charges] = @charges
      ,[discounts] = @discounts
      ,[subtotal] = @subtotal
      ,[Total] = @Total
 WHERE [Id]=@Id
 end 

 if @flag='D'
	begin

	DELETE FROM [dbo].[supplierPODetails]
      WHERE  [POId] = @POId



	end 
END 

GO

/****** Object:  StoredProcedure [dbo].[InsUpdDelCustomerPurchaseOrder]    Script Date: 12/17/2018 1:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[InsUpdDelCustomerPurchaseOrder]
 (@RFQId int=null,@RFQConfirmationId int=null ,@PONum int=null ,@PODate date=null,@SupplierId int=null,@PoSenton datetime=null,@isPOSent int=null,
 @PODocId varchar(MAX)=null ,@ShippingMethod int=null ,@ShippingTerms int=null,@DeliveryDate date=null,@POSubTotal decimal(18,2),
 @POCharges decimal(18,2),@PODiscounts  decimal(18,2),@POTotal decimal(18,2),@Id int =null,@flag varchar)

AS
BEGIN
if @flag='I'
begin
INSERT INTO [dbo].[CustomerPurchaseOrder]
           ([RFQId]
           ,[RFQConfirmationId]
           ,[PONum]
           ,[PODate]
           ,[SupplierId]
           ,[PoSenton]
           ,[isPOSent]
           ,[PODocId]
           ,[ShippingMethod]
           ,[ShippingTerms]
           ,[DeliveryDate]
           ,[POSubTotal]
           ,[POCharges]
           ,[PODiscounts]
           ,[POTotal])
     VALUES
           (@RFQId
           ,@RFQConfirmationId
           ,@PONum
           ,@PODate
           ,@SupplierId
           ,@PoSenton
           ,@isPOSent
           ,@PODocId
           ,@ShippingMethod
           ,@ShippingTerms
           ,@DeliveryDate
           ,@POSubTotal
           ,@POCharges
           ,@PODiscounts
           ,@POTotal)
		  

SELECT [Id]
      ,[RFQId]
      ,[RFQConfirmationId]
      ,[PONum]
      ,[PODate]
      ,[SupplierId]
      ,[PoSenton]
      ,[isPOSent]
      ,[PODocId]
      ,[ShippingMethod]
      ,[ShippingTerms]
      ,[DeliveryDate]
      ,[POSubTotal]
      ,[POCharges]
      ,[PODiscounts]
      ,[POTotal]
  FROM [dbo].[CustomerPurchaseOrder]





end 

if @flag='U'
begin 

UPDATE [dbo].[CustomerPurchaseOrder]
   SET [RFQId] = @RFQId
      ,[RFQConfirmationId] = @RFQConfirmationId
      ,[PONum] = @PONum
      ,[PODate] = @PODate
      ,[SupplierId] = @SupplierId
      ,[PoSenton] = @PoSenton
      ,[isPOSent] =@isPOSent
      ,[PODocId] = @PODocId
      ,[ShippingMethod] = @ShippingMethod
      ,[ShippingTerms] = @ShippingTerms
      ,[DeliveryDate] = @DeliveryDate
      ,[POSubTotal] = @POSubTotal
      ,[POCharges] = @POCharges
      ,[PODiscounts] = @PODiscounts
      ,[POTotal] = @POTotal
 WHERE [Id]=@Id

end 
if @flag='D'
begin

DELETE FROM [dbo].[CustomerPurchaseOrder]
      WHERE [RFQId] = @RFQId
	  end 
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelCustomerPODetails]    Script Date: 12/17/2018 1:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[InsUpdDelCustomerPODetails]
          (@POId int=null
           ,@RFQItemId int=null
           ,@NoOfUnits int=null
           ,@DealerUnitPrice decimal(18,2)=null
           ,@Dealercharges decimal(18,2)=null
           ,@Dealerdiscounts decimal(18,2)=null
          ,@subtotal decimal(18,2)=null
           ,@SupplierUnitPrice decimal(18,2)=null
          ,@SupplierDiscount decimal(18,2)=null
           ,@SupplierCharges decimal(18,2)=null
          ,@Othercharges decimal(18,2)=null
           ,@total decimal(18,2)=null
		   ,@Id int=null
		   ,@flag varchar)

AS
BEGIN

if @flag='I' 
begin
INSERT INTO [dbo].[CustomerPODetails]
           ([POId]
           ,[RFQItemId]
           ,[NoOfUnits]
           ,[DealerUnitPrice]
           ,[Dealercharges]
           ,[Dealerdiscounts]
           ,[subtotal]
           ,[SupplierUnitPrice]
           ,[SupplierDiscount]
           ,[SupplierCharges]
           ,[Othercharges]
           ,[total])
     VALUES
           (@POId
           ,@RFQItemId
           ,@NoOfUnits
           ,@DealerUnitPrice
           ,@Dealercharges
           ,@Dealerdiscounts
          ,@subtotal
           ,@SupplierUnitPrice
          ,@SupplierDiscount
           ,@SupplierCharges
          ,@Othercharges
           ,@total)
    SELECT [Id]
      ,[POId]
      ,[RFQItemId]
      ,[NoOfUnits]
      ,[DealerUnitPrice]
      ,[Dealercharges]
      ,[Dealerdiscounts]
      ,[subtotal]
      ,[SupplierUnitPrice]
      ,[SupplierDiscount]
      ,[SupplierCharges]
      ,[Othercharges]
      ,[total]
  FROM [dbo].[CustomerPODetails]


end 

  if @flag='U' 
 begin
  UPDATE [dbo].[CustomerPODetails]
   SET [POId] = @POId
      ,[RFQItemId] = @RFQItemId
      ,[NoOfUnits] = @NoOfUnits
      ,[DealerUnitPrice] = @DealerUnitPrice
      ,[Dealercharges] = @Dealercharges
      ,[Dealerdiscounts] = @Dealerdiscounts
      ,[subtotal] = @subtotal
      ,[SupplierUnitPrice] = @SupplierUnitPrice
      ,[SupplierDiscount] = @SupplierDiscount
      ,[SupplierCharges] = @SupplierCharges
      ,[Othercharges] = @Othercharges
      ,[total] = @total
 WHERE [Id]=@Id
   end 
     if @flag='D'
  begin
   DELETE FROM [dbo].[CustomerPODetails]
      WHERE  [POId] = @POId
  end 
END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelInvoice]    Script Date: 12/17/2018 1:37:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[InsUpdDelInvoice]
       (@InvoiceNo int=null
           ,@POId int=null
           ,@PONum int=null
           ,@invoicedate datetime=null
           ,@paymentmodeid int=null
           ,@supplierid int=null
           ,@receivedon  datetime=null
           ,@isapproved  varchar(250)=null
           ,@ispaid       varchar(250)=null
           ,@paidOn  datetime=null
           ,@OrderconfirmationId int=null
           ,@RFQId int=null
           ,@InvoiceSubTotal decimal(18,2)=null
           ,@InvoiceCharges decimal(18,2)=null
           ,@InvoiceDiscounts decimal(18,2)=null
           ,@InvoiceTotal decimal(18,2)=null
		   ,@Id int=null 
		   ,@flag varchar)
AS
BEGIN

         if @flag='I' 
begin

       INSERT INTO [dbo].[Invoice]
           ([InvoiceNo]
           ,[POId]
           ,[PONum]
           ,[invoicedate]
           ,[paymentmodeid]
           ,[supplierid]
           ,[receivedon]
           ,[isapproved]
           ,[ispaid]
           ,[paidOn]
           ,[OrderconfirmationId]
           ,[RFQId]
           ,[InvoiceSubTotal]
           ,[InvoiceCharges]
           ,[InvoiceDiscounts]
           ,[InvoiceTotal])
        VALUES
          (@InvoiceNo 
           ,@POId
           ,@PONum 
           ,@invoicedate 
           ,@paymentmodeid 
           ,@supplierid 
           ,@receivedon  
           ,@isapproved 
           ,@ispaid       
           ,@paidOn 
           ,@OrderconfirmationId 
           ,@RFQId 
           ,@InvoiceSubTotal 
           ,@InvoiceCharges 
           ,@InvoiceDiscounts 
           ,@InvoiceTotal )


		    SELECT [Id]
      ,[InvoiceNo]
      ,[POId]
      ,[PONum]
      ,[invoicedate]
      ,[paymentmodeid]
      ,[supplierid]
      ,[receivedon]
      ,[isapproved]
      ,[ispaid]
      ,[paidOn]
      ,[OrderconfirmationId]
      ,[RFQId]
      ,[InvoiceSubTotal]
      ,[InvoiceCharges]
      ,[InvoiceDiscounts]
      ,[InvoiceTotal]
  FROM [dbo].[Invoice]

		  

end 

  if @flag='U' 
 begin
  
 

   UPDATE [dbo].[Invoice]
   SET [InvoiceNo] = @InvoiceNo
      ,[POId] = @POId
      ,[PONum] = @PONum
      ,[invoicedate] = @invoicedate
      ,[paymentmodeid] = @paymentmodeid
      ,[supplierid] = @supplierid
      ,[receivedon] = @receivedon
      ,[isapproved] = @isapproved
      ,[ispaid] = @ispaid
      ,[OrderconfirmationId] = @OrderconfirmationId
      ,[RFQId] = @RFQId
      ,[InvoiceSubTotal] = @InvoiceSubTotal
      ,[InvoiceCharges] = @InvoiceCharges
      ,[InvoiceDiscounts] = @InvoiceDiscounts
      ,[InvoiceTotal] =@InvoiceTotal
        WHERE [Id]=@Id

  end 

  if @flag='D'
  begin
  
 

    DELETE FROM [dbo].[Invoice]
      WHERE [InvoiceNo] = @InvoiceNo

  end 


END
GO


/****** Object:  StoredProcedure [dbo].[InsUpdDelCustomerEstimation]    Script Date: 18-12-2018 15:40:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsUpdDelCustomerEstimation]
@RFQId int=null,@RFQItemId int=null,@RFQSupplierId int=null,@NoOfUnits int=null,@FinaUnitPrice int=null,
@FinalDiscount int=null,@FinalCharges int=null,@FinalSubTotal int=null,@Subtotal int=null,@flag varchar=null

As
Begin
 declare @cnt int
 select @cnt=COUNT(*) from [RFQCustomerEstimation] where (RFQId=@RFQId and RFQSupplierId=@RFQSupplierId) and RFQItemId=@RFQItemId
if @flag='I'
Begin
 if @cnt=0
 Begin
INSERT INTO [RFQCustomerEstimation]([RFQId],[RFQItemId],[RFQSupplierId],[NoOfUnits],[FinaUnitPrice],[FinalDiscount],[FinalCharges],
		   [FinalSubTotal],[Subtotal],[IsQuoteSent],[QuoteSentOn],[CustomerApproved],[ApprovedOn])
     VALUES( @RFQId,@RFQItemId,@RFQSupplierId,@NoOfUnits,@FinaUnitPrice,@FinalDiscount,@FinalCharges,
	         @FinalSubTotal,@Subtotal,null,null,null,null)
			 End
End
End
GO
/****** Object:  StoredProcedure [dbo].[GetRFQSupplierPO]    Script Date: 20-12-2018 15:42:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[GetRFQSupplierPO]
	@modelId int = -1, @rfqId int =-1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
  with cte as
(SELECT J.[ID],J.RFQID
      ,convert(varchar(100),J.[Name]) Name
      ,null ParentId        
      ,0 isDoc                  
      ,J.CustomerID custId
      ,(select c.Name from Customer c where c.Id = j.CustomerID) Client
      ,  CAST(J.ID AS VARCHAR(100)) AS RowID
      ,-1 ItemId
      ,0 [LEVEL]	 
	,convert(varchar(250),'') Email
	,-1 draftId
	,j.ID RFQAUTOID
  FROM [dbo].[RFQ] J
  inner join [RFQDraftEstimation] re on j.ID=re.[RFQId]
  inner join RFQCustomerEstimation rr on re.RFQId=rr.RFQId
  --inner join Location l on (l.ID = LocationID or  @locationId = -1)
  --inner join Customer c on c.Id = J.CustomerID
   where (@modelId = J.StatusId or @modelId = -1) and (@rfqId = J.ID or @rfqId = -1)
union all
SELECT 100000+jd.[Id],j.RFQID
	 ,convert(varchar(100),t.ItemName) Name  
      ,jd.[RFQId] ParentId      
      ,1 isDoc     
       ,-1 custId
       ,null Customer       
      ,CAST(RowID + '.' + CAST(10000+jd.[Id] AS VARCHAR(100)) AS VARCHAR(100)) 
      ,jd.ItemId 
      ,[LEVEL]+1  
     ,convert(varchar(250),'') Email
	 ,0 draftId
	 ,null RFQAUTOID
  FROM [dbo].[RFQResources] jd
  inner join InventoryItem t on jd.ItemId = t.Id
   inner join [RFQDraftEstimation] re on jd.RFQID=re.[RFQId]
     inner join RFQCustomerEstimation rr on re.RFQId=rr.RFQId and rr.RFQSupplierId=t.Id
  --inner join ItemModel am on (am.id = t.ItemModelId  and (@ItemModelId = -1 or am.id = @ItemModelId))
  inner join RFQ j on j.ID = jd.RFQID
  JOIN cte g2 ON jd.RFQId = g2.ID and [LEVEL] < 1 

  union all
SELECT 10000+jd.[Id]+1,j.RFQID
	  ,u.Name
      ,100000+rr.[Id] ParentId      
      ,2 isDoc      
        ,u.Id custId
       ,null Customer       
      ,CAST(RowID + '.' + CAST(10000+jd.[Id]+1 AS VARCHAR(100)) AS VARCHAR(100)) 
      ,jd.rfqItemId 
      ,[LEVEL]+2   	
	 ,convert(varchar(250),u.Email) Email
	 ,re.Id draftId
	 ,rr.RFQId RFQAUTOID
  FROM [dbo].RFQSuppliers jd
  inner join InventoryItem t on jd.rfqItemId = t.Id
  inner join [RFQResources] rr on rr.ItemId = t.Id and rr.rfqid = jd.rfqid  
   inner join Suppliers u on u.id = jd.[SupplierId]
   inner join [RFQDraftEstimation] re on jd.RFQID=re.[RFQId] and re.RFQSupplierId=u.Id and re.RFQItemId = t.id
     inner join RFQCustomerEstimation rre on u.Id=rre.RFQSupplierId
  --inner join ItemModel am on (am.id = t.ItemModelId  and (@ItemModelId = -1 or am.id = @ItemModelId))
  inner join RFQ j on j.ID = jd.RFQID
  JOIN cte g2 ON jd.RFQId = g2.ID and [LEVEL] < 1 

  )
  select distinct cte.ID,cte.RFQID,Name,ParentId,isDoc,custId,Client,RowID,ItemId,[LEVEL],Email,draftId,RFQAUTOID
  ,rd.[NoOfUnits],rd.[FinaUnitPrice],rd.[FinalDiscount],rd.[FinalCharges]
  --,rd.DealerUnitPrice,rd.DealerDiscount,rd.DealerCharges,rd.DealerSubTotal,rd.NoOfUnits,
  from cte 
  left outer join RFQCustomerEstimation rd on rd.id = cte.draftId
  order by Rowid 
END
GO
GO
/****** Object:  StoredProcedure [dbo].[getRecieptreturn]    Script Date: 12/20/2018 6:07:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[getRecieptreturn]
as
begin

SELECT [PurchaseOrderId]
      ,[item]
      ,[noofUnits]
      ,[returnedon]
      ,[returnedBy]
      ,[comment]
  FROM [dbo].[Recieptreturn]
  end



GO

/****** Object:  StoredProcedure [dbo].[InsupdRecieptreturn]    Script Date: 12/20/2018 6:07:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[InsupdRecieptreturn]
(@flag varchar(50),@item varchar(50)=null,@noofUnits int=null,@returnedon datetime=null,@returnedBy varchar(50)=null,@comment varchar(50)=null)
as
 begin

INSERT INTO [dbo].[Recieptreturn]
           ([item]
           ,[noofUnits]
           ,[returnedon]
           ,[returnedBy]
           ,[comment])
     VALUES
           (@item,@noofUnits,@returnedon,@returnedBy,@comment)
		   end




GO