Implement any one call back method :

		validates :title, presence: true  <br>
		validates :description, presence: true <br>

	   before_action :find_company, only: [:show, :edit, :destroy, :show, :update]
