class ImageController < ApplicationController

  # GET /images/1/edit
  def edit
  end

  # PATCH/PUT /images/1 or /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: "Image was successfully updated." }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @album = Album.find(params[:album_id])
    Image.create(image_url: params[:q],album_id:params[:album_id])
    redirect_to @album, notice: "Image was successfully updated."
  end

  def create
    @album = Album.find(params[:album_id])
    @image = @album.images.build(params[:image])
    @image.save
  end

  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_image
    @image = Image.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def image_params
    params.require(:image_url)
  end


end
