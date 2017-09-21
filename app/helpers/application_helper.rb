module ApplicationHelper

  def guide
    @guide ||= Spina::Page.where(name: 'guide').first_or_initialize
  end

end
