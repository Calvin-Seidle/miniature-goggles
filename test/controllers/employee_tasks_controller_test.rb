require 'test_helper'

class EmployeeTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_task = employee_tasks(:one)
  end

  test "should get index" do
    get employee_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_task_url
    assert_response :success
  end

  test "should create employee_task" do
    assert_difference('EmployeeTask.count') do
      post employee_tasks_url, params: { employee_task: { Task_End_Date: @employee_task.Task_End_Date, Task_Name: @employee_task.Task_Name, Task_Start_Date: @employee_task.Task_Start_Date, employee_report_id: @employee_task.employee_report_id } }
    end

    assert_redirected_to employee_task_url(EmployeeTask.last)
  end

  test "should show employee_task" do
    get employee_task_url(@employee_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_task_url(@employee_task)
    assert_response :success
  end

  test "should update employee_task" do
    patch employee_task_url(@employee_task), params: { employee_task: { Task_End_Date: @employee_task.Task_End_Date, Task_Name: @employee_task.Task_Name, Task_Start_Date: @employee_task.Task_Start_Date, employee_report_id: @employee_task.employee_report_id } }
    assert_redirected_to employee_task_url(@employee_task)
  end

  test "should destroy employee_task" do
    assert_difference('EmployeeTask.count', -1) do
      delete employee_task_url(@employee_task)
    end

    assert_redirected_to employee_tasks_url
  end
end
