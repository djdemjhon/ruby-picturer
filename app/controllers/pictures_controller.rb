class PicturesController < ApplicationController
  before_action :find_picture, only:[:show,:edit,
                :update,:delete]
  def index
    @pictures = Picture.all.order("created_at DESC")
  end

  def upload
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to root_path, notice: "Picture uploaded successfully."
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @picture.update(picture_params_update)
      redirect_to @picture, notice: "Picture updated successfully."
    else
      render 'edit'
    end
  end

  def delete
    @picture.destroy
    redirect_to pictures_path, notice: "Picture deleted successfully."
  end

  private
  def find_picture
    begin
      @picture = Picture.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path
    end
  end

  def picture_params
    params.require(:picture).permit(:image_name, :attached_image_file)
  end
  def picture_params_update
    params.require(:picture).permit(:image_name)
  end

end