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
      link_to(raw('<i class="pr-1"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="red" stroke="red" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="fs-18 feather feather-16 feather-heart"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg></i><span class="text-capitalize">dislike!</span>'), opinion_like_path(id: like.id, opinion_id: opinion.id), method: :delete)
    else
      link_to(raw('<i class=" pr-1"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="red" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" class="fs-18 feather feather-16 feather-heart"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg></i><span class="text-capitalize">like!</span>'), opinion_likes_path(opinion_id: opinion.id), method: :post)
    end
  end

  def user_image(user)
    if user[:photo].nil?
      gravatar_for(user, size: 64)
    else
      cl_image_tag(user.photo.follow.url)
    end
  end

  def author_image(opinion)
    if opinion.author[:photo].nil?
      gravatar_for(opinion.author, size: 64)
    else
      cl_image_tag(opinion.author.photo.author_photo.url)
    end
  end

  def current_user_image(current_user)
    if current_user[:photo].nil?
      gravatar_for(current_user, size: 75)
    else
      cl_image_tag(current_user.photo.user_photo.url)
    end
  end

  def error_msg(model)
    if model.errors.full_messages.any?
      model.errors.full_messages.each do |message|
        content_tag(:p, message.to_s, class: 'text-danger')
      end
    end
  end

  def form_error_msg(model)
    if model.errors.any?
      content_tag(:h4, "#{pluralize(@user.errors.count, 'error')} prohibited this user from being saved:", class: %w[notice-alert text-danger text-bold])
      content_tag(:ul) do
        model.errors.full_messages.each do |message|
          content_tag(:li, message.to_s, class: 'text-danger')
        end
      end
    end
  end

  def like_stat(opinion)
    pluralize(opinion.likes.size, 'like').to_s if opinion.likes.any?
  end

  def reply_stat(opinion)
    pluralize(opinion.comments.count, 'reply').to_s if opinion.comments.any?
  end

  def flash_notice
    content_tag(:h6, "#{notice}!", class: %w[notice-alert notice alert text-success my-0]) if flash[:notice]
  end

  def flash_alert
    content_tag(:h6, "#{alert}!", class: %w[notice-alert notice alert text-danger my-0]) if flash[:alert]
  end

  def current?(key, path)
    key.to_s if current_page? path
  end
end
