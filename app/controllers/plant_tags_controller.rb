class PlantTagsController < ApplicationController
  before_action :set_plant

  def new
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.where(id: params[:plant_tag][:tag])
    @tags.each do |tag|
      plant_tag = PlantTag.new(plant: @plant, tag: tag)
      plant_tag.save
    end
    redirect_to garden_path(@plant.garden)
  end

  private

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end
end
