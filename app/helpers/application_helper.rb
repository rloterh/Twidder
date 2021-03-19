module ApplicationHelper
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5.hexdigest(user.username.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: 'user-img')
  end

  def like_or_dislike_toggle(opinion)
    like = Like.find_by(opinion: opinion, user: current_user)
    if like
      link_to(raw('<i class="pr-1"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="red" stroke="red" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="fs-18 feather feather-16 feather-heart"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg></i><span class="text-capitalize like-t">dislike!</span>'), opinion_like_path(id: like.id, opinion_id: opinion.id), method: :delete, class: 'like-t')
    else
      link_to(raw('<i class=" pr-1"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="red" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" class="fs-18 feather feather-16 feather-heart"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg></i><span class="text-capitalize dislike-t">like!</span>'), opinion_likes_path(opinion_id: opinion.id), method: :post, class: 'dislike-t')
    end
  end
end
