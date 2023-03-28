class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        render json: Power.all
    end

    def show
        power = find_power
        render json: power
    end

    def update
        find_power.update!(power_params)
        render json: find_power, status: :accepted
    end

    private

    def find_power
        Power.find(params[:id])
    end

    def power_params
        params.permit(:description)
    end

    def render_not_found_response
        render json: {error: "Power not found"}, status: :not_found
    end

    def render_unprocessable_entity(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
end
