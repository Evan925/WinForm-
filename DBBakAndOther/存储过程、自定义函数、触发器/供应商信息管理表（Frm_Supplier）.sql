--1.�����¼�¼
CREATE PROC supp_InsertSupplier
@SupplierID nvarchar(6),
@SupplierName nvarchar(80),
@SpellingCode nvarchar(20),
@Address nvarchar(80),
@ZipCode char(6),
@Tel nvarchar(20),
@Fax nvarchar(20),
@BankName nvarchar(40),
@BankAccount nvarchar(50),
@Contacter nvarchar(20),
@Email nvarchar(30)
as
insert TBL_Supplier values(@SupplierID,@SupplierName,@SpellingCode,@Address,@ZipCode,@Tel,@Fax,@BankName,@BankAccount,@Contacter,@Email)
return


exec supp_InsertSupplier '2','��Ӧ��','��Ӧ�̵�Code','��Ӧ�̵�ַ','�ʱ�','�绰','��֪��','��������','4564654654654564654','�����֪��','123456@qq.com'


--2.ɾ����¼
create proc supp_DeleteSupplierBySupplierID
@SupplierID nvarchar(6)
as
delete TBL_Supplier where SupplierID=@SupplierID
return

exec supp_DeleteSupplierBySupplierID '1'



--3.���¼�¼
create proc supp_UpdateSupplierBySupplierID
@SupplierID nvarchar(6),
@SupplierName nvarchar(80),
@SpellingCode nvarchar(20),
@Address nvarchar(80),
@ZipCode char(6),
@Tel nvarchar(20),
@Fax nvarchar(20),
@BankName nvarchar(40),
@BankAccount nvarchar(50),
@Contacter nvarchar(20),
@Email nvarchar(30)
as
update TBL_Supplier
set SupplierName=@SupplierName,SpellingCode=@SpellingCode,Address=@Address,ZipCode=@ZipCode,Tel=@Tel,Fax=@Fax,BankName=@BankName,BankAccount=@BankAccount,@Contacter=@Contacter,Email=@Email
where SupplierID=@SupplierID
return

exec supp_UpdateSupplierBySupplierID '1','��Ӧ��2','��Ӧ�̵�Code2','��Ӧ�̵�ַ2','�ʱ�2','�绰2','��֪��2','��������2','45646546546545646542','�����֪��2','2123456@qq.com'



--4.��ѯ���м�¼
create proc supp_GetAllSupplier
as
select * from TBL_Supplier
return

exec supp_GetAllSupplier


--5.����SupplierID��ѯ��¼
create proc supp_GetAllSupplierBySupplierID
@SupplierID nvarchar(6)
as
select * from TBL_Supplier where SupplierID=@SupplierID
return

exec supp_GetAllSupplierBySupplierID '1'