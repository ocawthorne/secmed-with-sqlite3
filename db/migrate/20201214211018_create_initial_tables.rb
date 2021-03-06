class CreateInitialTables < ActiveRecord::Migration[6.0]
  def change

    create_table :doctors do |t|
      t.string :first_name
      t.string :surname
      t.timestamps null: false # Stored as a "signed up on" date
    end

    create_table :appointments do |t|
      t.datetime :date
      t.belongs_to :doctor
      t.belongs_to :patient
    end

    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :surname
      t.datetime :date_of_birth
      t.timestamps null: false # Stored as a "signed up on" date
    end
    
    create_table :patient_conditions do |t|
      t.string :description
      t.belongs_to :patient
      t.belongs_to :condition
    end

    create_table :conditions do |t|
      t.string :name
    end

    create_table :patient_drugs do |t|
      t.string :dosage
      t.belongs_to :patient
      t.belongs_to :drug
    end

    create_table :drugs do |t|
      t.string :name
    end

  end
end
