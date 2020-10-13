class API::ContactsController < API::APIController

    def index
        @contacts = Contact.all.order(:name)
    end

    def show
        @contact = Contact.find(params[:id])
    end


end