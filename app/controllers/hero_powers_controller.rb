class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def create
        HeroPower.create!(hero_power_params)
        hero = Hero.find(params[:power_id])
        render json: hero, status: :created, serializer: HeroWithPowerSerializer
    end

    private

    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end

    def render_unprocessable_entity(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
end
