class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end


  def create
    @contact = Contact.new(contacts_params)
    if
      @contact.valid?
      @contact.deliver
    else
      render :new
    end
  end


  def contacts_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
