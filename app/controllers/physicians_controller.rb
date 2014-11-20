class PhysiciansController < ApplicationController
  before_filter :authenticate_user!
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
    # @specialties = Specialty.where(name: physician_params[:specialties]).limit(6)
    # @physician.specialties << @specialties
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
      params.require(:physician).permit(:name, :email, :country_id, :state_id, :specialty_id, :medical_school_id, :NPI, :gender_id, :birth, :phone, :residency_hospital_id, :affiliation_hospital_id, :credential_id, :group_practice_id, :specialties)
    end
end
