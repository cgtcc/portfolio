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

  def edit
    @work_item = Work.find(params[:id])
  end


  # PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
        @work_item = Work.find(params[:id])

    respond_to do |format|
      if @work_item.update(params.require(:work).permit(:title, :subtitle, :body))
        format.html { redirect_to works_path, notice: 'work was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
end
