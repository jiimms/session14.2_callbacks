Implement any one call back method :

		validates :title, presence: true  
		validates :description, presence: true 

	   before_action :find_company, only: [:show, :edit, :destroy, :show, :update]
