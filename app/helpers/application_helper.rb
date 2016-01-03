module ApplicationHelper
  def random model
    id = model.pluck(:id).sample
    model.find(id)
  end
end
