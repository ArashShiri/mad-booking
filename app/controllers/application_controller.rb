class ApplicationController < ActionController::Base
  protect_from_forgery

  	def valid_user()
    	unless User.where(username: session[:cas_user], admin: true).length > 0
    		flash[:notice] = "User " + session[:cas_user] + " does not have permission to use the booking system."
    		redirect_to ('/invaliduser')
    	end
  	end

    def check_settings()
      key_notice = ""
      val_notice = ""

      if Setting.find_by_key("email_on_booking").nil?
        key_notice += "email_on_booking"
      else
        if Setting.find_by_key("email_on_booking").value.nil?
          val_notice += "email_on_booking"
        end
      end

      if Setting.find_by_key("email_on_sign_out").nil?
        key_notice += "email_on_sign_out"
      else
        if Setting.find_by_key("email_on_sign_out").value.nil?
          val_notice += "email_on_sign_out"
        end
      end

      if Setting.find_by_key("email_on_sign_in").nil?
        key_notice += "email_on_sign_in"
      else
        if Setting.find_by_key("email_on_sign_in").value.nil?
          val_notice += "email_on_sign_in"
        end
      end

      if Setting.find_by_key("site_name").nil?
        key_notice += "site_name"
      else
        if Setting.find_by_key("site_name").value.nil?
          val_notice += "site_name"
        end
      end

      if Setting.find_by_key("email_from_address").nil?
        key_notice += "email_from_address"
      else
        if Setting.find_by_key("email_from_address").value.nil?
          val_notice += "email_from_address"
        end
      end

      if key_notice != ""
        flash[:notice] = "The following settings are missing: " + key_notice
      end

      if val_notice != ""
        flash[:notice] = "The following settings are missing values: " + val_notice
      end

    end
end
