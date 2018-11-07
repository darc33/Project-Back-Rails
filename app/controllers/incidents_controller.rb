class IncidentsController < ApplicationController
protect_from_forgery

	def index
       incidents = Incident.all;
       render json: {data:incidents},status: :ok 
    end

    def show 
    	incident = Incident.find(params[:id])
    	render json: {data:incident},status: :ok 
    end

    def create
    	incident = Incident.new(incident_params)
    	if incident.save
    		render json: {status: 'SUCCESS', data:incident},status: :ok 
    	else
    		render json: {status: 'ERROR', data:incident.errors},status: :unprocessable_entity
    	end
    end

    def update
    	incident = Incident.find(params[:id])
    	if incident.update_attributes(incident_params)
    		render json: {status: 'SUCCESS', data:incident},status: :ok 
    	else
    		render json: {status: 'ERROR', data:incident.errors},status: :unprocessable_entity
    	end
    end

    def destroy
    	incident = Incident.find(params[:id])
    	incident.destroy
    	render json: {data:incident},status: :ok
    end

    private
    	def incident_params
    		params.permit(:name, :description, :coordinate, :status, :initial_datetime, :final_datetime, :imagen, :user_id, :typeincident_id)
    	
    	end
end