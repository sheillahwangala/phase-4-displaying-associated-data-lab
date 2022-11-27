class ItemsController < ApplicationController

    def index
        items = Item.all 
        render json: items, include: :user, except:[:ceated_at, :updated_at]
    end
    
end
