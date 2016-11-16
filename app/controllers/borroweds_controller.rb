class BorrowedsController < ApplicationController
  before_action :set_borrowed, only: [:show, :edit, :update, :destroy]

  # GET /borroweds
  # GET /borroweds.json
  def index
    @borroweds = Borrowed.all
  end

  # GET /borroweds/1
  # GET /borroweds/1.json
  def show
  end

  # GET /borroweds/new
  def new
    @borrowed = Borrowed.new
  end

  # GET /borroweds/1/edit
  def edit
  end

  # POST /borroweds
  # POST /borroweds.json
  def create
    @borrowed = Borrowed.new(borrowed_params)

    respond_to do |format|
      if @borrowed.save
        format.html { redirect_to @borrowed, notice: 'Borrowed was successfully created.' }
        format.json { render :show, status: :created, location: @borrowed }
      else
        format.html { render :new }
        format.json { render json: @borrowed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /borroweds/1
  # PATCH/PUT /borroweds/1.json
  def update
    respond_to do |format|
      if @borrowed.update(borrowed_params)
        format.html { redirect_to @borrowed, notice: 'Borrowed was successfully updated.' }
        format.json { render :show, status: :ok, location: @borrowed }
      else
        format.html { render :edit }
        format.json { render json: @borrowed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borroweds/1
  # DELETE /borroweds/1.json
  def destroy
    @borrowed.destroy
    respond_to do |format|
      format.html { redirect_to borroweds_url, notice: 'Borrowed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_borrowed
      @borrowed = Borrowed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def borrowed_params
      params.require(:borrowed).permit(:return_date, :date_due, :Member_id, :Book_id)
    end
end
