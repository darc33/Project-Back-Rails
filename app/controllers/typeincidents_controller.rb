class TypeincidentsController < ApplicationController
	protect_from_forgery

	def index
       typeincidents = Typeincident.all;
       render json: {data:typeincidents},status: :ok 
    end

    def show 
    	typeincident = Typeincident.find(params[:id])
    	render json: {data:typeincident},status: :ok 
    end

    def create
    	typeincident = Typeincident.new(typeincident_params)
    	if typeincident.save
    		render json: {status: 'SUCCESS', data:typeincident},status: :ok 
    	else
    		render json: {status: 'ERROR', data:typeincident.errors},status: :unprocessable_entity
    	end
    end

    def update
    	typeincident = Typeincident.find(params[:id])
    	if typeincident.update_attributes(typeincident_params)
    		render json: {status: 'SUCCESS', data:typeincident},status: :ok 
    	else
    		render json: {status: 'ERROR', data:typeincident.errors},status: :unprocessable_entity
    	end
    end

    def destroy
    	typeincident = Typeincident.find(params[:id])
    	typeincident.destroy
    	render json: {data:typeincident},status: :ok
    end

    private
    	def typeincident_params
    		params.permit(:name, :description)
    	
    	end

end

