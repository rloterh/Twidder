module ApplicationHelper
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5.hexdigest(user.username.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: 'user-img')
  end

 def like_or_dislike_btn(opinion)
    like = Like.find_by(opinion: opinion, user: current_user)
    if like
      link_to('Dislike!', opinion_like_path(id: like.id, opinion_id: opinion.id), method: :delete)
    else
      link_to('Like!', opinion_likes_path(opinion_id: opinion.id), method: :post)
    end
  end
end
