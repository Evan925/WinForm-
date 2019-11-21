
--�����ݱ�Ų�ѯ
alter proc purc_FindPurchaseIDByID
@PurchaseID nvarchar(12)
as
select PurchaseID from TBL_PurchaseBill where PurchaseID like '%'+@PurchaseID+'%'

exec purc_FindPurchaseIDByID '1'

--��ҵ��Ա��ѯ
alter proc purc_FindPurchaseIDByClerk
@EmployeeName nvarchar(80) 
as
select PurchaseID from TBL_PurchaseBill as pb,TBL_Employee as el where pb.Examiner=el.EmployeeID and EmployeeName like '%'+@EmployeeName+'%'

exec purc_FindPurchaseIDByClerk 'Ī'

--�����Ա��ѯ
alter proc purc_FindPurchaseIDByExaminer
@EmployeeName nvarchar(80)
as
select PurchaseID from TBL_PurchaseBill as pb,TBL_Employee as el where pb.Clerk=el.EmployeeID and EmployeeName like '%'+@EmployeeName+'%'

exec purc_FindPurchaseIDByExaminer 'Ī'

--�����״̬��ѯ
alter proc purc_FindPurchaseIDByOnProcess
@OnProcess smallint
as
select PurchaseID from TBL_PurchaseBill where  OnProcess=@OnProcess

exec purc_FindPurchaseIDByOnProcess 1

--���������ڲ�ѯ
alter proc purc_FindPurchaseIDByPurchaseDate
@BeginPurchaseDate datetime,
@EndPurchaseDate datetime
as
select PurchaseID from TBL_PurchaseBill where PurchaseDate>=@BeginPurchaseDate and PurchaseDate<=@EndPurchaseDate

exec purc_FindPurchaseIDByPurchaseDate '2015-05-01','2017-01-01'
