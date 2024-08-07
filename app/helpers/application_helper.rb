module ApplicationHelper
  def total_access_count
   Dokuman.sum(:access_count)
  end
end
