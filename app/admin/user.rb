ActiveAdmin.register User do

  index do
    column :first_name
    column :last_name
    column :form
    column :tuesday
    column :wednesday
    column :thursday

    column 'Subjects' do |user| 
      user.subjects.each do |subject|
        subject.name
      end 
    end

    column :parent_name
    column :email
    column :reports

    actions
  end
  
end
