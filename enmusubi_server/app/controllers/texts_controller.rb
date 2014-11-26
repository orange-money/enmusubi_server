class TextsController < ApplicationController
  before_action :set_text, only: [:show, :edit, :update, :destroy]

  # GET /texts
  # GET /texts.json
  # @@univ = nil
  def index
    #  @texts = Text.all
     @texts = Text.where("univ = ? and status = ?", params[:univ], 1)
     #ステータスが1のものだけ出力する
    # @@univ = params[:univ]
    @texts.each do |text| 
      if(text.teacher != nil)then
      text.teacher = text.teacher.force_encoding('utf-8')
      end
      if(text.lecture_name != nil)then
      text.lecture_name = text.lecture_name.force_encoding('utf-8')
      end
      if(text.textbook_name != nil) then
      text.textbook_name = text.textbook_name.force_encoding('utf-8')
      end
      if(text.comment != nil)then
      text.comment = text.comment.force_encoding('utf-8')
      end
      if(text.univ != nil)then
      text.univ = text.univ.force_encoding('utf-8')
      end
    end
      render :json => @texts
  end



  def search
    @textdatas = []
   if request.post? then
      # univ = @@univ
      @textdatas = Text.where("univ = ? and status = ? and (textbook_name like ? or lecture_name like ?)", params[:univ], 1, "%" + params[:textbook_lecture_name] + "%", "%" + params[:textbook_lecture_name] + "%") #現時点では，教科書検索しか想定していない．
      # @textdatas = Text.where("textbook_name like ?","%" + textbook_name + "%")
      @textdatas.each do |text| 
      if(text.teacher != nil)then
      text.teacher = text.teacher.force_encoding('utf-8')
      end
    if(text.lecture_name != nil)then
      text.lecture_name = text.lecture_name.force_encoding('utf-8')
      end
      if(text.textbook_name != nil) then
      text.textbook_name = text.textbook_name.force_encoding('utf-8')
      end
      if(text.comment != nil)then
      text.comment = text.comment.force_encoding('utf-8')
      end
      if(text.univ != nil)then
      text.univ = text.univ.force_encoding('utf-8')
      end
    end
      render :json => @textdatas
    end
  end

  # GET /texts/1
  # GET /texts/1.json
  def show
    @user = User.where("user_id = ?", @text.user_id)
     @image = Image.where("textinfo_id = ?", @text.textinfo_id)
     if(@text.teacher != nil)then
      @text.teacher = @text.teacher.force_encoding('utf-8')
      end
      if(@text.lecture_name != nil)then
      @text.lecture_name = @text.lecture_name.force_encoding('utf-8')
      end
      if(@text.textbook_name != nil)then
      @text.textbook_name = @text.textbook_name.force_encoding('utf-8')
      end
      if(@text.comment != nil)then
      @text.comment = @text.comment.force_encoding('utf-8')
      end
      if(@text.univ != nil)then
      @text.univ = @text.univ.force_encoding('utf-8')
      end
      @user.each do |use| 
          if(use.univ != nil)then
               use.univ = use.univ.force_encoding('utf-8')
    #render :json => use
          end
      end
    render :json => {:text => @text, :user => @user[0], :image => @image[0]}
  end

  # GET /texts/new
  def new
    @text = Text.new
  # @text.user_id = '1234' #params[:user_id]

    #アプリ側からpostで,そのユーザのIDが送られてくる．params[:user_id]で取得し，@text.user_idに格納する
  end

  # GET /texts/1/edit
  def edit
  end

  # POST /texts
  # POST /texts.json
  def create
    @text = Text.new(text_params)

    # respond_to do |format|
      if @text.save
        #format.html { redirect_to text_path(@text), notice: 'Text was successfully created.' }
        # format.json { render :show, status: :created, location: @text }
         render :json => @text
      else
       # format.html { render :new }
        #format.json { render json: @text.errors, status: :unprocessable_entity }
        render :text => 'error'
      end
    #end
  end

  # PATCH/PUT /texts/1
  # PATCH/PUT /texts/1.json
  def update
  #  respond_to do |format|
      if @text.update(text_params)
       # format.html { redirect_to @text, notice: 'Text was successfully updated.' }
       # format.json { render :show, status: :ok, location: @text }
       if(@text.teacher != nil)then
       @text.teacher = @text.teacher.force_encoding('utf-8')
       end
       if(@text.lecture_name != nil)then
      @text.lecture_name = @text.lecture_name.force_encoding('utf-8')
      end
      if(@text.textbook_name != nil)then
      @text.textbook_name = @text.textbook_name.force_encoding('utf-8')
      end
      if(@text.comment != nil)then
      @text.comment = @text.comment.force_encoding('utf-8')
      end
      if(@text.univ != nil)then
      @text.univ = @text.univ.force_encoding('utf-8')
      end
        render :json => @text
      else
       # format.html { render :edit }
      #  format.json { render json: @text.errors, status: :unprocessable_entity }
      render :text => 'error'
      end
  #  end
  end

  # DELETE /texts/1
  # DELETE /texts/1.json
  def destroy
    @text.destroy
    respond_to do |format|
      format.html { redirect_to texts_url, notice: 'Text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text
      @text = Text.find(params[:textinfo_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_params
      params.require(:text).permit(:teacher, :univ, :user_id, :textinfo_id, :lecture_name, :textbook_name, :price, :comment, :image, :status)
    end
end
