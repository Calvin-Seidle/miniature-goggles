class EmployeeReportsController < ApplicationController
  before_action :set_employee_report, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /employee_reports
  # GET /employee_reports.json
  def index
    @employee_reports = current_user.employee_reports.all.order("created_at DESC")
  end

  # GET /employee_reports/1
  # GET /employee_reports/1.json
  def show
    # @task = EmployeeTask.where(EmployeeReport.ids == EmployeeTask.employee_report_id)
    # Model.all.select { |m| m.field == value }
    #@task = EmployeeTask.all.select { |t| t.employee_report_id == EmployeeReport.ids}
    #@task = EmployeeTask.pluck(:id, :Task_Name).where(:employee_report_id == EmployeeReport.ids)
    # @task = EmployeeTask.all.map(&:Task_Name)
  end

  # GET /employee_reports/new
  def new
    @employee_report = current_user.employee_reports.build
  end

  # GET /employee_reports/1/edit
  def edit
  end

  # POST /employee_reports
  # POST /employee_reports.json
  def create
    @employee_report = current_user.employee_reports.build(employee_report_params)

    respond_to do |format|
      if @employee_report.save
        format.html { redirect_to @employee_report, notice: 'Employee report was successfully created.' }
        format.json { render :show, status: :created, location: @employee_report }
      else
        format.html { render :new }
        format.json { render json: @employee_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_reports/1
  # PATCH/PUT /employee_reports/1.json
  def update
    respond_to do |format|
      if @employee_report.update(employee_report_params)
        format.html { redirect_to @employee_report, notice: 'Employee report was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_report }
      else
        format.html { render :edit }
        format.json { render json: @employee_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_reports/1
  # DELETE /employee_reports/1.json
  def destroy
    @employee_report.destroy
    respond_to do |format|
      format.html { redirect_to employee_reports_url, notice: 'Employee report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_report
      @employee_report = EmployeeReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_report_params
      params.require(:employee_report).permit(:Report_Name, :Report_Start_Date, :Report_End_Date, :employee_report_type_id, :user_id)
    end
end
