class UserBranchesController < ApplicationController
  before_action :set_user_branch, only: %i[ show edit update destroy ]

  # GET /user_branches or /user_branches.json
  def index
    @user_branches = UserBranch.all
  end

  # GET /user_branches/1 or /user_branches/1.json
  def show
  end

  # GET /user_branches/new
  def new
    @user_branch = UserBranch.new
  end

  # GET /user_branches/1/edit
  def edit
  end

  # POST /user_branches or /user_branches.json
  def create
    @user_branch = UserBranch.new(user_branch_params)

    respond_to do |format|
      if @user_branch.save
        format.html { redirect_to user_branch_url(@user_branch), notice: "User branch was successfully created." }
        format.json { render :show, status: :created, location: @user_branch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_branches/1 or /user_branches/1.json
  def update
    respond_to do |format|
      if @user_branch.update(user_branch_params)
        format.html { redirect_to user_branch_url(@user_branch), notice: "User branch was successfully updated." }
        format.json { render :show, status: :ok, location: @user_branch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_branches/1 or /user_branches/1.json
  def destroy
    @user_branch.destroy

    respond_to do |format|
      format.html { redirect_to user_branches_url, notice: "User branch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_branch
      @user_branch = UserBranch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_branch_params
      params.require(:user_branch).permit(:user_id, :branch_id)
    end
end
