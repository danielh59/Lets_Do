class RegimensController < ApplicationController
  before_action :authenticate_expert!, except: [:show, :index] 
  protect_from_forgery

    def index
        if params[:category_id]
            cat = params[:category_id]
          @category = Category.by_category(cat)
          if @category.nil?
            redirect_to categorys_path, alert: "Category not found"
          else
            @regimens = @category.regimens
          end
        else
          @regimens = Regimen.all
        end
      end
    
      def show
        if params[:category_id]
          @category = Category.find_by(id: params[:category_id])
          @regimen = @category.regimens.find_by(id: params[:id])
          if @regimen.nil?
            redirect_to category_regimens_path(@category), alert: "Regimen not found"
          end
        else
          @regimen = Regimen.find(params[:id])
        end
      end
    
      def new
        @regimen = Regimen.new
      end
    
      def create
        @regimen = Regimen.create(regimen_params)
        if @regimen.save
          redirect_to regimen_path(@regimen)
        else
          render :new
        end
      end
    
      def edit
        @regimen = regimen.find(params[:id])
        if @regimen.expert != current_expert
          @access_message = 'You must be logged in as the owner of this regimen to edit this'
          redirect_to @regimen  
        else
      end

      end
    
      def update
        @regimen = regimen.find(params[:id])
    
        @regimen.update(regimen_params)
    
        if @regimen.save
          redirect_to @regimen
        else
          render :edit
        end
      end
    
      def destroy
        @regimen = Regimen.find(params[:id])
        @regimen.destroy
        flash[:notice] = "Regimen deleted."
        redirect_to regimens_path
      end
    
      private
    
      def regimen_params
        params.require(:regimen).permit(:title, :img, :description, :expert_id, category_ids:[], categories_attributes: [:title])
      end
end
