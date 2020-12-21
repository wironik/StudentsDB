-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [Последний день месяца] 
(
	-- Add the parameters for the function here
	@MyDate Datetime
)
RETURNS datetime
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Year Int 
	DECLARE @Month Int
	DECLARE @Day Int 
	DECLARE @TmpDate VarChar(10) 
	DECLARE @Result DateTime

	SET @Year=DatePart(yy, @MyDate)
	SET @Month=DatePart(mm, @MyDate)
	SET @Day=DatePart(dd, @MyDate)

	IF @Month=12
		BEGIN
			SET @Month=1
			SET @Year=@Year+1
		END
	ELSE
		BEGIN
			SET @Month=@Month+1
		END

	-- Add the T-SQL statements to compute the return value here
	SET @TmpDate=Convert(Varchar, @Month)+'/01/'+Convert(Varchar, @Year) 
	SET @Result=Convert(DateTime, @TmpDate)
	SET @Result=DateAdd(dd, -1, @Result) 

	-- Return the result of the function
	RETURN @Result

END
GO

