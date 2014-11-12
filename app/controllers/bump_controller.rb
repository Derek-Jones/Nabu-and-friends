class BumpsController < ApplicationController

	def new
		@bump=Bump.new
	end

	def create
		@bump = Bump.new(params[:bump])
	end



end
