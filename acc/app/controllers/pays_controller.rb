class PaysController < ApplicationController
  before_action :set_pay, only: [:show, :edit, :update, :destroy]

  # GET /pays
  # GET /pays.json
  def index
    @pays = Pay.all
  end

  # GET /pays/1
  # GET /pays/1.json
  def show
  end

  # GET /pays/new
  def new
    @contractor=Contractor.all
    @pay = Pay.new
  end

  # GET /pays/1/edit
  def edit
    @contractor=Contractor.all
  end

  # POST /pays
  # POST /pays.json
  def create
    @pay = Pay.new(pay_params)

    respond_to do |format|
      if @pay.save
        format.html { redirect_to "/main/show", notice: 'Pay was successfully created.' }
        format.json { render :show, status: :created, location: @pay }
      else
        format.html { render :new }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pays/1
  # PATCH/PUT /pays/1.json
  def update
    respond_to do |format|
      if @pay.update(pay_params)
        format.html { redirect_to "/main/show", notice: 'Pay was successfully updated.' }
        format.json { render :show, status: :ok, location: @pay }
      else
        format.html { render :edit }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pays/1
  # DELETE /pays/1.json
  def destroy
    @contractor=Contractor.all
    @pay.destroy
    respond_to do |format|
      format.html { redirect_to "/main/show", notice: 'Pay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pay
      @pay = Pay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pay_params
      params.require(:pay).permit(:amount, :date, :note, :contractor_id)
    end
end
