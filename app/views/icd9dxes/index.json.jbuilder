json.array!(@icd9dxes) do |icd9dx|
  json.extract! icd9dx, :id, :code, :description_short, :description_long
  json.url icd9dx_url(icd9dx, format: :json)
end
