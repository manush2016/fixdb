json.array!(@configattribexcls) do |configattribexcl|
  json.extract! configattribexcl, :id, :configattribdetail_id, :excludemonitor
  json.url configattribexcl_url(configattribexcl, format: :json)
end
