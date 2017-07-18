json.extract! employee_report, :id, :Report_Name, :Report_Start_Date, :Report_End_Date, :employee_report_type_id, :created_at, :updated_at
json.url employee_report_url(employee_report, format: :json)
