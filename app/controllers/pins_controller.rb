class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  # GET /pins
  # GET /pins.json
  def index
    @pin = Pin.new
    @pins = Pin.all
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
     format.htm {layout false}
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

    respond_to do |format|
      if @pin.save
        # format.html { redirect_to :back, notice: 'Pin was successfully created.' }
        format.js {}
      else
        format.html { render :back }
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
    @pin = Pin.find(params[:id])
    @pin.liked_by current_user
    @pin.save
		redirect_to :back
	end

  def downvote
    @pin = Pin.find(params[:id])
    @pin.downvote_from current_user
    @pin.save
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_pin
      @pin = Pin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pin_params
      params.require(:pin).permit(:title, :image, :user_id)
    end
end
