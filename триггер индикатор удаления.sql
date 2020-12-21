set ansi_nulls on
go
set quoted_identifier on
go

create trigger [Индикатор удаления]
on dbo.Студенты
after delete
as
begin
set nocount on;
print 'Запись удалена'
end
go