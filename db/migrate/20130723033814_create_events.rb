class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :agenda
      t.integer :total_seats
      t.integer :total_attendence
      t.boolean :any_talk
      t.string :keynoter_name
      t.string :talk_subject
      t.text :address

      t.timestamps
    end
  end
end
