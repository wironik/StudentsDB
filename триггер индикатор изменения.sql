set ansi_nulls on
go
set quoted_identifier on
go

create trigger [Индикатор изменения]
on dbo.Студенты
after update
as
begin
set nocount on;
print 'Запись изменена'
end
go