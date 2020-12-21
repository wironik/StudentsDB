set ansi_nulls on
go
set quoted_identifier on
go

create trigger [Индикатор добавления]
on dbo.Студенты
after insert
as
begin
set nocount on;
print 'Запись добавлена'
end
go