set ansi_nulls on
go
set quoted_identifier on
go

create trigger [�������� ��������]
on dbo.��������
instead of delete
as
begin
set nocount on;
delete ������ from deleted
where deleted.[��� ��������]=������.[��� ��������]
delete �������� from deleted 
where deleted.[��� ��������]=��������.[��� ��������]
end
go