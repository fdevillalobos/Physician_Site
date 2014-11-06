class RegistrationsController < Devise::RegistrationsController
  # validates :email, :presence => true

  def new
    super     # Inherit from super class
  end

  def update
    super
  end

  def create
    super
  end
end
