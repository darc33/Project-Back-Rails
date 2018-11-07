class RolesController < ApplicationController
protect_from_forgery

	def index
       roles = Role.all;
       render json: {data:roles},status: :ok 
    end

    def show 
    	role = Role.find(params[:id])
    	render json: {data:role},status: :ok 
    end

    def create
    	role = Role.new(role_params)
    	if role.save
    		render json: {status: 'SUCCESS', data:role},status: :ok 
    	else
    		render json: {status: 'ERROR', data:role.errors},status: :unprocessable_entity
    	end
    end

    def update
    	role = Role.find(params[:id])
    	if role.update_attributes(role_params)
    		render json: {status: 'SUCCESS', data:role},status: :ok 
    	else
    		render json: {status: 'ERROR', data:role.errors},status: :unprocessable_entity
    	end
    end

    def destroy
    	role = Role.find(params[:id])
    	role.destroy
    	render json: {data:role},status: :ok
    end

    private
    	def role_params
    		params.permit(:name)
    	
    	end
end