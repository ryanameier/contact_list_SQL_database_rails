class PagesController < ApplicationController

  def contacts
  @contacts = Contact.all
  end
end
