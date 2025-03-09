class CusersController < ApplicationController
  before_action :set_cuser, only: %i[ show edit update destroy ]

  # GET /cusers or /cusers.json
  def index
    @cusers = Cuser.all
  end

  # GET /cusers/1 or /cusers/1.json
  def show
  end

  # GET /cusers/new
  def new
    @cuser = Cuser.new
  end

  # GET /cusers/1/edit
  def edit
  end

  # POST /cusers or /cusers.json
  def create
    @cuser = Cuser.new(cuser_params)

    respond_to do |format|
      if @cuser.save
        format.html { redirect_to @cuser, notice: "Cuser was successfully created." }
        format.json { render :show, status: :created, location: @cuser }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cusers/1 or /cusers/1.json
  def update
    respond_to do |format|
      if @cuser.update(cuser_params)
        format.html { redirect_to @cuser, notice: "Cuser was successfully updated." }
        format.json { render :show, status: :ok, location: @cuser }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cusers/1 or /cusers/1.json
  def destroy
    @cuser.destroy!

    respond_to do |format|
      format.html { redirect_to cusers_path, status: :see_other, notice: "Cuser was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuser
      @cuser = Cuser.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def cuser_params
      params.expect(cuser: [ :name, :password, :email, :mobile, :gender ])
    end
end
