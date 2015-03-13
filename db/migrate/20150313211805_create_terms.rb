class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :text
    end
  end
end
