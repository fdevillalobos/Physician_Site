class PhysiciansController < ApplicationController
  before_action :set_physician, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @physicians = Physician.all
    respond_with(@physicians)
  end

  def show
    respond_with(@physician)
  end

  def new
    @physician = Physician.new
    respond_with(@physician)
  end

  def edit
  end

  def create
    @physician = Physician.new(physician_params)
    # @physician = Physician.new(params[:physician])
    flash[:notice] = 'Physician was successfully created.' if @physician.save
    respond_with(@physician)
  end

  def update
    flash[:notice] = 'Physician was successfully updated.' if @physician.update(physician_params)
    respond_with(@physician)
  end

  def destroy
    @physician.destroy
    respond_with(@physician)
  end

  private
    def set_physician
      @physician = Physician.find(params[:id])
    end

    def physician_params
      params.require(:physician).permit(:name, :email, :street, :suite, :zip_code_id, :state_id, :country_id, :specialty_id, :medical_school_id, :NPI, :gender_id, :birth_day, :birth_month, :birth_year, :phone, :residency_hospital, :affiliation_hospital, :credential_id, :medical_school_grad_year, :residency_grad_year, :license_number, :license_state, :group_practice_id, :medicare)
    end
end
