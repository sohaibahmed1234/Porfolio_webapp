class CreateTermAndConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :term_and_conditions do |t|

      t.timestamps
    end
  end
end
