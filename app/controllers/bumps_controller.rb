class BumpsController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@bump = @user.bumps.new
	end

	def create
		@user = User.find(params[:user_id])
		@bump = @user.bumps.new(params[:bump])

	end



end
