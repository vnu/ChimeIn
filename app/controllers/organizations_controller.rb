class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def create
    puts "Prams: #{params[:organization]}"
    @organization = Organization.create(organization_params)
    redirect_to :organizations
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :website, :location, :email, :description, :phone)
  end

end
