

--��Ʒѡ��ģ����ѯ
create proc SelectProductBySpellingCode
@spellingCode nvarchar(40)
as
select * from TBL_Product where SpellingCode like '%'+ @spellingCode + '%'

