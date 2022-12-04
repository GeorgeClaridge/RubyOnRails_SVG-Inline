class CreateTableExamples < ActiveRecord::Migration[7.0]
  def change
    create_table :table_examples do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
