class EmployeeReportTypesController < ApplicationController
  before_action :set_employee_report_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /employee_report_types
  # GET /employee_report_types.json
  def index
    @employee_report_types = EmployeeReportType.all
  end

  # GET /employee_report_types/1
  # GET /employee_report_types/1.json
  def show
  end

  # GET /employee_report_types/new
  def new
    @employee_report_type = EmployeeReportType.new
  end

  # GET /employee_report_types/1/edit
  def edit
  end

  # POST /employee_report_types
  # POST /employee_report_types.json
  def create
    @employee_report_type = EmployeeReportType.new(employee_report_type_params)

    respond_to do |format|
      if @employee_report_type.save
        format.html { redirect_to @employee_report_type, notice: 'Employee report type was successfully created.' }
        format.json { render :show, status: :created, location: @employee_report_type }
      else
        format.html { render :new }
        format.json { render json: @employee_report_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_report_types/1
  # PATCH/PUT /employee_report_types/1.json
  def update
    respond_to do |format|
      if @employee_report_type.update(employee_report_type_params)
        format.html { redirect_to @employee_report_type, notice: 'Employee report type was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_report_type }
      else
        format.html { render :edit }
        format.json { render json: @employee_report_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_report_types/1
  # DELETE /employee_report_types/1.json
  def destroy
    @employee_report_type.destroy
    respond_to do |format|
      format.html { redirect_to employee_report_types_url, notice: 'Employee report type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_report_type
      @employee_report_type = EmployeeReportType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_report_type_params
      params.require(:employee_report_type).permit(:Report_Type)
    end
end
