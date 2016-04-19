class Contact < ActiveRecord::Base

 def friendly_updated_at
  updated_at.strftime("%b %e, %l:%M %p")
  end

def friendly_created_at
  created_at.strftime ("%B %e, %Y")
 end

def full_name
  return "#{first_name} #{last_name}"
end

def phone_number_plus_ext
  
end
end
