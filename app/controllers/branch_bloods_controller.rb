class BranchBloodsController < ApplicationController
  before_action :set_branch_blood, only: %i[ show edit update destroy ]

  # GET /branch_bloods or /branch_bloods.json
  def index
    @branch_bloods = BranchBlood.all
  end

  # GET /branch_bloods/1 or /branch_bloods/1.json
  def show
  end

  # GET /branch_bloods/new
  def new
    @branch_blood = BranchBlood.new
  end

  # GET /branch_bloods/1/edit
  def edit
  end

  # POST /branch_bloods or /branch_bloods.json
  def create
    @branch_blood = BranchBlood.new(branch_blood_params)

    respond_to do |format|
      if @branch_blood.save
        format.html { redirect_to branch_blood_url(@branch_blood), notice: "Branch blood was successfully created." }
        format.json { render :show, status: :created, location: @branch_blood }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @branch_blood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /branch_bloods/1 or /branch_bloods/1.json
  def update
    respond_to do |format|
      if @branch_blood.update(branch_blood_params)
        format.html { redirect_to branch_blood_url(@branch_blood), notice: "Branch blood was successfully updated." }
        format.json { render :show, status: :ok, location: @branch_blood }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @branch_blood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branch_bloods/1 or /branch_bloods/1.json
  def destroy
    @branch_blood.destroy

    respond_to do |format|
      format.html { redirect_to branch_bloods_url, notice: "Branch blood was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch_blood
      @branch_blood = BranchBlood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def branch_blood_params
      params.require(:branch_blood).permit(:number_of_unit, :branch_id, :city_id, :blood_type_id)
    end
end
