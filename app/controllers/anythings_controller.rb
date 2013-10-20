class AnythingsController < ApplicationController
  before_action :set_anything, only: [:show, :edit, :update, :destroy]

  # GET /anythings
  # GET /anythings.json
  def index
    @anythings = Anything.all
  end

  # GET /anythings/1
  # GET /anythings/1.json
  def show
  end

  # GET /anythings/new
  def new
    @anything = Anything.new
  end

  # GET /anythings/1/edit
  def edit
  end

  # POST /anythings
  # POST /anythings.json
  def create
    @anything = Anything.new(anything_params)

    respond_to do |format|
      if @anything.save
        format.html { redirect_to @anything, notice: 'Anything was successfully created.' }
        format.json { render action: 'show', status: :created, location: @anything }
      else
        format.html { render action: 'new' }
        format.json { render json: @anything.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anythings/1
  # PATCH/PUT /anythings/1.json
  def update
    respond_to do |format|
      if @anything.update(anything_params)
        format.html { redirect_to @anything, notice: 'Anything was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @anything.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anythings/1
  # DELETE /anythings/1.json
  def destroy
    @anything.destroy
    respond_to do |format|
      format.html { redirect_to anythings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anything
      @anything = Anything.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anything_params
      params.require(:anything).permit(:content, :user_id)
    end
end
