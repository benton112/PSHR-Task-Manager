class ChatController < ApplicationController
  
  def index
  end 
  def get_messages
  	@chat = Message.dialog_with(params[:id],current_user.id)
  	
  	respond_to do |format|
  		format.js {render :layout=>false}
  	end
  end

  def update_messages
  	get_messages
  end
end
