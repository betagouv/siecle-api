class CreateFichiersXml < ActiveRecord::Migration[6.0]
  def change
    create_table :fichiers_xml do |t|
      t.string :contenu

      t.timestamps
    end
  end
end
