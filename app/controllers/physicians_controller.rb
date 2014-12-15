class PhysiciansController < ApplicationController
  # before_filter :authenticate_user!
  before_action :set_physician, only: [:show, :edit, :update, :destroy]
  before_action :set_guest

  respond_to :html

  def index
    if params[:search]
      puts "in index, there is a :search parameter"
      # @search_name = params[:search][:name]
      @physicians = Physician.search(params[:search]) #.order("name ASC")
      flash.now[:notice] = "Your search returned #{@physicians.size} results" #flash.now seems to fix the flash lasting for two page loads
      respond_with(@physicians)
    elsif params[:advsearch]
      puts "redirecting in index to adv_search because there is an :advsearch parameter"
      redirect_to action: :adv_search, params: params
    else
      @physicians = Physician.all.order('name ASC')
      respond_with(@physicians)
    end

  end

  def adv_search
    if params[:advsearch]
      @physicians = Physician.advsearch(params).order("physicians.name ASC")
      flash.now[:notice] = "Your search returned #{@physicians.size} results" #flash.now seems to fix the flash lasting for two page loads
    else
      @physicians = Physician.all.order('name ASC')
    end
    render :index
  end

  def show
    @physician = Physician.find(params[:id])
    @hash = Gmaps4rails.build_markers(@physician) do |physician, marker|
      marker.lat physician.latitude
      marker.lng physician.longitude
    end
    puts @hash
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
    @specialties = Specialty.find(params[:physician][:specialties].drop(1))
    @physician.specialties = @specialties
    flash[:notice] = 'Physician was successfully created.' if @physician.save
    respond_with(@physician)
  end

  def update
    flash[:notice] = 'Physician was successfully updated.' if @physician.update(physician_params)
    @specialties = Specialty.find(params[:physician][:specialties].drop(1))
    @physician.specialties = @specialties
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

    def set_guest
      unless current_user
        @current_user = User.find_by_email("guest@guest.com")
      end
    end

    def physician_params
      params.require(:physician).permit(:name, :email, :country_id, :state_id, :specialty_id, :medical_school_id, :NPI, :gender_id, :birth, :phone, :residency_hospital_id, :affiliation_hospital_id, :credential_id, :group_practice_id, :specialties)
    end
end
