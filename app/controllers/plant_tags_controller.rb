class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.find(params[:plant_tag][:tag])
    @tags.each do |tag|
      plant_tag = PlantTag.new
      plant_tag.plant = @plant
      plant_tag.tag = tag
      plant_tag.save
    end
    redirect_to garden_path(@plant.garden)
  end

  def destroy
    @plant_tag = PlantTag.find(params[:id])
    @plant_tag.destroy
    redirect_to garden_path(@plant_tag.plant.garden)
  end
end
