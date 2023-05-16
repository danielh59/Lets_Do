class ExpertsController < ApplicationController
  before_action :authenticate_expert!
  protect_from_forgery
  
  def expert_params    
    params.require(:expert).permit(:name, :email, :password_digest, :bio, :expert_img)
  end

  def index
    @experts = Expert.all
  end

  def show
    @expert = Expert.find(params[:id])
  end
  
  def edit
    @expert = Expert.find(params[:id])

  end
  
  def update
  @expert = Expert.find(params[:id])
  
  @expert.update(expert_params)
  
  if @expert.save
    redirect_to @expert
  else
    render :edit
  end

  private

 

end
end
