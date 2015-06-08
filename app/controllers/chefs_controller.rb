class ChefsController < ApplicationController
  def new
    @chef = Chef.new
  end
  
  def create
    @chef = Chef.new(chef_params)
    
    if @chef.save
      flash[:success] = "Sua conta foi criada com sucesso. Que tal começar com uma nova receita?"
      redirect_to recipes_path
    else
      render 'new'
    end
  end
  
  def edit
    @chef = Chef.find(params[:id])
  end
  
  def update
    @chef = Chef.find(params[:id])
    
    if @chef.update(chef_params)
      flash[:success] = "Maravilha, seus dados foram alterados com sucesso. Continue cozinhando."
      redirect_to recipes_path #ToDo change to show chefs page
    else
      render :edit
    end
  end
  
  def show
    @chef = Chef.find(params[:id])
  end
  
  private
    def chef_params
      params.require(:chef).permit(:chefname, :email, :password)
    end
end