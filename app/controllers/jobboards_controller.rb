class JobboardsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "secret", except: [:index, :show, :new, :create]

  
  before_action :set_jobboard, only: [:show, :edit, :update, :destroy]

  # GET /jobboards
  # GET /jobboards.json
  def index
    # default line "@jobboards = Jobboard.all" to the below so that job list on
    # home page is sorted according to time created
    @jobboards = Jobboard.where(:approved => true).order("created_at desc")
  end

  # GET /jobboards/1
  # GET /jobboards/1.json
  def show
  end

  # GET /jobboards/new
  def new
    @jobboard = Jobboard.new
  end

  # GET /jobboards/1/edit
  def edit
  end

  # POST /jobboards
  # POST /jobboards.json
  def create
    @jobboard = Jobboard.new(jobboard_params)

    respond_to do |format|
      if @jobboard.save
        format.html { redirect_to @jobboard, notice: 'Jobboard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jobboard }
      else
        format.html { render action: 'new' }
        format.json { render json: @jobboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobboards/1
  # PATCH/PUT /jobboards/1.json
  def update
    respond_to do |format|
      if @jobboard.update(jobboard_params)
        format.html { redirect_to @jobboard, notice: 'Jobboard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jobboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobboards/1
  # DELETE /jobboards/1.json
  def destroy
    @jobboard.destroy
    respond_to do |format|
      format.html { redirect_to jobboards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobboard
      @jobboard = Jobboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobboard_params

      params.require(:jobboard).permit(:jobTitle, :company, :hours, :full, :partTime, :salary, :description, :requirements, :website, :email, :approved)

    end
end
