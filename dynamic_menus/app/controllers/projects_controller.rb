class ProjectsController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  def new
    hobo_new do
      this.attributes = params[:project] || {}
      hobo_ajax_response if request.xhr?
    end
  end

  def edit
    hobo_show do
      this.attributes = params[:project] || {}
      hobo_ajax_response if request.xhr?
    end
  end

end
