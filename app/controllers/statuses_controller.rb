class StatusesController < ApplicationController
  

  
  before_action :set_status, only: [:show, :edit, :update, :destroy]

  # GET /statuses
  # GET /statuses.json
  def index
    @statuses = Status.all

    #@statuses.each do |status|
      #first_name = User.find_by(status.user_id)
      #@statuses ={first_name => first_name} 

      #puts "IN THE METHOD BABY #{first_name.inspect}"

      #puts "DONE WITH THE METHOD LOOK AT STATUSES  #{@statuses.inspect}"
    

  end

  # GET /statuses/1
  # GET /statuses/1.json
  def show


  end



  # GET /statuses/new
  def new
    @status = Status.new
   
    
  end

  # GET /statuses/1/edit
  def edit
  end

  # POST /statuses
  # POST /statuses.json
  def create
    @status = Status.new(status_params)
   

    respond_to do |format|
      if @status.save
        format.html { redirect_to @status, notice: 'Status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @status }
      else
        format.html { render action: 'new' }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statuses/1
  # PATCH/PUT /statuses/1.json
  def update
    respond_to do |format|
      if @status.update(status_params)
        format.html { redirect_to @status, notice: 'Status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statuses/1
  # DELETE /statuses/1.json
  def destroy
    @status.destroy
    respond_to do |format|
      format.html { redirect_to statuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status
      @status = Status.find(params[:id])
      puts "in set status"
    end

    #def set_user
    #  @status.user = User.find_by(@status.user_id)
    #end

  

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_params
      params.require(:status).permit(:content, :user_id)
    end
end
