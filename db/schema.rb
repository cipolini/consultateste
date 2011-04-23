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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110423020246) do

  create_table "consulta", :force => true do |t|
    t.integer  "id_paciente"
    t.string   "Descricao"
    t.string   "Tipo_consulta"
    t.string   "Exames"
    t.string   "Exame_fisico"
    t.string   "Cirurgia"
    t.string   "Diagnostico"
    t.string   "Convenio"
    t.string   "Tipo_plano"
    t.datetime "Data_consulta"
    t.string   "Status"
    t.integer  "id_consulta"
    t.integer  "id_medico"
    t.integer  "id_systemUser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "convenios", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estado_civils", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos", :force => true do |t|
    t.string   "nome"
    t.integer  "id_consulta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicos", :force => true do |t|
    t.string   "nome"
    t.integer  "systemUser_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", :force => true do |t|
    t.string   "CPF"
    t.string   "RG"
    t.string   "Nome"
    t.string   "CEP"
    t.string   "Endereco"
    t.string   "Numero"
    t.string   "Bairro"
    t.string   "Cidade"
    t.string   "UF"
    t.string   "Complemento"
    t.string   "Sexo"
    t.string   "Estado_Civil"
    t.datetime "data_nascimento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planos", :force => true do |t|
    t.string   "descricao"
    t.integer  "convenio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_system_users", :force => true do |t|
    t.string   "descricao"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_users", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.string   "status"
    t.string   "tipo"
    t.integer  "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_system_users", :force => true do |t|
    t.string   "tipo"
    t.string   "descricao"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
