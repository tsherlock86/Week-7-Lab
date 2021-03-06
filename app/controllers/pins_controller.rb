class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

  # GET /pins
  # GET /pins.json
  def index
    @pin = Pin.new
    @pins = Pin.all
    if params[:tag]
      @pins = Pin.tagged_with(params[:tag]).page params[:page]
    else
      @pins = Pin.all.page params[:page]
    end
      respond_to do |format|
        format.js {}
        format.html {:back}
      end
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
  end

  # GET /pins/new
  def new
    @pin = Pin.new
      respond_to do |format|
       format.html {}
      end
  end

  # GET /pins/1/edit
  def edit
  end

  # POST /pins
  # POST /pins.json
  def create
    @pin = Pin.new(pin_params)
    @pin.user_id = current_user.id

    if @pin.save!
      respond_to do |format|
        format.js {}
      end
    else
      respond_to do |format|
        format.js { render :new }
      end
    end
  end

  # PATCH/PUT /pins/1
  # PATCH/PUT /pins/1.json
  def update
    respond_to do |format|
      if @pin.update(pin_params)
        format.html { redirect_to @pin, notice: 'Pin was successfully updated.' }
        format.json { render :show, status: :ok, location: @pin }
      else
        format.html { render :edit }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @pin.destroy
    respond_to do |format|
      format.html { redirect_to pins_url, notice: 'Pin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @pin.liked_by current_user
		respond_to do |format|
      format.js{}
    end
	end

  def downvote
    @pin.downvote_from current_user
    respond_to do |format|
      format.js{ render 'upvote.js'}
    end
  end


  # Used a short tutorial to help me get started http://alexmuraro.me/posts/acts-as-taggable-on-a-short-tutorial/.
  def tag
    @pins = Pin.tagged_with(params[:id])
    render :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_pin
      @pin = Pin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pin_params
      params.require(:pin).permit(:title, :image, :tag_list, :file_id)
    end
end
