class SibittsController < ApplicationController
  before_action :set_sibitt, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  # GET /sibitts or /sibitts.json
  def index
    @sibitts = Sibitt.all.order('created_at DESC')
    @sibitt = Sibitt.new
  end

  # GET /sibitts/1 or /sibitts/1.json
  def show; end

  # GET /sibitts/new
  def new
    @sibitt = Sibitt.new
  end

  # GET /sibitts/1/edit
  def edit; end

  # POST /sibitts or /sibitts.json
  def create
    @sibitt = Sibitt.new(sibitt_params)

    respond_to do |format|
      if @sibitt.save
        format.html { redirect_to root_path, notice: 'Sibitt was successfully created.' }
        format.json { render :show, status: :created, location: @sibitt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sibitt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sibitts/1 or /sibitts/1.json
  def update
    respond_to do |format|
      if @sibitt.update(sibitt_params)
        format.html { redirect_to root_path, notice: 'Sibitt was successfully updated.' }
        format.json { render :show, status: :ok, location: @sibitt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sibitt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sibitts/1 or /sibitts/1.json
  def destroy
    @sibitt.destroy
    respond_to do |format|
      format.html { redirect_to sibitts_url, notice: 'Sibitt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_sibitt
    @sibitt = Sibitt.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def sibitt_params
    params.require(:sibitt).permit(:sibitt)
  end
end
