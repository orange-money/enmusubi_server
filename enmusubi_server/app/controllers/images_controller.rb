class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]
  AWS.config(access_key_id: 'AKIAIPSMHHQZDEJKAGEA', secret_access_key: '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', region: 'ap-northeast-1')
  # GET /images
  # GET /images.json
  def index
    @images = Image.all
    render :json => @images
  end

  # GET /images/1
  # GET /images/1.json
  def show
    render :json => @image
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images
  # POST /images.json
  def create
  @image = Image.new(image_params)
  s3 = AWS::S3.new
  bucket = s3.buckets['ishidayouichi']
     
  file = image_params[:file]
  file_name = file.original_filename
  file_full_path="image/"+file_name
     
  object = bucket.objects[file_full_path]
  object.write(file ,:acl => :public_read)
  @image.file_name="http://s3-ap-northeast-1.amazonaws.com/ishidayouichi/image/#{file_name}"
     
 # respond_to do |format|
    if @image.save
     # format.html { redirect_to @image, notice: 'S3image was successfully created.' }
     # format.json { render action: 'show', status: :created, location: @image }
     render :json => @image
    else
     # format.html { render action: 'new' }
     # format.json { render json: @image.errors, status: :unprocessable_entity }
     render :text => 'error'
    end
  #end
end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
       # format.html { redirect_to @image, notice: 'Image was successfully updated.' }
       # format.json { render :show, status: :ok, location: @image }
       render :json => @image
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:textinfo_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:textinfo_id, :file)
    end
end
