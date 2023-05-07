class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.boolean :type_person
      t.string :identification
      t.date :document_issue_date
      t.date :document_expiration_date
      t.string :name
      t.string :email
      t.string :main_phone
      t.string :secondary_phone

      t.timestamps
    end
  end
end
