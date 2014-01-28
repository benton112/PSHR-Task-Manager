class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
	before_filter :set_locale
  before_filter :setNote
  before_filter :setMessages

  def setMessages
    if !current_user.nil?
      @messages = Message.dialog_with(params[:id], current_user.id)
    end
    @new_msg = Message.new
  end
  
  def setNote
    if !current_user.nil? 
      @notes = current_user.notes  #Note.all
      @note = Note.new
    end
  end
  	
  def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
  end

	def default_url_options(options={})
	  logger.debug "default_url_options is passed options: #{options.inspect}\n"
	  { locale: I18n.locale }
	end

end
