class ChairpeopleController < ApplicationController
  before_action :set_chairperson, only: [:show, :edit, :update, :destroy]

  # GET /chairpeople
  # GET /chairpeople.json
  def index
    @chairpeople = Chairperson.all
  end

  # GET /chairpeople/1
  # GET /chairpeople/1.json
  def show
  end

  # GET /chairpeople/new
  def new
    @chairperson = Chairperson.new
  end

  # GET /chairpeople/1/edit
  def edit
  end

  # POST /chairpeople
  # POST /chairpeople.json
  def create
    @chairperson = Chairperson.new(chairperson_params)

    respond_to do |format|
      if @chairperson.save
        format.html { redirect_to @chairperson, notice: 'Chairperson was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chairperson }
      else
        format.html { render action: 'new' }
        format.json { render json: @chairperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chairpeople/1
  # PATCH/PUT /chairpeople/1.json
  def update
    respond_to do |format|
      if @chairperson.update(chairperson_params)
        format.html { redirect_to @chairperson, notice: 'Chairperson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chairperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chairpeople/1
  # DELETE /chairpeople/1.json
  def destroy
    @chairperson.destroy
    respond_to do |format|
      format.html { redirect_to chairpeople_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chairperson
      @chairperson = Chairperson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chairperson_params
      params.require(:chairperson).permit(:lname, :fname, :mi, :department_id)
    end
end
