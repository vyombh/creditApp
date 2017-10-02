class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
  end
  def approval

  	id = params[:id]
	cd = Creditdetail.find_by_id(id);
  	cd.requestStatus = 1
  	cd.save
  	
  	return redirect_to '/',success: 'credit request accepted'
  end
  	def payment
  	id = params[:id]
  	cd = Creditdetail.find_by_id(id)
  	user = User.find_by_id(cd.user_id)
  	user.cl = user.cl + cd.amount
  	cd.repaidAmount = cd.amount
  	cd.isPaid = 1
  	user.save
  	cd.save
  	return redirect_to '/',success: 'payment successfully done'
  end
end

