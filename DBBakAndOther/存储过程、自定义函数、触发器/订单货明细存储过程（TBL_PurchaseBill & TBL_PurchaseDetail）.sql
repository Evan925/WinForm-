
use EntersSellsSaves

--����PurchaseID ��ѯ ������Ϣ����TBL_PurchaseBill��
create proc GetPurchaseBillAll
@PurchaseID nchar(12)
as
select * from TBL_PurchaseBill where PurchaseID=@PurchaseID


exec GetPurchaseBillAll ''

--����PurchaseID ��ѯ ������ϸ����:TBL_PurchaseDetail ��
create proc GetPurchaseDetailAll
@PurchaseID nchar(12)
as
select * from TBL_PurchaseDetail where PurchaseID=@PurchaseID

exec GetPurchaseDetailAll ''



--���ݽ�������Ÿ��¶�����¼
create proc bill_UpdatePurchaseBillByPurchaseID
@PurchaseID nchar(12),
@SupplierID nvarchar(6),
@PurchaseDate datetime,
@StockDate datetime,
@Clerk nvarchar(6),
@Examiner nvarchar(6),
@Custodian nvarchar(6),
@OnProcess smallint,
@Memo nvarchar(100)
as
update TBL_PurchaseBill 
set SupplierID=@SupplierID,PurchaseDate=@PurchaseDate,StockDate=@StockDate,Clerk=@Clerk,Examiner=@Examiner,Custodian=@Custodian,OnProcess=@OnProcess,Memo=@Memo
where PurchaseID=@PurchaseID

exec bill_UpdatePurchaseBillByPurchaseID '','','','','','','','',''



--����������ϸ��¼
create proc InsertPurchaseDetail
@PurchaseID nchar(12),
@PurchaseDetailID smallint,
@ProductID nvarchar(6),
@PurchasePrice decimal(18,2),
@Quantity int
as
insert TBL_PurchaseDetail values(@PurchaseID,@PurchaseDetailID,@ProductID,@PurchasePrice,@Quantity)


exec InsertPurchaseDetail '','','','',''



--���ݶ������ɾ��������ϸ��¼
create proc DeletePurchaseDetailByPurchaseID
@PurchaseID nchar(12)
as
delete TBL_PurchaseDetail where PurchaseID=@PurchaseID


exec DeletePurchaseDetailByPurchaseID ''



--�����µĶ���
create proc bill_InsertPurchaseBill
@PurchaseID nchar(12),
@SupplierID nvarchar(6),
@PurchaseDate datetime,
@StockDate datetime,
@Clerk nvarchar(6),
@Examiner nvarchar(6),
@Custodian nvarchar(6),
@OnProcess smallint,
@Memo nvarchar(100)
as
insert TBL_PurchaseBill values(@PurchaseID ,@SupplierID,@PurchaseDate,@StockDate,@Clerk ,@Examiner,@Custodian,@OnProcess,@Memo)



--ɾ������
create proc bill_DeletePurchaseBill
@PurchaseID nchar(12)
as
delete TBL_PurchaseBill where PurchaseID=PurchaseID