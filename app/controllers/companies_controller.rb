class CompaniesController < ApplicationController
   before_action :find_company, only: [:show, :edit, :destroy, :show, :update]
 
  def index
  	@companies=Company.all
  end

  def new
  	@company=Company.new
  	@company.employees.build
  end

	def create
		@company=Company.new(company_params)
  	if @company.save
     redirect_to @company, notice: 'Company was successfully created.'
   	else
   		render :new
  	end
 	end

  
  def show
  end

  def edit
  	@company.employees.build
  end

  def update
  	if @company.update(company_params)
  		redirect_to @company, notice: 'Details successfully updated.'
  	else
  		render :edit
  	end
  end

  def destroy
  	@company.delete
  	redirect_to root_path, notice: 'All traces of company removed'
  end

  private 
  	def company_params
  		params.require(:company).permit(:title, :description, employees_attributes: [:id, :name, :_destroy])
  	end

    def find_company
      @company=Company.find(params[:id])
    end
end
