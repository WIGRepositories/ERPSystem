ALTER TABLE [dbo].[EditHistoryDetails] DROP CONSTRAINT [FK_EditHistoryDetails_EditHistoryId]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16-12-2018 07:52:47 ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[UserRoles]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[UserLogins]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[Types]
GO
/****** Object:  Table [dbo].[TypeGroups]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[TypeGroups]
GO
/****** Object:  Table [dbo].[TransactionMaster]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[TransactionMaster]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[Suppliers]
GO
/****** Object:  Table [dbo].[SupplierInvoice]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[SupplierInvoice]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[SubCategory]
GO
/****** Object:  Table [dbo].[ShippingOrder]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[ShippingOrder]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[RFQUsers]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQUsers]
GO
/****** Object:  Table [dbo].[RFQSupplierShippingOrder]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQSupplierShippingOrder]
GO
/****** Object:  Table [dbo].[RFQSuppliers]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQSuppliers]
GO
/****** Object:  Table [dbo].[RFQSupplierInvoices]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQSupplierInvoices]
GO
/****** Object:  Table [dbo].[RFQStaff]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQStaff]
GO
/****** Object:  Table [dbo].[RFQResources]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQResources]
GO
/****** Object:  Table [dbo].[RFQEstimation]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQEstimation]
GO
/****** Object:  Table [dbo].[RFQDraftEstimation]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQDraftEstimation]
GO
/****** Object:  Table [dbo].[RFQDocs]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQDocs]
GO
/****** Object:  Table [dbo].[RFQDetails]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQDetails]
GO
/****** Object:  Table [dbo].[RFQCustomerEstimation]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQCustomerEstimation]
GO
/****** Object:  Table [dbo].[RFQ]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[RFQ]
GO
/****** Object:  Table [dbo].[QuoteResponse]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[QuoteResponse]
GO
/****** Object:  Table [dbo].[QuoteRequestDocs]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[QuoteRequestDocs]
GO
/****** Object:  Table [dbo].[QuoteRequest]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[QuoteRequest]
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[PurchaseOrder]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[Payment]
GO
/****** Object:  Table [dbo].[OrderConfirmationDocs]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[OrderConfirmationDocs]
GO
/****** Object:  Table [dbo].[OrderConfirmation]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[OrderConfirmation]
GO
/****** Object:  Table [dbo].[ObjectType]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[ObjectType]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[Items]
GO
/****** Object:  Table [dbo].[ItemPricing]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[ItemPricing]
GO
/****** Object:  Table [dbo].[ItemModelHierarchy]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[ItemModelHierarchy]
GO
/****** Object:  Table [dbo].[ItemModel]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[ItemModel]
GO
/****** Object:  Table [dbo].[InventoryItem]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[InventoryItem]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[Inventory]
GO
/****** Object:  Table [dbo].[EditHistoryDetails]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[EditHistoryDetails]
GO
/****** Object:  Table [dbo].[EditHistory]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[EditHistory]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[Documents]
GO
/****** Object:  Table [dbo].[DocTypes]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[DocTypes]
GO
/****** Object:  Table [dbo].[CustomerQuote]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[CustomerQuote]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[CommType]    Script Date: 16-12-2018 07:52:48 ******/
DROP TABLE [dbo].[CommType]
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 12/19/2018 2:29:05 PM ******/
DROP TABLE [dbo].[InvoiceDetails]
GO
/****** Object:  Table [dbo].[DeliveryNote]    Script Date: 12/19/2018 2:30:14 PM ******/
DROP TABLE [dbo].[DeliveryNote]
GO
/****** Object:  Table [dbo].[DeliveryNoteDetails]    Script Date: 12/19/2018 2:30:52 PM ******/
DROP TABLE [dbo].[DeliveryNoteDetails]
GO
/****** Object:  Table [dbo].[CommType]    Script Date: 12/19/2018 2:27:34 PM ******/
/****** Object:  Table [dbo].[supplierPurchaseOrder]    Script Date: 12/18/2018 5:02:48 PM ******/
DROP TABLE [dbo].[supplierPurchaseOrder]
GO

