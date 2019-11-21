
--���¶�������Ʒ������ ���۸����ۼ۸�
create trigger purchaseBill_Update on TBL_PurchaseBill
after update
as
if update(OnProcess)
begin
declare @oldOnProcess smallint,@newOnProcess smallint,@purchaseID nchar(12)

select @oldOnProcess=OnProcess from deleted
select @newOnProcess=OnProcess,@purchaseID=PurchaseID from inserted 

if(@oldOnProcess=0 and @newOnProcess=2)
	begin 
	update p
	set p.PurchasePrice=(p.PurchasePrice*p.Quantity+d.PurchasePrice*d.Quantity)/(p.Quantity+d.Quantity),
	p.SalePrice=p.SalePrice*1.1,
	p.Quantity=p.Quantity+d.Quantity
	from TBL_Product as p join (select * from TBL_PurchaseDetail where PurchaseID=@purchaseID) as d on p.ProductID=d.ProductID
	end 
end






 --�û�Ȩ�޹���

--1.�����һ��Ա����ʱ�����һ��ϵͳ���û������봥����
create trigger Employee_insert on TBL_Employee
after insert
as 
begin
declare @UserID nvarchar(6)
select @UserID=EmployeeID from inserted

insert  TBL_SystemUser values(@UserID,'111',0,0,0,1)
end

 
--2.ɾ��һ��Ա����ʱ��ɾ��һ��ϵͳ���û���ɾ��������
create trigger Employee_delete on TBL_Employee
after delete
as
begin
declare @UserID nvarchar(6)
select @UserID=EmployeeID from  deleted

delete  TBL_SystemUser  where UserID=@UserID
end