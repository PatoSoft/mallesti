require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  set_content_type 'application/json'

  options = [:show, :index, :create, :update, :destroy]
  json_attributes = FactoryGirl.attributes_for(:project).keys

  before :all do
  	# Para todos los tests
   	@model = Project

    # Para el test de show
   	@resource = FactoryGirl.create(:project)

   	# Para el test de index
  	@first_page_resources = Project.all

  	# Para el test de create y destroy
  	@parameters = FactoryGirl.attributes_for(:project)

  	# Para el test de update
  	@update_params = FactoryGirl.attributes_for(:project_update)
  end

  it_behaves_like "a REST controller", options, json_attributes
end
