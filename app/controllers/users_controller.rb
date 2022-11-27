class UsersController < ApplicationController

    def show
        user = User.find_by(id: params[:id])
        render json: user, include: :items, except:[:created_at, :updated_at]
    end

end
