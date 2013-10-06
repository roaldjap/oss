class SubjsectsController < ApplicationController
  before_action :set_subjsect, only: [:show, :edit, :update, :destroy]

  # GET /subjsects
  # GET /subjsects.json
  def index
    @subjsects = Subjsect.all
  end

  # GET /subjsects/1
  # GET /subjsects/1.json
  def show
  end

  # GET /subjsects/new
  def new
    @subjsect = Subjsect.new
  end

  # GET /subjsects/1/edit
  def edit
  end

  # POST /subjsects
  # POST /subjsects.json
  def create
    @subjsect = Subjsect.new(subjsect_params)

    respond_to do |format|
      if @subjsect.save
        format.html { redirect_to @subjsect, notice: 'Subjsect was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subjsect }
      else
        format.html { render action: 'new' }
        format.json { render json: @subjsect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjsects/1
  # PATCH/PUT /subjsects/1.json
  def update
    respond_to do |format|
      if @subjsect.update(subjsect_params)
        format.html { redirect_to @subjsect, notice: 'Subjsect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subjsect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjsects/1
  # DELETE /subjsects/1.json
  def destroy
    @subjsect.destroy
    respond_to do |format|
      format.html { redirect_to subjsects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subjsect
      @subjsect = Subjsect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subjsect_params
      params.require(:subjsect).permit(:section_id, :subject_id, :room_id, :schedule_id)
    end
end
