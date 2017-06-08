class WorksController < ApplicationController
  def index
    @work_items = Work.all
  end

#render the work form
  def new 
    @work_item = Work.new
  end
 
#create the work when form submitted
  def create
    @work = Work.new(params.require(:work).permit(:title, :subtitle, :body))
    
    respond_to do |format|
      if @work.save
        format.html { redirect_to @work, notice: 'Work item was successfully created!'}
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end
  
end
