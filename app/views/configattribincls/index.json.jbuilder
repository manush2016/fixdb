json.array!(@configattribincls) do |configattribincl|
  json.extract! configattribincl, :id, :configattribdetail_id, :th_warning, :th_critical
  json.url configattribincl_url(configattribincl, format: :json)
end
