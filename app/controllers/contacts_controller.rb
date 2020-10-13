class ContactsController < ApplicationController

    def index
        @contacts = Contact.all.order(:name)
    end

    def new
       
        @contact = Contact.new
        
    end

    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to :root
        else
            render :new
        end
    end

    def contact_params
        params.require(:contact).permit(:name, :email)
    end
    

end
