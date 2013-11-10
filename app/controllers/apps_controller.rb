class AppsController < ApplicationController

	def show
		id = params[:id] # retrieve movie ID from URI route
		# will render app/views/movies/show.<extension> by default
	end

	def index
		@current_user = User.find_by_user_name(session[:current_user][:username])
		flash[:notice] = "#{@current_user.user_name}"
		if @current_user.is_admin then
			@apps_reim = App.find_all_by_app_type(0)
			@apps_loan = App.find_all_by_app_type(1)
			render "admin_show"
		else
			@apps_reim = App.find(:all, :conditions => {:app_type => 0, :applicant => @current_user.user_name})
			@apps_loan = App.find(:all, :conditions => {:app_type => 1, :applicant => @current_user.user_name})
			render "user_show"
		end
	end

	def new
		# default: render 'new' template
	end

	def new_app
		flash[:notice] = "#{session[:current_user]}aaaaaaaaaaa"
		@app_type = params[:app_type]
		if session[:current_user] == nil then
			flash[:notice] = "Login timed out!"
			redirect_to "/#{params[:ver]}/index"
		end
		@current_user = User.find_by_user_name(session[:current_user][:username])
		if params[:app] != nil && params[:app][:details] != '' then
			@app = App.create!(params[:app])
			@app.app_date = Time.new
			@app.applicant = session[:current_user][:username]
			@app.app_type = App.get_app_type[@app_type]
			@app.save!
			flash[:notice] = "Application successfully created."
			redirect_to 
		else
			#flash[:notice] = "Details should not be empty!"
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
