class UsersController < ApplicationController
protect_from_forgery

	def index
       users = User.all;
       
       #query = "SELECT name FROM users"
       #@users = ActiveRecord::Base.connection.execute(query)
       render json: {data:users},status: :ok 
    end

    def show 
    	user = User.find(params[:id])
    	render json: {data:user},status: :ok 
    end

    def create
    	user = User.new(user_params)
    	if user.save
    		render json: {status: 'SUCCESS', data:user},status: :ok 
    	else
    		render json: {status: 'ERROR', data:user.errors},status: :unprocessable_entity
    	end
    end

    def update
    	user = User.find(params[:id])
    	if user.update_attributes(user_params)
    		render json: {status: 'SUCCESS', data:user},status: :ok 
    	else
    		render json: {status: 'ERROR', data:user.errors},status: :unprocessable_entity
    	end
    end

    def destroy
    	user = User.find(params[:id])
    	user.destroy
    	render json: {data:user},status: :ok
    end

    private
    	def user_params
    		params.permit(:name, :lastname, :phone, :gender, :entity, :cedula, :role_id, :email, :encrypted_password, :reset_password_token)
    	
    	end
end