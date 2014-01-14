class AddFirstNameAndLastNameAndFormAndMondayAndTuesdayAndWednesdayAndThursdayAndFridayAndParentNameAndParentNameAndEmailAndContactAndReportsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :form, :string
    add_column :users, :monday, :boolean
    add_column :users, :tuesday, :boolean
    add_column :users, :wednesday, :boolean
    add_column :users, :thursday, :boolean
    add_column :users, :friday, :boolean
    add_column :users, :parent_name, :string
    add_column :users, :contact, :string
    add_column :users, :reports, :boolean
  end
end
