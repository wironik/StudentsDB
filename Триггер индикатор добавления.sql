set ansi_nulls on
go
set quoted_identifier on
go

create trigger [��������� ����������]
on dbo.��������
after insert
as
begin
set nocount on;
print '������ ���������'
end
go