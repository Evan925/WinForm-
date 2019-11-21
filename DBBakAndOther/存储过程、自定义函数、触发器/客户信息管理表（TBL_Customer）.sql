


--1.�����¼�¼

CREATE PROC cust_InsertCustomer
@CustomerID nvarchar(6),
@CustomerName nvarchar(80),
@SpellingCode nvarchar(20),
@Address nvarchar(80),
@ZipCode char(6),
@Tel nvarchar(20),
@Fax nvarchar(20),
@BankName nvarchar(40),
@BankAccount nvarchar(50),
@Contacter nvarchar(20),
@Email nvarchar(30)
AS
INSERT TBL_Customer VALUES(@CustomerID,@CustomerName,@SpellingCode,@Address,@ZipCode,@Tel,@Fax,@BankName,@BankAccount,@Contacter,@Email)
RETURN


EXEC cust_InsertCustomer '12','Ī','666666','������������','222222','3333333331','��','��������','5456465441234564123','��','1123132@qq.com'



--2.ɾ����¼
create proc cust_DeleteCustomerByCustomerID
@CustomerID nvarchar(6)
as
delete TBL_Customer where CustomerID=@CustomerID
return

exec prod_DeleteCustomerByCustomerID '123'



--3.���¼�¼
create proc cust_UpdateCustomerByCustomerID
@CustomerID nvarchar(6),
@CustomerName nvarchar(80),
@SpellingCode nvarchar(20),
@Address nvarchar(80),
@ZipCode char(6),
@Tel nvarchar(20),
@Fax nvarchar(20),
@BankName nvarchar(40),
@BankAccount nvarchar(50),
@Contacter nvarchar(20),
@Email nvarchar(30)
AS
update TBL_Customer 
set CustomerName=@CustomerName,SpellingCode=@SpellingCode,Address=@Address,ZipCode=@ZipCode,Tel=@Tel,Fax=@Fax,BankName=@BankName,BankAccount=@BankAccount,Contacter=@Contacter,Email=@Email
where CustomerID=@CustomerID
return

exec cust_UpdateCustomerByCustomerID '1','Ī1','6666661','����1','2222221','33333333311','��1','��������1','54564654412345641231','��1','11123132@qq.com'



--4.��ѯ���м�¼
create proc cust_GetAllCustomer
as
select * from TBL_Customer
return

exec cust_GetAllCustomer



--5.����CustomerID��ѯ��¼
create proc cust_GetAllCustomerByCustomerID
@CustomerID nvarchar(6)
as
select * from TBL_Customer where CustomerID=@CustomerID
return

exec cust_GetAllCustomerByCustomerID '12'