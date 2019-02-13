# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_13_123233) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "archives", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre_archivo"
    t.bigint "hojavida_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hojavida_id"], name: "index_archives_on_hojavida_id"
  end

  create_table "atriremis", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "referencia"
    t.string "descripcion"
    t.string "lote"
    t.integer "iva"
    t.integer "cantidad"
    t.string "unidad"
    t.integer "valor_unitario"
    t.integer "valor_total"
    t.bigint "remision_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["remision_id"], name: "index_atriremis_on_remision_id"
  end

  create_table "clienteremis", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.string "empresa"
    t.string "nit"
    t.string "ciudad"
    t.string "direccion"
    t.string "telefono"
    t.string "forma_pago"
    t.string "pedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "componentes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre_componente"
    t.string "serial"
    t.bigint "hojavida_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hojavida_id"], name: "index_componentes_on_hojavida_id"
  end

  create_table "hojavidas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo"
    t.string "marca"
    t.string "modelo"
    t.string "serial"
    t.string "area_funcionamiento"
    t.text "descripcion"
    t.text "precauciones"
    t.date "fecha_compra"
    t.date "garantia"
    t.string "proveedor"
    t.string "pieza"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "precio"
  end

  create_table "licenses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "serial"
    t.date "fecha_vencimiento"
    t.bigint "hojavida_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hojavida_id"], name: "index_licenses_on_hojavida_id"
  end

  create_table "permisos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "serial"
    t.date "fecha_vencimiento"
    t.bigint "hojavida_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hojavida_id"], name: "index_permisos_on_hojavida_id"
  end

  create_table "remisions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "fecha_expedicion"
    t.date "fecha_vencimiento"
    t.text "nota"
    t.integer "valor_bruto"
    t.integer "descuento"
    t.integer "subtotal"
    t.integer "iva"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "clienteremi_id"
    t.index ["clienteremi_id"], name: "index_remisions_on_clienteremi_id"
  end

  create_table "reportes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "equipo"
    t.string "area_funcionamiento"
    t.string "correo"
    t.text "descripcion_problema"
    t.date "fecha"
    t.string "intervencion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "permission_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "archives", "hojavidas"
  add_foreign_key "atriremis", "remisions"
  add_foreign_key "componentes", "hojavidas"
  add_foreign_key "licenses", "hojavidas"
  add_foreign_key "permisos", "hojavidas"
  add_foreign_key "remisions", "clienteremis"
end
