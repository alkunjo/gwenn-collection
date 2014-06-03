class CreateCompanyProfiles < ActiveRecord::Migration
  def change
    create_table :company_profiles do |t|
      t.string :name
      t.attachment :header

      t.timestamps
    end
  end
end
