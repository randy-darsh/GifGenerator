class Admin::GifsController < Admin::BaseController

  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new(gif_params)
    if @gif.save
      redirect_to admin_gifs_path
    else
      redirect_to new_admin_gif_path
    end
  end

  private

  def gif_params
    params.require(:gif).permit(:image_url, :category)
  end
end
