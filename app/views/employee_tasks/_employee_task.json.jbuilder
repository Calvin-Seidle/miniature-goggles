json.extract! employee_task, :id, :Task_Name, :Task_Start_Date, :Task_End_Date, :employee_report_id, :created_at, :updated_at
json.url employee_task_url(employee_task, format: :json)