/****** Object:  Table [dbo].[OrderConfirmation]    Script Date: 12/18/2018 5:07:51 PM ******/
DROP TABLE [dbo].[OrderConfirmation]
GO
/****** Object:  Table [dbo].[RFQSupplierShippingOrder]    Script Date: 12/18/2018 5:09:05 PM ******/
DROP TABLE [dbo].[RFQSupplierShippingOrder]
GO
/****** Object:  Table [dbo].[supplierPODetails]    Script Date: 12/19/2018 10:17:46 AM ******/
DROP TABLE [dbo].[supplierPODetails]
GO
/****** Object:  Table [dbo].[CustomerPODetails]    Script Date: 12/19/2018 10:18:59 AM ******/
DROP TABLE [dbo].[CustomerPODetails]
GO
/****** Object:  Table [dbo].[CustomerPurchaseOrder]    Script Date: 12/19/2018 10:18:37 AM ******/
DROP TABLE [dbo].[CustomerPurchaseOrder]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/19/2018 10:20:14 AM ******/
DROP TABLE [dbo].[Invoice]
GO
/****** Object:  Table [dbo].[Recieptreturn]    Script Date: 12/20/2018 6:05:42 PM ******/
DROP TABLE [dbo].[Recieptreturn]
GO
/****** Object:  Table [dbo].[PurchaseRegister]    Script Date: 21-12-2018 17:19:24 ******/
DROP TABLE [dbo].[PurchaseRegister]
GO
/****** Object:  Table [dbo].[SalesRegister]    Script Date: 21-12-2018 17:21:24 ******/
DROP TABLE [dbo].[SalesRegister]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 12/21/2018 4:23:34 PM ******/
DROP TABLE [dbo].[Accounts]
GO
/****** Object:  Table [dbo].[BalanceSheet]    Script Date: 12/21/2018 4:24:09 PM ******/
DROP TABLE [dbo].[BalanceSheet]
GO

/****** Object:  Table [dbo].[Payable]    Script Date: 12/21/2018 5:50:37 PM ******/
DROP TABLE [dbo].[Payable]
GO

/****** Object:  Table [dbo].[Receivable]    Script Date: 12/21/2018 5:51:41 PM ******/
DROP TABLE [dbo].[Receivable]
GO

