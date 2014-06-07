module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Afridevcmty"
    end
  end
end
