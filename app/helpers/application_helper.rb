module ApplicationHelper
  
  def gravatar_for(chef, options = {size: 80})
    gravatar_id = Digest::MD5::hexdigest(chef.email.downcase)
    size = option[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: chef.chefname, class: "gravatar")

#image_tag("http://www.gravatar.com/avatar.php?gravatar_id=#{Digest::MD5::hexdigest(@user.email)}", 
#:alt => 'Avatar', :class => 'avatar')
  end
  
  
  
end
