json.extract! reporte, :id, :equipo, :area_funcionamiento, :correo, :descripcion_problema, :fecha, :intervencion, :created_at, :updated_at
json.url reporte_url(reporte, format: :json)
