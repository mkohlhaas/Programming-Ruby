require 'delegate'

class User
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

class SortableUser < SimpleDelegator
  def sort_name
    "#{last_name}, #{first_name}"
  end
end

fozzie = User.new("Fozzie", "Bear")
sortable_user = SortableUser.new(fozzie)

p sortable_user.first_name
p sortable_user.sort_name
