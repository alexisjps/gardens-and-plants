class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.where(id: params.dig(:plant_tag, :tag))
    return render_new if @tags.empty?

    ActiveRecord::Base.transaction do
      @tags.each do |tag|
        plant_tag = PlantTag.new(plant: @plant, tag: tag)
        plant_tag.save!
      end
      redirect_to garden_path(@plant.garden)
    end
  rescue ActiveRecord::RecordInvalid
    render_new
  end

  private

  def render_new
    @plant_tag = PlantTag.new
    @plant_tag.errors.add(:base, "A selected already exists")
    render :new, status: :unprocessable_entity
  end
end
