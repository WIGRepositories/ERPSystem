/****** Object:  Table [dbo].[CommType]    Script Date: 08-12-2018 11:54:15 ******/
DROP TABLE [dbo].[CommType]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 08-12-2018 11:54:59 ******/
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[CustomerQuote]    Script Date: 08-12-2018 11:55:18 ******/
DROP TABLE [dbo].[CustomerQuote]
GO
/****** Object:  Table [dbo].[DocTypes]    Script Date: 08-12-2018 11:55:46 ******/
DROP TABLE [dbo].[DocTypes]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 08-12-2018 11:56:05 ******/
DROP TABLE [dbo].[Documents]
GO
/****** Object:  Table [dbo].[ItemPricing]    Script Date: 08-12-2018 11:56:34 ******/
DROP TABLE [dbo].[ItemPricing]
GO
/****** Object:  Table [dbo].[OrderConfirmation]    Script Date: 08-12-2018 11:56:56 ******/
DROP TABLE [dbo].[OrderConfirmation]
GO
/****** Object:  Table [dbo].[OrderConfirmationDocs]    Script Date: 08-12-2018 11:57:14 ******/
DROP TABLE [dbo].[OrderConfirmationDocs]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 08-12-2018 11:57:29 ******/
DROP TABLE [dbo].[Payment]
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 08-12-2018 11:57:49 ******/
DROP TABLE [dbo].[PurchaseOrder]
GO
/****** Object:  Table [dbo].[QuoteRequest]    Script Date: 08-12-2018 11:58:11 ******/
DROP TABLE [dbo].[QuoteRequest]
GO
/****** Object:  Table [dbo].[QuoteRequestDocs]    Script Date: 08-12-2018 11:58:32 ******/
DROP TABLE [dbo].[QuoteRequestDocs]
GO
/****** Object:  Table [dbo].[QuoteResponse]    Script Date: 08-12-2018 11:59:00 ******/
DROP TABLE [dbo].[QuoteResponse]
GO
/****** Object:  Table [dbo].[RFQ]    Script Date: 08-12-2018 11:59:16 ******/
DROP TABLE [dbo].[RFQ]
GO
/****** Object:  Table [dbo].[RFQDetails]    Script Date: 08-12-2018 11:59:56 ******/
DROP TABLE [dbo].[RFQDetails]
GO
/****** Object:  Table [dbo].[RFQDocs]    Script Date: 08-12-2018 12:00:14 ******/
DROP TABLE [dbo].[RFQDocs]
GO
/****** Object:  Table [dbo].[RFQEstimation]    Script Date: 08-12-2018 12:00:38 ******/
DROP TABLE [dbo].[RFQEstimation]
GO
/****** Object:  Table [dbo].[RFQStaff]    Script Date: 08-12-2018 12:00:53 ******/
DROP TABLE [dbo].[RFQStaff]
GO
/****** Object:  Table [dbo].[ShippingOrder]    Script Date: 08-12-2018 12:01:28 ******/
DROP TABLE [dbo].[ShippingOrder]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 08-12-2018 12:01:55 ******/
DROP TABLE [dbo].[Supplier]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08-12-2018 12:01:14 ******/
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[SupplierInvoice]    Script Date: 08-12-2018 12:02:11 ******/
DROP TABLE [dbo].[SupplierInvoice]
GO
/****** Object:  Table [dbo].[TransactionMaster]    Script Date: 08-12-2018 12:02:39 ******/
DROP TABLE [dbo].[TransactionMaster]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 08-12-2018 12:02:57 ******/
DROP TABLE [dbo].[UserLogin]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 08-12-2018 12:03:18 ******/
DROP TABLE [dbo].[UserRoles]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 08-12-2018 12:03:35 ******/
DROP TABLE [dbo].[Users]
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
/****** Object:  Table [dbo].[Customer]    Script Date: 08-12-2018 11:54:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NULL,
	[CustomerName] [varchar](50) NULL,
	[CustomerCode] [varchar](50) NULL,
	[CustomerAddress] [varchar](50) NULL,
	[CustomerContact1] [varchar](50) NULL,
	[CustomerContact2] [varchar](50) NULL,
	[CustomerEmail] [varchar](50) NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
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
	[DocID] [int] NULL,
	[Type] [varchar](50) NULL,
	[Extension] [varchar](50) NULL,
	[Content] [varchar](50) NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[UploadBy] [varchar](50) NULL,
	[LastUpdatedOn] [datetime] NULL
) ON [PRIMARY]

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
	[OrderConfirmationID] [int] NULL,
	[RFQID] [int] NULL,
	[CustomerID] [int] NULL,
	[ConfirmedOn] [datetime] NULL,
	[CommType] [varchar](50) NULL,
	[Active] [int] NULL
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
	[RFQID] [int] NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[RFQUID] [int] NULL,
	[RFQComType] [varchar](50) NULL,
	[CustomerName] [varchar](50) NULL,
	[CustomerEmail] [varchar](50) NULL,
	[CustomerPhoneno] [varchar](50) NULL,
	[CustomerFaxno] [varchar](50) NULL
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
/****** Object:  Table [dbo].[Role]    Script Date: 08-12-2018 12:01:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Role](
	[RoleID] [int] NULL,
	[Name] [varchar](50) NULL
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
/****** Object:  Table [dbo].[Supplier]    Script Date: 08-12-2018 12:01:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] NULL,
	[SupplierName] [varchar](50) NULL,
	[SupplierCode] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Contact1] [varchar](50) NULL,
	[Contact2] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[UserLogin]    Script Date: 08-12-2018 12:02:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserLogin](
	[ULID] [int] NULL,
	[UserID] [int] NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[Active] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 08-12-2018 12:03:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserRoles](
	[URID] [int] NULL,
	[UserID] [int] NULL,
	[RoleID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 08-12-2018 12:03:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Users](
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO