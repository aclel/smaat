class AddUserRefToSubjects < ActiveRecord::Migration
  def change
    add_reference :subjects, :user, index: true
  end
end