/****** Object:  Table [dbo].[CommType]    Script Date: 08-12-2018 11:54:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CommType](
	[Email] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[Phone] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[CustomerQuote]    Script Date: 08-12-2018 11:55:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CustomerQuote](
	[CQuoteID] [int] NULL,
	[CustomerID] [int] NULL,
	[RFQID] [int] NULL,
	[QuoteResponseID] [int] NULL,
	[DocID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocTypes]    Script Date: 08-12-2018 11:55:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DocTypes](
	[RFQ] [varchar](50) NULL,
	[RFQDetails] [varchar](50) NULL,
	[Quote] [varchar](50) NULL,
	[PO] [varchar](50) NULL,
	[SO] [varchar](50) NULL,
	[Invoice] [varchar](max) NULL,
	[DeliveryNote] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 08-12-2018 11:56:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Documents](
	[DocID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
	[Extension] [varchar](50) NULL,
	[Content] [varchar](max) NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[UploadBy] [varchar](50) NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemPricing]    Script Date: 08-12-2018 11:56:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ItemPricing](
	[ItemPricingID] [int] NULL,
	[RFQID] [int] NULL,
	[RFQDetailID] [int] NULL,
	[QuoteResponseID] [int] NULL,
	[SupplierUnitPrice] [money] NULL,
	[SupplierTotal] [money] NULL,
	[UnitPriceMargin] [money] NULL,
	[TotalMargin] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderConfirmation]    Script Date: 08-12-2018 11:56:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[OrderConfirmation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RFQId] [int] NULL,
	[CustomerId] [int] NULL,
	[confirmedon] [datetime] NULL,
	[commtypeid] [int] NULL,
	[active] [int] NULL,
	[isPOSent] [datetime] NULL,
	[Posenton] [datetime] NULL,
	[RFQConfirmationId] [int] NULL
) ON [PRIMARY]


GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderConfirmationDocs]    Script Date: 08-12-2018 11:57:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderConfirmationDocs](
	[OrderConfirmationDocsID] [int] NULL,
	[OrderConfirmationID] [int] NULL,
	[DocID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 08-12-2018 11:57:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] NULL,
	[InvoiceID] [int] NULL,
	[SupplierID] [int] NULL,
	[Amount] [money] NULL,
	[ModeofPayment] [varchar](50) NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[ReceiptDoc] [varchar](max) NULL,
	[PaymentVoucher] [varchar](max) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 08-12-2018 11:57:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PurchaseOrder](
	[PurchaseOrderID] [int] NULL,
	[RFQID] [int] NULL,
	[RFQDetailID] [int] NULL,
	[SupplierID] [int] NULL,
	[RFQEstimation] [varchar](50) NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[EstimatedStart] [datetime] NULL,
	[EstimatedEnd] [datetime] NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuoteRequest]    Script Date: 08-12-2018 11:58:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[QuoteRequest](
	[RFQDetailID] [int] NULL,
	[SentOn] [varchar](50) NULL,
	[SentTo] [varchar](50) NULL,
	[IsReplyReceived] [varchar](50) NULL,
	[ReceivedOn] [datetime] NULL,
	[RFQID] [int] NULL,
	[SupplierID] [int] NULL,
	[UnitPrice] [money] NULL,
	[Total] [money] NULL,
	[CommType] [varchar](50) NULL,
	[Priority] [varchar](50) NULL,
	[IsSelected] [varchar](50) NULL,
	[IsApproved] [varchar](50) NULL,
	[SentEmailtoCustomer] [varchar](50) NULL,
	[DocID] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuoteRequestDocs]    Script Date: 08-12-2018 11:58:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[QuoteRequestDocs](
	[QRDocsID] [int] NULL,
	[DocID] [int] NULL,
	[QRID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuoteResponse]    Script Date: 08-12-2018 11:59:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[QuoteResponse](
	[QuoteResponseID] [int] NULL,
	[RFQDetailID] [int] NULL,
	[ReceivedOn] [datetime] NULL,
	[ReceivedFrom] [varchar](50) NULL,
	[IsReplyReceived] [varchar](50) NULL,
	[RFQID] [int] NULL,
	[SupplierID] [int] NULL,
	[UnitPrice] [money] NULL,
	[Total] [money] NULL,
	[CommType] [varchar](50) NULL,
	[Priority] [varchar](50) NULL,
	[IsSelected] [varchar](50) NULL,
	[IsApproved] [varchar](50) NULL,
	[SentEmailtoCustomer] [varchar](50) NULL,
	[QRID] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFQ]    Script Date: 08-12-2018 11:59:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[RFQ](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RFQID] [varchar](50) NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[RFQUID] [int] NULL,
	[RFQComType] [varchar](50) NULL,
	[CustomerId] [int] NULL,
	[CustomerEmail] [varchar](50) NULL,
	[CustomerPhoneno] [varchar](50) NULL,
	[CustomerFaxno] [varchar](50) NULL,
	[SmanagerId] [int] NULL,
	[Name] [varchar](50) NULL,
	[StatusId] [int] NULL,
	[Description] [varchar](250) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFQDetails]    Script Date: 08-12-2018 11:59:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[RFQDetails](
	[RFQID] [int] NULL,
	[ItemID] [int] NULL,
	[No] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[SMID] [int] NULL
) ON [PRIMARY]

GO


SET ANSI_PADDING OFF
GO	
/****** Object:  Table [dbo].[RFQDocs]    Script Date: 08-12-2018 12:00:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RFQDocs](
	[RFQDocsID] [int] NULL,
	[DocID] [int] NULL,
	[RFQID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RFQEstimation]    Script Date: 08-12-2018 12:00:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RFQEstimation](
	[RFQEstimationID] [int] NULL,
	[RFQID] [int] NULL,
	[RFQDetailID] [int] NULL,
	[DocID] [int] NULL,
	[QuoteResponseID] [int] NULL,
	[ItemPricingID] [int] NULL,
	[CustomerID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RFQStaff]    Script Date: 08-12-2018 12:00:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[RFQStaff](
	[RFQStaffID] [int] NULL,
	[RFQID] [int] NULL,
	[RFQDetailID] [int] NULL,
	[UserID] [int] NULL,
	[UserType] [varchar](50) NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/13/2018 6:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](500) NULL,
	[Active] [int] NOT NULL,
	[IsPublic] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShippingOrder]    Script Date: 08-12-2018 12:01:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ShippingOrder](
	[ShippingOrderID] [int] NULL,
	[SupplierInvoiceID] [int] NULL,
	[FromAddress] [varchar](50) NULL,
	[ToAddress] [varchar](50) NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[ArrivedOn] [datetime] NULL,
	[DeliveredOn] [datetime] NULL,
	[RFQID] [int] NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO


SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SupplierInvoice]    Script Date: 08-12-2018 12:02:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SupplierInvoice](
	[SupplierInvoiceID] [int] NULL,
	[RFQID] [int] NULL,
	[RFQDetailID] [int] NULL,
	[SupplierID] [int] NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[CommType] [varchar](50) NULL,
	[DocID] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransactionMaster]    Script Date: 08-12-2018 12:02:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TransactionMaster](
	[TransactionMasterID] [int] NULL,
	[Amount] [money] NULL,
	[Type] [varchar](50) NULL,
	[RFQDetail] [varchar](50) NULL,
	[RFQID] [int] NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 12/13/2018 6:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginInfo] [nvarchar](50) NOT NULL,
	[PassKey] [nvarchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[salt] [varchar](50) NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 12/13/2018 6:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[CompanyId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 08-12-2018 12:03:35 ******/
SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
	[EmpNo] [varchar](20) NOT NULL,
	[EmailId] [varchar](50) NOT NULL,
	[RoleId] [int] NULL,
	[CompanyId] [int] NULL,
	[Active] [int] NULL,
	[GenderId] [int] NULL,
	[ManagerId] [int] NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[ZipCode] [varchar](10) NULL,
	[ContactNo1] [varchar](20) NULL,
	[ContactNo2] [varchar](20) NULL,
	[Address] [varchar](500) NULL,
	[AltAddress] [varchar](500) NULL,
	[photo] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Active]  DEFAULT ((1)) FOR [Active]
GO



SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ObjectType]    Script Date: 11-12-2018 19:44:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ObjectType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](250) NULL,
	[Active] [int] NOT NULL,
	[DataTypeID] [int] NOT NULL,
 CONSTRAINT [PK_ObjectType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 11-12-2018 19:44:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Items](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](250) NULL,
	[ItemTypeId] [int] NULL,
	[ParentID] [int] NULL,
	[RootAssetID] [int] NOT NULL,
	[Path] [varchar](500) NOT NULL,
	[Active] [int] NOT NULL,
	[LocationId] [int] NULL,
	[ItemModelId] [int] NOT NULL,
	[CurrLocation] [int] NULL,
	[ManufactureId] [int] NULL,
	[RFQId] [varchar](100) NULL,
	[DatePurchased] [date] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[RFQRate] [decimal](18, 2) NULL,
	[Rental] [decimal](18, 2) NULL,
	[AdditionalDayRate] [decimal](18, 2) NULL,
	[DayRate] [decimal](18, 2) NULL,
	[PerWeekStbyCharge] [decimal](18, 2) NULL,
	[RedressCost] [decimal](18, 2) NULL,
	[DateSold] [date] NULL,
	[LostDamaged] [date] NULL,
	[Price] [decimal](18, 2) NULL,
	[CycleCountDate] [date] NULL,
	[StatusId] [int] NULL,
	[Locked] [int] NULL,
	[SerialNumber] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[CreatedId] [int] NULL,
	[UpdatedId] [int] NULL,
	[Condition] [int] NULL,
	[Material] [int] NULL,
	[PurchaseCost] [decimal](18, 2) NULL,
	[Customer] [int] NULL,
	[LostLIHDamaged] [varchar](250) NULL,
	[LocationDate] [date] NULL,
	[Notes] [varchar](250) NULL,
 CONSTRAINT [PK_Asset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemModelHierarchy]    Script Date: 11-12-2018 19:44:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ItemModelHierarchy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemModelId] [int] NOT NULL,
	[ObjTypeId] [int] NOT NULL,
	[ParentId] [int] NULL,
	[ParentObjTypeId] [int] NULL,
 CONSTRAINT [PK_ItemModelHierarchy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemModel]    Script Date: 11-12-2018 19:44:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ItemModel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](250) NULL,
	[ItemTypeId] [int] NOT NULL,
 CONSTRAINT [PK_ItemModel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFQResources]    Script Date: 11-12-2018 19:48:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RFQResources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RFQId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[FromDate] [date] NULL,
	[ToDate] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_RFQResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[RFQUsers]    Script Date: 11-12-2018 19:49:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RFQUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RFQId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[FromDate] [date] NULL,
	[ToDate] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_RFQUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditHistory]    Script Date: 11-12-2018 20:05:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EditHistory](
	[Field] [varchar](50) NOT NULL,
	[SubItem] [varchar](50) NOT NULL,
	[Comment] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[ChangedBy] [varchar](50) NOT NULL,
	[ChangedType] [varchar](50) NOT NULL,
	[Task] [varchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_EditHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[EditHistoryDetails]    Script Date: 11-12-2018 20:06:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EditHistoryDetails](
	[EditHistoryId] [int] NOT NULL,
	[FromValue] [varchar](50) NULL,
	[ToValue] [varchar](50) NULL,
	[ChangeType] [varchar](50) NOT NULL,
	[Field1] [varchar](50) NULL,
	[Field2] [varchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_EditHistoryDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[EditHistoryDetails]  WITH CHECK ADD  CONSTRAINT [FK_EditHistoryDetails_EditHistoryId] FOREIGN KEY([EditHistoryId])
REFERENCES [dbo].[EditHistory] ([Id])
GO

ALTER TABLE [dbo].[EditHistoryDetails] CHECK CONSTRAINT [FK_EditHistoryDetails_EditHistoryId]
GO
/****** Object:  Table [dbo].[TypeGroups]    Script Date: 11-12-2018 20:08:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventory](
	[Active] [int] NOT NULL,
	[availableQty] [int] NOT NULL,
	[category] [varchar](50) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[desc] [varchar](50) NOT NULL,
	[InventoryItemId] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[PerUnitPrice] [int] NOT NULL,
	[reorderpoint] [int] NOT NULL,
	[subcat] [varchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventoryItem]    Script Date: 13-12-2018 19:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventoryItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[InitialQuantity] [varchar](50) NULL,
	[Code] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[ReOrderPoint] [int] NOT NULL,
	[ItemImage] [varchar](max) NULL,
	[Price] [decimal](18, 2) NULL,
	[ItemModel] [varchar](50) NULL,
	[Features] [varchar](50) NULL,
	[PublishDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 13-12-2018 19:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SubCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](150) NULL,
	[CategoryId] [int] NOT NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TypeGroups]    Script Date: 13-12-2018 19:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TypeGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Types]    Script Date: 13-12-2018 19:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Types](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [int] NOT NULL,
	[TypeGroupId] [int] NOT NULL,
	[listkey] [varchar](10) NULL,
	[listvalue] [varchar](20) NULL
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[Customer]    Script Date: 12/13/2018 6:36:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[CustomerCode] [varchar](20) NULL,
	[shippingaddress] [varchar](250) NULL,
	[billingaddress] [varchar](250) NULL,
	[ContactNo] [varchar](15) NULL,
	[ContactNo1] [varchar](15) NULL,
	[Email] [varchar](250) NULL,
	[Active] [int] NULL
) ON [PRIMARY]


GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 12/13/2018 6:36:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[SupplierCode] [varchar](20) NULL,
	[shippingaddress] [varchar](250) NULL,
    [billingaddress] [varchar](250) NULL,
	[ContactNo] [varchar](15) NULL,
	[ContactNo1] [varchar](15) NULL,
	[Email] [varchar](250) NULL,
	[Active] [int] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[RFQSuppliers]    Script Date: 13-12-2018 19:01:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[RFQSuppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RFQId] [int] NULL,
	[RFQItemId] [int] NULL,
	[SupplierId] [int] NULL,
	[NoOfUnits] [int] NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[Discounts] [decimal](18, 0) NULL,
	[Charges] [decimal](18, 0) NULL,
	[SubTotal] [decimal](18, 0) NULL,
	[IsenquireSent] [varchar](50) NULL,
	[EnquirySentOn] [datetime] NULL,
	[isQuoteRecived] [varchar](10) NULL,
	[QuoteRecivedOn] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFQDraftEstimation]    Script Date: 13-12-2018 19:02:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[RFQDraftEstimation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RFQId] [int] NULL,
	[RFQItemId] [int] NULL,
	[RFQSupplierId] [int] NULL,
	[NoOfUnits] [int] NULL,
	[DealerUnitPrice] [decimal](18, 0) NULL,
	[DealerDiscount] [decimal](18, 0) NULL,
	[DealerCharges] [decimal](18, 0) NULL,
	[DealerSubTotal] [decimal](18, 0) NULL,
	[DealerMargin] [decimal](18, 0) NULL,
	[Subtotal] [decimal](18, 0) NULL,
	[IsApproved] [varchar](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFQCustomerEstimation]    Script Date: 13-12-2018 19:03:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[RFQCustomerEstimation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RFQId] [int] NULL,
	[RFQItemId] [int] NULL,
	[RFQSupplierId] [int] NOT NULL,
	[NoOfUnits] [decimal](18, 0) NULL,
	[FinaUnitPrice] [decimal](18, 0) NULL,
	[FinalDiscount] [decimal](18, 0) NULL,
	[FinalCharges] [decimal](18, 0) NULL,
	[FinalSubTotal] [decimal](18, 0) NULL,
	[Subtotal] [decimal](18, 0) NULL,
	[IsQuoteSent] [varchar](10) NULL,
	[QuoteSentOn] [datetime] NULL,
	[CustomerApproved] [varchar](10) NULL,
	[ApprovedOn] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFQSupplierInvoices]    Script Date: 13-12-2018 19:03:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[RFQSupplierInvoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RFQId] [int] NULL,
	[RFQSupplierId] [int] NULL,
	[InvoiceRequetSent] [varchar](50) NULL,
	[InvoiceRequetSentOn] [datetime] NULL,
	[InvoicedRecived] [varchar](50) NULL,
	[InvoicedRecivedOn] [datetime] NULL,
	[SupplierId] [int] NULL,
	[RFQDraftEstimationId] [int] NULL,
	[RFQCustomerEstimationId] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFQSupplierShippingOrder]    Script Date: 13-12-2018 19:04:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[RFQSupplierShippingOrder](
	[Id] [int] NOT NULL,
	[RFQId] [int] NULL,
	[RFQSupplierId] [int] NULL,
	[ShippingOrderRequetSent] [varchar](10) NULL,
	[ShippingOrderRequetSentOn] [datetime] NULL,
	[GoodsRecived] [varchar](10) NULL,
	[GoodsRecivedOn] [datetime] NULL,
	[SupplierId] [int] NULL
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[supplierPurchaseOrder]    Script Date: 12/17/2018 11:10:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[supplierPurchaseOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RFQId] [int] NULL,
	[RFQConfirmationId] [int] NULL,
	[PONum] [int] NULL,
	[PODate] [date] NULL,
	[SupplierId] [int] NULL,
	[PoSenton] [datetime] NULL,
	[isPOSent] [datetime] NULL,
	[PODocId] [int] NULL,
	[ShippingMethod] [int] NULL,
	[ShippingTerms] [int] NULL,
	[DeliveryDate] [date] NULL,
	[POSubTotal] [decimal](18, 2) NULL,
	[POCharges] [decimal](18, 2) NULL,
	[PODiscounts] [decimal](18, 2) NULL,
	[POTotal] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[supplierPODetails]    Script Date: 12/17/2018 11:11:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[supplierPODetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[POId] [int] NULL,
	[RFQItemId] [int] NULL,
	[NoOfUnits
UnitPrice] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[charges] [decimal](18, 2) NULL,
	[discounts] [decimal](18, 2) NULL,
	[subtotal] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerPurchaseOrder]    Script Date: 12/17/2018 11:12:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CustomerPurchaseOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RFQId] [int] NULL,
	[RFQConfirmationId] [int] NULL,
	[PONum] [int] NULL,
	[PODate] [date] NULL,
	[SupplierId] [int] NULL,
	[PoSenton] [datetime] NULL,
	[isPOSent] [int] NULL,
	[PODocId] [varchar](max) NULL,
	[ShippingMethod] [int] NULL,
	[ShippingTerms] [int] NULL,
	[DeliveryDate] [date] NULL,
	[POSubTotal] [decimal](18, 2) NULL,
	[POCharges] [decimal](18, 2) NULL,
	[PODiscounts] [decimal](18, 2) NULL,
	[POTotal] [decimal](18, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CustomerPODetails]    Script Date: 12/17/2018 11:13:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CustomerPODetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[POId] [int] NULL,
	[RFQItemId] [int] NULL,
	[NoOfUnits] [int] NULL,
	[DealerUnitPrice] [decimal](18, 2) NULL,
	[Dealercharges] [decimal](18, 2) NULL,
	[Dealerdiscounts] [decimal](18, 2) NULL,
	[subtotal] [decimal](18, 2) NULL,
	[SupplierUnitPrice] [decimal](18, 2) NULL,
	[SupplierDiscount] [decimal](18, 2) NULL,
	[SupplierCharges] [decimal](18, 2) NULL,
	[Othercharges] [decimal](18, 2) NULL,
	[total] [decimal](18, 2) NULL
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Invoice]    Script Date: 12/17/2018 11:14:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Invoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNo] [int] NULL,
	[POId] [int] NULL,
	[PONum] [int] NULL,
	[invoicedate] [datetime] NULL,
	[paymentmodeid] [int] NULL,
	[supplierid] [int] NULL,
	[receivedon] [datetime] NULL,
	[isapproved] [varchar](250) NULL,
	[ispaid] [varchar](250) NULL,
	[paidOn] [datetime] NULL,
	[OrderconfirmationId] [int] NULL,
	[RFQId] [int] NULL,
	[InvoiceSubTotal] [decimal](18, 2) NULL,
	[InvoiceCharges] [decimal](18, 2) NULL,
	[InvoiceDiscounts] [decimal](18, 2) NULL,
	[InvoiceTotal] [decimal](18, 2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 12/19/2018 2:29:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InvoiceDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[POId] [int] NULL,
	[RFQItemId] [int] NULL,
	[NoOfUnits] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[charges] [decimal](18, 2) NULL,
	[discounts] [decimal](18, 2) NULL,
	[subtotal] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryNote]    Script Date: 12/19/2018 2:30:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DeliveryNote](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RFQId] [int] NULL,
	[POId] [int] NULL,
	[DeliveryNoteNo] [int] NULL,
	[SupplierId] [int] NULL,
	[DispatchDate] [datetime] NULL,
	[Deliverymethod] [varchar](50) NULL,
	[IsDelivered] [varchar](50) NULL,
	[DeliveredOn] [datetime] NULL,
	[TotalItems] [int] NULL,
	[InvoiceAddress] [varchar](250) NULL,
	[CustomerAddress] [varchar](250) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeliveryNoteDetails]    Script Date: 12/19/2018 2:30:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DeliveryNoteDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryNoteId] [int] NULL,
	[RFQItemId] [int] NULL,
	[NoOfUnitsOrdered] [int] NULL,
	[NoOfUnitsDelivered] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recieptreturn]    Script Date: 12/20/2018 6:05:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Recieptreturn](
	[PurchaseOrderId] [int] IDENTITY(1,1) NOT NULL,
	[item] [varchar](50) NULL,
	[noofUnits] [int] NULL,
	[returnedon] [datetime] NULL,
	[returnedBy] [varchar](50) NULL,
	[comment] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BalanceSheet]    Script Date: 12/21/2018 4:24:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[BalanceSheet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromId] [varchar](50) NULL,
	[AccountName] [varchar](100) NULL,
	[AccountCode] [varchar](50) NULL,
	[Debit] [decimal](18, 2) NULL,
	[Credit] [decimal](18, 2) NULL,
	[Ammount] [decimal](18, 2) NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 12/21/2018 4:23:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Accounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [varchar](500) NULL,
	[AccountNumber] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[AccountCode] [varchar](50) NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
GO

/****** Object:  Table [dbo].[PurchaseRegister]    Script Date: 21-12-2018 17:19:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PurchaseRegister](
    [Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NULL,
	[NoofUnits] [int] NULL,
	[PurchasedOn] [datetime] NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[Charges] [decimal](18, 0) NULL,
	[Discount] [decimal](18, 0) NULL,
	[SubTotal] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[SalesRegister]    Script Date: 21-12-2018 17:21:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SalesRegister](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NULL,
	[NoofUnits] [int] NULL,
	[SoldOn] [datetime] NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[Charges] [decimal](18, 0) NULL,
	[Discount] [decimal](18, 0) NULL,
	[SubTotal] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
GO

/****** Object:  Table [dbo].[Payable]    Script Date: 12/21/2018 5:50:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Payable](
	[RFQId] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Paiddate] [datetime] NULL,
	[ActualReceivedDate] [datetime] NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Receivable]    Script Date: 12/21/2018 5:51:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Receivable](
	[RFQId] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[AccountCode] [varchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[ReceivedByDate] [datetime] NULL,
	[ActualReceivedDate] [datetime] NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO