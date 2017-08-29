class ClucksController < ApplicationController
  
  def index
    @clucks = Cluck.all
  end

  def show
    
    @cluck = Cluck.find(params[:id])
  end

  def edit
    @cluck = Cluck.find(params[:id])
  end

  def update
    @cluck = Cluck.find(params[:id])
      if @cluck.update(cluck_params)
        redirect_to cluck_path(@cluck)
      else
        render :edit
      end
  end

  def new
    @cluck = Cluck.new
  end

  def create
    cluck = Cluck.create(cluck_params)
    if cluck.save
      redirect_to cluck_path(cluck)
    else
      render :new
    end
  end

  def destroy
    cluck = Cluck.find(params[:id])
    cluck.destroy
    redirect_to clucks_path
  end

  private
    def cluck_params
      params.require(:cluck).permit(:user, :interest)
    end

end
