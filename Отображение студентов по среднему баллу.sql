-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Отображение студентов по среднему баллу]
	-- Add the parameters for the stored procedure here
	@Grade Real=0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Студенты.ФИО AS [ФИО студента], Оценки.[Дата экзамена 1] AS [Дата первого экзамена], 
Предметы.[Наименование предмета] AS [Наименование предмета первого экзамена], 
Оценки.[Оценка 1] AS [Оценка первого экзамена], Оценки.[Дата экзамена 2] AS [Дата второго экзамена], 
[Предметы_1].[Наименование предмета] AS [Наименование предмета второго экзамена], 
Оценки.[Оценка 2] AS [Оценка второго экзамена], Оценки.[Дата экзамена 3] AS [Дата третьего экзамена], 
[Предметы_2].[Наименование предмета] AS [Наименование предмета третьего экзамена], 
Оценки.[Оценка 3] AS [Оценка третьего экзамена], Оценки.[Средний балл] AS [Средний балл студента за сессию]
FROM Студенты INNER JOIN
Предметы [Предметы_2] INNER JOIN
Предметы INNER JOIN
Оценки ON Предметы.[Код предмета] = Оценки.[Код предмета 1] INNER JOIN
Предметы [Предметы_1] ON Оценки.[Код предмета 2] = [Предметы_1].[Код предмета] 
ON [Предметы_2].[Код предмета] = Оценки.[Код предмета 3] ON Студенты.[Код студента] = Оценки.[Код студента]
 WHERE (Оценки.[Оценка 1]+Оценки.[Оценка 2]+Оценки.[Оценка 3])/3>@Grade 
END
GO
