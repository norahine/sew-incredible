class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      flash[:success] = t(:message_sent_success)
      redirect_to new_contact_path
    else
      render "new"
    end
  end


  private
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
end
