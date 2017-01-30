json.extract! contact, :id, :nombre, :apellido, :apodo, :telefono, :email, :direccion, :created_at, :updated_at
json.url contact_url(contact, format: :json)