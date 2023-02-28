class DoersController < ApplicationController
  before_action :authenticate_doer!
  protect_from_forgery

  def show
    @doer = Doer.find(params[:id])
  end
  
  def edit
  @doer = current_doer
  end
  
  def update
  @doer = Doer.find(params[:id])
  
  @doer.update(doer_params)
  
  if @doer.save
    redirect_to @doer
  else
    render :edit
  end

  private

  def doer_params    
    params.require(:doer).permit(:name, :email, :password_digest, :bio, :doer_img)
  end

end



end