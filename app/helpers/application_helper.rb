module ApplicationHelper
  def set_nav_active(path)
    "active" if current_page?(path)
  end
  
  def set_admin_active(path)
    "current" if current_page?(path)
  end
end
