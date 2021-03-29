module CommentsHelper
  def commentor_image(comment)
    if comment.commentor[:photo].nil?
      gravatar_for(comment.commentor, size: 56)
    else
      cl_image_tag(comment.commentor.photo.commentor_photo.url)
    end
  end
end
