require 'test_helper'

class EmployeeReportTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_report_type = employee_report_types(:one)
  end

  test "should get index" do
    get employee_report_types_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_report_type_url
    assert_response :success
  end

  test "should create employee_report_type" do
    assert_difference('EmployeeReportType.count') do
      post employee_report_types_url, params: { employee_report_type: { Report_Type: @employee_report_type.Report_Type } }
    end

    assert_redirected_to employee_report_type_url(EmployeeReportType.last)
  end

  test "should show employee_report_type" do
    get employee_report_type_url(@employee_report_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_report_type_url(@employee_report_type)
    assert_response :success
  end

  test "should update employee_report_type" do
    patch employee_report_type_url(@employee_report_type), params: { employee_report_type: { Report_Type: @employee_report_type.Report_Type } }
    assert_redirected_to employee_report_type_url(@employee_report_type)
  end

  test "should destroy employee_report_type" do
    assert_difference('EmployeeReportType.count', -1) do
      delete employee_report_type_url(@employee_report_type)
    end

    assert_redirected_to employee_report_types_url
  end
end
