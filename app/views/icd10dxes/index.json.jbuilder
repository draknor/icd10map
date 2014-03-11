json.array!(@icd10dxes) do |icd10dx|
  json.extract! icd10dx, :id, :code, :description_short, :description_long
  json.url icd10dx_url(icd10dx, format: :json)
end
