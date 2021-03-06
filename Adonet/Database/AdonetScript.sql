USE [Employee]
GO
/****** Object:  StoredProcedure [dbo].[spr_deleteEmployeeDetails]    Script Date: 04/08/2020 07:10:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
 
 GO
  ALTER PROCEDURE [dbo].[spr_getEmployeeDetails]
  AS
  BEGIN
  SELECT  * FROM employeeDetails order by 1 desc 
  END

 
 go

   ALTER procedure [dbo].[spr_insertEmployee]
  @EmpName char(50) ,
  @EmpSalary int
  AS
  BEGIN
  Insert into employeeDetails(empname,empsalary)values(@EmpName,@EmpSalary)
  END
 
 
 
  ALTER PROCEDURE [dbo].[spr_getEmployeeDetailsbyId]
  @empid int
  AS
  BEGIN
  SELECT * FROM employeeDetails where empid=@empid
  END

 
 
GO
  ALTER PROCEDURE [dbo].[spr_updateEmployeeDetails]
  @empid int,
  @empname nvarchar(50),
  @empsalary int
  AS
  BEGIN
  update employeeDetails set empname=@empname,empsalary=@empsalary where empid=@empid
  END 
 
 
 
 
  ALTER PROCEDURE [dbo].[spr_deleteEmployeeDetails]
  @empid int
  AS
  BEGIN
  Delete from employeeDetails  where empid=@empid
  END