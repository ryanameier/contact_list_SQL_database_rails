class PagesController < ApplicationController

  def contacts
  @contacts = Contact.all
  end

 def index 
  @contacts = Contact.all
end

  def new
 end

def show
  @contact = Contact.find_by(id: params[:id]) 
 end

 def destroy
  @contact = Contact.find_by(id: params[:id])
  @contact.destroy
 end

def create
  @contact = Contact.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])
  @contact.save
 end

 def update
 @contact = Contact.find_by(id: params[:id])
 @contact.first_name = params[:first_name]
 @contact.last_name = params[:last_name]
 @contact.email = params[:email]
 @contact.phone_number = params[:phone_number]
 contact.save
end

 def edit
  @contact = Contact.find_by(id: params[:id])
 end
end