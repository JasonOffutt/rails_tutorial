# Modules are able to be included explicitly in Ruby apps.
# However, Rails includes modules under the helpsers/ folder
# to be availble in all views.

module ApplicationHelper
  
  # Return title on a per page basis                      # documentation comment
  def title                                               # method definition
    base_title = "Ruby on Rails Tutorial Sample App"      # variable assignment
    if @title.nil?                                        # boolean test for nil
      base_title                                          # implicit return
    else
      "#{base_title} | #{@title}"                         # string interpolation
    end
  end
  
  def logo
    image_tag("logo.png", :alt => 'Sample App', :class => 'round')
  end
  
end