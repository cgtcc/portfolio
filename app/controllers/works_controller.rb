class WorksController < ApplicationController
    before_action :set_work, only: [:show, :edit, :update, :destroy]

  def index
    @work_items = Work.all
  end

#render the work form
  def new 
    @work_item = Work.new
  end
 
#create the work when form submitted
  def create
    @work = Work.new(work_params)
    
    respond_to do |format|
      if @work.save
        format.html { redirect_to works_path, notice: 'Work item was successfully created!'}
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @work_item = set_work
  end


  # PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
    @work_item = set_work

    respond_to do |format|
      if @work_item.update(params.require(:work).permit(:title, :subtitle, :body))
        format.html { redirect_to works_path, notice: 'work was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
     @work_item = set_work
  end



 
  def destroy
    #perform the lookup
    @work_item = set_work
    # destroy the item
    @work_item.destroy
    # redirect to another url
    respond_to do |format|
      format.html { redirect_to works_url, notice: 'The work record was successfully removed.' }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:title, :subtitle, :body)
    end


end
