class FontsController < ApplicationController
  load_and_authorize_resource
  #before_action :set_font, only: [:show, :edit, :update, :destroy]

  def index
    @fonts = Font.find_with_reputation(:likes, :all, {:order => 'likes desc'})
  end

  def show
  end

  def self.most_liked
  find_with_reputation(:likes, :all, {:order => 'likes DESC'})
  end

  def like
    value = params[:type] == "up" ? 1 : -1
    @font = Font.find(params[:id])
    @font.add_or_update_evaluation(:likes, value, current_user)
    redirect_to :back, notice: "Thanks for voting!"
  end  

  def new
    @font  = current_user.fonts.build
    # if current_user = nil?
    #   redirect_to root_path
    # end  
  end


  def create
    @font = current_user.fonts.build(font_params)


    respond_to do |format|
      if @font.save
        format.html { redirect_to @font, notice: 'Font was successfully created.' }
        format.json { render action: 'show', status: :created, location: @font }
      else
        format.html { render action: 'new' }
        format.json { render json: @font.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @font.update(font_params)
        format.html { redirect_to @font, notice: 'Font was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @font.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @font.destroy
    respond_to do |format|
      format.html { redirect_to fonts_url }
      format.json { head :no_content }
    end
  end

  private

    def font_params
      params.require(:font).permit!(:image)
    end
    
end
