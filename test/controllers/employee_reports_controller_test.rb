require 'test_helper'

class EmployeeReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_report = employee_reports(:one)
  end

  test "should get index" do
    get employee_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_report_url
    assert_response :success
  end

  test "should create employee_report" do
    assert_difference('EmployeeReport.count') do
      post employee_reports_url, params: { employee_report: { Report_End_Date: @employee_report.Report_End_Date, Report_Name: @employee_report.Report_Name, Report_Start_Date: @employee_report.Report_Start_Date, employee_report_type_id: @employee_report.employee_report_type_id } }
    end

    assert_redirected_to employee_report_url(EmployeeReport.last)
  end

  test "should show employee_report" do
    get employee_report_url(@employee_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_report_url(@employee_report)
    assert_response :success
  end

  test "should update employee_report" do
    patch employee_report_url(@employee_report), params: { employee_report: { Report_End_Date: @employee_report.Report_End_Date, Report_Name: @employee_report.Report_Name, Report_Start_Date: @employee_report.Report_Start_Date, employee_report_type_id: @employee_report.employee_report_type_id } }
    assert_redirected_to employee_report_url(@employee_report)
  end

  test "should destroy employee_report" do
    assert_difference('EmployeeReport.count', -1) do
      delete employee_report_url(@employee_report)
    end

    assert_redirected_to employee_reports_url
  end
end
