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
CREATE FUNCTION [������� ������� ���� �������] 
(
	-- Add the parameters for the function here
	@Value1 int, @Value2 int, @Value3 int
)
RETURNS Real
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result Real

	-- Add the T-SQL statements to compute the return value here
	SELECT @Result=(@Value1+ @Value2+ @Value3)/3

	-- Return the result of the function
	RETURN @Result

END
GO

