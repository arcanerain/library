module ApplicationHelper

  def title
    base_title = "Library"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo.jpg", :alt => "Library", :class => "round")
  end

end
