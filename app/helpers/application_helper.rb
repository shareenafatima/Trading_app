module ApplicationHelper

  def gravatar_for(user, options = { size: 200 })
  gravatar_id = Digest::MDS::hexdigest(user.email.downcase)
  size = options[:size]
  gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  image_tag(gravatar_url, alt: user.name, class: "border-radius-50")
end
end
