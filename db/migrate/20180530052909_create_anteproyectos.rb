class CreateAnteproyectos < ActiveRecord::Migration[5.0]
  def change
    create_table :anteproyectos do |t|
      t.string :nombre
      t.string :objetivo
      t.string :justificacion
      t.string :cronograma
      t.string :descripcionactividad
      t.string :nombreempresa
      t.string :direccionempresa
      t.string :telefonoempresa
      t.string :estatus

      t.timestamps
    end
  end
end
