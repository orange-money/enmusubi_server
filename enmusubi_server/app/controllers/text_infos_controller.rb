class TextInfosController < ApplicationController
  before_action :set_text_info, only: [:show, :edit, :update, :destroy]

  # GET /text_infos
  # GET /text_infos.json
  def index
    @text_infos = TextInfo.all
  end

  # GET /text_infos/1
  # GET /text_infos/1.json
  def show
  end

  # GET /text_infos/new
  def new
    @text_info = TextInfo.new
  end

  # GET /text_infos/1/edit
  def edit
  end

  # POST /text_infos
  # POST /text_infos.json
  def create
    @text_info = TextInfo.new(text_info_params)

    respond_to do |format|
      if @text_info.save
        format.html { redirect_to @text_info, notice: 'Text info was successfully created.' }
        format.json { render :show, status: :created, location: @text_info }
      else
        format.html { render :new }
        format.json { render json: @text_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_infos/1
  # PATCH/PUT /text_infos/1.json
  def update
    respond_to do |format|
      if @text_info.update(text_info_params)
        format.html { redirect_to @text_info, notice: 'Text info was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_info }
      else
        format.html { render :edit }
        format.json { render json: @text_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_infos/1
  # DELETE /text_infos/1.json
  def destroy
    @text_info.destroy
    respond_to do |format|
      format.html { redirect_to text_infos_url, notice: 'Text info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_info
      @text_info = TextInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_info_params
      params.require(:text_info).permit(:user_id, :lecture_name, :textbook_name, :price, :comment, :image, :status)
    end
end
