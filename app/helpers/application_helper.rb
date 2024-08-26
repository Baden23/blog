module ApplicationHelper
  def page_navbar
    case controller.action_name
    when 'index'
      new_post_link
    when 'show'
      show_post_links + " " + home_link
    when 'edit', 'new'
    else
      home_link
    end
  end

  def new_post_link
    link_to('New Post', new_post_path, class: 'button')
  end
  
  def back_to_post_link
    link_to('Back to Post', post_path(@post), class: 'button')
  end

  def cancel_link
    link_to('Cancel', root_path, class: 'button')
  end
  
  def home_link
    link_to('Home', root_path, class: 'button')
  end

  def show_post_links
    link_to('Edit Post', edit_post_path(@post), class: 'button') + " " +
    link_to('Delete Post', post_path(@post), data: {turbo_method: :delete, turbo_confirm: 'Are
    you sure?' }, class: 'button')
  end
  
  #  def cancel_back_to_post_link
  #  link_to('Cancel', home_link, class: 'button')
  #end

  def submit_button_text(post)
    case
    when post.new_record?
      'Create Post'
    else
      'Update Post'
    end
  end
end
