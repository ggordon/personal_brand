module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in webrat_steps.rb
  #
  def path_to(page_name)
    case page_name
    
    when /the homepage/
      '/'
    when /the blog page/
      '/'
    when /the sign in page/
      '/signin'
    when /the sign out page/
      '/signout'
      
    # resume
    when /the resume page/
      '/resume'
      
    # static pages
    when /the contact page/
      '/contact'
    when /the about page/
      '/about'
    
    # posts
    when /the new post page/
      new_post_path
    when /the post page for "(.*)"/
      post_path(Post.find_by_slug($1))
    when /the edit post page for "(.*)"/
      edit_post_path(Post.find_by_slug($1))
      
    # Add more mappings here.
    # Here is a more fancy example:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
