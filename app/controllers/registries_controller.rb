class RegistriesController < ApplicationController
	protect_from_forgery

	def index
       registies = Registry.all;
       render json: {data:registies},status: :ok 
    end

    def show 
    	registry = Registry.find(params[:id])
    	render json: {data:registry},status: :ok 
    end

    def create
    	registry = Registry.new(registry_params)
    	if registry.save
    		render json: {status: 'SUCCESS', data:registry},status: :ok 
    	else
    		render json: {status: 'ERROR', data:registry.errors},status: :unprocessable_entity
    	end
    end

    def update
    	registry = Registry.find(params[:id])
    	if registry.update_attributes(registry_params)
    		render json: {status: 'SUCCESS', data:registry},status: :ok 
    	else
    		render json: {status: 'ERROR', data:registry.errors},status: :unprocessable_entity
    	end
    end

    def destroy
    	registry = Registry.find(params[:id])
    	registry.destroy
    	render json: {data:registry},status: :ok
    end

    private
    	def registry_params
    		params.permit(:type_r, :initial_direction, :final_direction, :no_consultas, :linestring, :user_id )
    	
    	end
end