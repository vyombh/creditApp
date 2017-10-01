class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
  end
  def approval

  	id = params[:id]
cd = Creditdetail.find_by_id(id);
  	
  	user = User.find_by_id(cd.user_id)
  	if user.cl >= cd.amount
  	user.cl = user.cl - cd.amount
  	cd.requestStatus = 1
  	cd.save
  	user.save
  	end
  	
  	return redirect_to '/'
  end
end

