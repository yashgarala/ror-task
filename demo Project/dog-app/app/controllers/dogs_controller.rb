class DogsController < ApplicationController
  def index
    @dogs =Dog.all
  end

  def show
    @dog =Dog.find(params[:id])
  end

  def new
    @abcd= Dog.new
    p @abcd
  end

  def create
    dog= Dog.create(dog_params)
    redirect_to dogs_path
  end
  

  def edit
    @dog= Dog.find(params[:id])
    p @dog
  end
  
  def update
    @dog= Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to dog_path(@dog)
  end
  def destroy
    @dog= Dog.find(params[:id])
    @dog.destroy
    redirect_to dog_path
  end
  

  private
  def dog_params
    p ":name #{:name} :motot #{params.require(:dog)}"
    params.require(:dog).permit(:name,:motto)
  end
end
