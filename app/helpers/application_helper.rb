module ApplicationHelper

  def sidebar_items_classes(path)
    base = "flex items-center px-4 py-2 transition"
    if request.path.start_with?(path)
      "#{base} bg-secondary text-background font-medium"
    else
      "#{base} hover:bg-secondary/10"
    end
  end
end
