class RelationshipsController < ApplicationController

    def show
    	@users = User.all
    	@user = User.find(current_user.id)
    end

	def follow
        current_user.follow(params[:id])
        redirect_to request.referer
    end

    def unfollow
        current_user.unfollow(params[:id])
        redirect_to request.referer
    end
end
