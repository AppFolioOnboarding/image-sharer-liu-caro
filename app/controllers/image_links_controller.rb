class ImageLinksController < ApplicationController
  def index
    @tags = list_tags
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

  def tagged
    @tags = list_tags
    if params[:tag].present? && @tags.include?(params[:tag])
      @image_link = ImageLink.tagged_with(params[:tag])
      render :index
    else
      redirect_to action: :index
    end
  end

  def destroy
    @image_link = ImageLink.find(params[:id])
    @image_link.destroy

    redirect_to action: :index
  end

  private

  def image_link_params
    params.require(:image_link).permit(:url, :tag_list)
  end

  def list_tags
    ActsAsTaggableOn::Tag.all.map(&:name)
  end
end
