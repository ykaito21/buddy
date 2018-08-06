class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.string :first_name_kanji
      t.string :last_name_kanji
      t.string :first_name_kana
      t.string :last_name_kana
      t.string :gender
      t.date :dob
      t.string :phone_number
      t.string :u_image_url
      t.string :postal_code
      t.string :state_kanji
      t.string :state_kana
      t.string :city_kanji
      t.string :city_kana
      t.string :town_kanji
      t.string :town_kana
      t.string :line1_kanji
      t.string :line1_kana
      t.string :line2_kanji
      t.string :line2_kana
      t.string :verification_document
      t.string :account_id
      t.boolean :tos, null: false, default: false
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
