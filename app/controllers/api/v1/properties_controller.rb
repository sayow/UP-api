# frozen_string_literal: true

module Api
  module V1
    class PropertiesController < ApplicationController
      # GET /properties
      def index
        @properties = Property.all
        render json: @properties
      end

      # POST /properties
      def create
        @property = Property.create(property_params).to_a
        if @property.save
          render json: @property
        else
          render error: { error: 'Unable to create property.' }, status: 400
        end
      end

      # DELETE /properties/:id
      def destroy
        @property = Property.find(params[:id])
        if @property
          @property.destroy
          render json: { message: 'Property successfully deleted. ' }, status: 200
        else
          render json: { error: 'Unable to delete property. ' }, status: 400
        end
      end

      private

      def property_params
        params.require(:property).permit(:name, :units)
      end
    end
  end
end
