class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @users.each do |user| 
      if(user.name != nil)then
      user.name = user.name.force_encoding('utf-8')
      end
      if(user.univ != nil)then
      user.univ = user.univ.force_encoding('utf-8')
      end
    end
    render :json => @users
  end

  def history
    @textdatas = Text.where(user_id: params[:user_id]) # params[:user_id] 
    #これもpostでそのユーザのIDが送られてくる．
    #それをparams[:user_id]で取得する．
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



  # GET /users/1
  # GET /users/1.json
  def show
    if(@user.name != nil)then
      @user.name = @user.name.force_encoding('utf-8')
      end
    if(@user.univ != nil)then
      @user.univ = @user.univ.force_encoding('utf-8')
      end
     render :json => @user
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
if(User.where(user_id: @user.user_id) == [])then#一致するuserがなければ#
    # respond_to do |format|
    if(@user.name != nil)then
      @user.name = @user.name.force_encoding('utf-8')
      end
    if(@user.univ != nil)then
      @user.univ = @user.univ.force_encoding('utf-8')
      end
      if @user.save
          # format.html { redirect_to @user, notice: 'User was successfully created.' }
       # format.json { render :show, status: :created, location: @user }
      render :json => @user
      else
      #  format.html { render :new }
      #  format.json { render json: @user.errors, status: :unprocessable_entity }
         render :text => 'error'
      end
    #end
  else
     render :json  => User.where(user_id: @user.user_id) #response ok 
  end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    #respond_to do |format|
      if @user.update(user_params)
      # format.html { redirect_to @user, notice: 'User was successfully updated.' }
       # format.json { render :show, status: :ok, location: @user }
       if(@user.name != nil)then
      @user.name = @user.name.force_encoding('utf-8')
      end
    if(@user.univ != nil)then
      @user.univ = @user.univ.force_encoding('utf-8')
      end
       render :json => @user
      else
      #  format.html { render :edit }
       # format.json { render json: @user.errors, status: :unprocessable_entity }
       render :text => 'error'
      end
    #end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :link, :univ, :user_id)
    end
end
