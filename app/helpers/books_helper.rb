module BooksHelper

  def sort_link(column, title = nil)
    title ||= column.titleize
    direction = sort_direction == "asc" ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction
  end

end
