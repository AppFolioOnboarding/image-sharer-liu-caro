class ImageLinksController < ApplicationController
  def index
    @image_link = ImageLink.all.order(created_at: :desc)
  end

  def show
    @image_link = ImageLink.find(params[:id])
  end

  def new
    @image_link = ImageLink.new
  end

  def create
    @image_link = ImageLink.new(image_link_params)

    if @image_link.save
      redirect_to @image_link
    else
      render :new
    end
  end

  private

  def image_link_params
    params.require(:image_link).permit(:url)
  end
end
