module UsersHelper
  def cover_image(user)
    if user[:photo].nil?
      raw('<img src="https://user-images.githubusercontent.com/12745474/112985530-d2cc9980-914f-11eb-8f02-3e9d443a06f1.png">')
    else
      cl_image_tag(user.cover_img.cover.url, class: 'cover-img')
    end
  end

  def profile_image(user)
    if user[:photo].nil?
      gravatar_for(user, size: 96)
    else
      cl_image_tag(user.photo.profile.url)
    end
  end

  def follower_photo(follower)
    if follower.Follower[:photo].nil?
      gravatar_for(follower.Follower, size: 64)
    else
      cl_image_tag(follower.Follower.photo.follow.url)
    end
  end

  def follow_toggle(follower)
    if current_user.followed.any? { |person| person.followed_id == follower.Follower.id }
      link_to(unfollow_path(follower.Follower), method: :delete) do
        raw('<i class="follow-picon feather-32 minus-circle"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-minus-circle follow-picon feather-32"><circle cx="12" cy="12" r="10"></circle><line x1="8" y1="12" x2="16" y2="12"></line></svg></i>')
      end
    else
      link_to(follow_path(follower.Follower)) do
        raw('<i class="follow-picon feather-32 plus-circle"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle follow-picon feather-32"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg></i>')
      end
    end
  end

  def followprofile_toggle
    if current_user.id == @user.id
      content_tag(:div, class: %w[flex-fill d-flex flex-column align-items-end justify-content-center]) do
        raw('<div class="followicon-dim follow-picon hide-item"></div>')
      end
    elsif current_user.followed.any? { |person| person.followed_id == @user.id }
      content_tag(:div, class: %w[flex-fill d-flex flex-column align-items-end justify-content-center]) do
        link_to(unfollow_path(@user), id: 'unfollow_path', method: :delete) do
          raw('<i class="follow-picon py-1 feather-32 minus-circle"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-minus-circle feather-32"><circle cx="12" cy="12" r="10"></circle><line x1="8" y1="12" x2="16" y2="12"></line></svg></i>')
        end
      end
    else
      content_tag(:div, class: %w[flex-fill d-flex flex-column align-items-end justify-content-center]) do
        link_to(follow_path(@user), id: 'follow_path') do
          raw('<i class="follow-picon  feather-32 plus-circle py-1"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle follow-picon feather-32"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg></i>')
        end
      end
    end
  end

  def userlisticon_toggle
    if current_user.id == @user.id
      content_tag(:div, class: %w[flex-fill d-flex flex-column align-items-end justify-content-center]) do
        raw('<div class="followicon-dim follow-picon hide-item"></div>')
      end
    else
      raw('<i class="follow-licon feather-32 list"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-list follow-licon feather-32"><line x1="8" y1="6" x2="21" y2="6"></line><line x1="8" y1="12" x2="21" y2="12"></line><line x1="8" y1="18" x2="21" y2="18"></line><line x1="3" y1="6" x2="3.01" y2="6"></line><line x1="3" y1="12" x2="3.01" y2="12"></line><line x1="3" y1="18" x2="3.01" y2="18"></line></svg></i>')
    end
  end
end
