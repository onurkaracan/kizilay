class RequestersController < ApplicationController
  before_action :set_requester, only: %i[ show edit update destroy ]

  # GET /requesters or /requesters.json
  def index
    @requesters = Requester.all
  end

  # GET /requesters/1 or /requesters/1.json
  def show
  end

  # GET /requesters/new
  def new
    @requester = Requester.new
  end

  # GET /requesters/1/edit
  def edit
  end

  # POST /requesters or /requesters.json
  def create
    @requester = Requester.new(requester_params)

    respond_to do |format|
      if @requester.save
        format.html { redirect_to requester_url(@requester), notice: "Requester was successfully created." }
        format.json { render :show, status: :created, location: @requester }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @requester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requesters/1 or /requesters/1.json
  def update
    respond_to do |format|
      if @requester.update(requester_params)
        format.html { redirect_to requester_url(@requester), notice: "Requester was successfully updated." }
        format.json { render :show, status: :ok, location: @requester }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @requester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requesters/1 or /requesters/1.json
  def destroy
    @requester.destroy

    respond_to do |format|
      format.html { redirect_to requesters_url, notice: "Requester was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requester
      @requester = Requester.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requester_params
      params.require(:requester).permit(:name)
    end
end
