set ansi_nulls on
go
set quoted_identifier on
go

create trigger [Удаление студента]
on dbo.Студенты
instead of delete
as
begin
set nocount on;
delete Оценки from deleted
where deleted.[Код студента]=оценки.[Код студента]
delete Студенты from deleted 
where deleted.[Код студента]=Студенты.[Код студента]
end
go