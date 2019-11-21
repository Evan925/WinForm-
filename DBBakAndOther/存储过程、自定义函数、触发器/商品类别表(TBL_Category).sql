
use EntersSellsSaves

--1.�����¼�¼
create proc cate_InsertCategory
@categoryID nvarchar(6),
@categoryName nvarchar(80)
as
insert TBL_Category values (@categoryID,@categoryName)
return

exec cate_InsertCategory'5','����'


--2.ɾ����¼
create proc cate_DeleteCategoryByCategoryID
@categoryID nvarchar(6)
as
delete TBL_Category where CategoryID=@categoryID
return

exec cate_DeleteCategoryByCategoryID '4'


--3.���¼�¼
create proc cate_UpdataCategoryByCategoryID
@categoryID nvarchar(6),
@categoryName nvarchar(80)
as
update TBL_Category
set CategoryName=@categoryName
where CategoryID=@categoryID
return

exec cate_UpdataCategoryByCategoryID '5','���ܹ�'


--4.��ѯ���м�¼
create proc cate_GetAllCategory
as
select * from TBL_Category
return

exec cate_GetAllCategory


--5.����CategoryID��ѯ��¼
create proc cate_GetAllCategoryByCategoryID
@categoryID nvarchar(6)
as
select * from TBL_Category where CategoryID=@categoryID
return

exec cate_GetAllCategoryByCategoryID '3'