module API
  module V1
    class Items < Grape::API#Items endpoint can be accessed by any user
      version 'v1'
      format :json

      resource :items do
        #index endpoint to get all items
        desc "Return list of all items"
        get do
          Item.all
        end

        #show endpooint to a specific item
        desc "return a specific item"
        get ':id' do
          Item.find_by_id(params[:id])
        end
      end
    end
  end
end
