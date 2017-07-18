class PagesController < ApplicationController
  def profile
  	@employee_reports = current_user.employee_reports.all
  	@employee_tasks = current_user.employee_tasks.all
  end

  def root
  	@user = User.all
  	@employee_reports = EmployeeReport.all
  	@employee_tasks = EmployeeTask.all
  end

  def manager 
  	@user = User.all
  	@employee_reports = EmployeeReport.all
  	@employee_tasks = EmployeeTask.all
  end
end
