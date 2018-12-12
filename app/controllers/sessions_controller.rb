class SessionsController < ApplicationController
  def new

  end

  def create
    prac = Practitioner.find_by(prac_id: params[:session][:prac_id])
    input_pw = params[:session][:password]
    puts "prac information: #{prac.inspect}"
    if prac && check_password(prac.prac_id, input_pw)
      session[:prac_id] = prac.prac_id
      flash[:success] = "You have successfully logged in"
      redirect_to practitioner_path(prac)
    else
      if ! prac
        flash.now[:danger] = "Unrecoginized prac_id: #{params[:session][:prac_id]}"
      end
      flash.now[:danger] = "Failed to login"
      render 'new'
    end
  end

  def destroy
    session[:prac_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to login_path
  end

  private

  def check_password(prac_id, password)
    if password == "temp" || password == "password"
      return true
    end
    false
  end
end
