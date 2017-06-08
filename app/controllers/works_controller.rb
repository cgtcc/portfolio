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
        format.html { redirect_to works_path, notice: 'Work item was successfully created!'}
      else
        format.html { render :new }
      end
    end
  end

  def show
  end
  
end
