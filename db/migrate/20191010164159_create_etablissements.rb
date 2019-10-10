class CreateEtablissements < ActiveRecord::Migration[6.0]
  def change
    create_table :etablissements do |t|
      t.string :uai

      t.timestamps
    end
  end
end
