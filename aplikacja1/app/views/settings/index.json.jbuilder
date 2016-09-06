json.array!(@setting) do |setting|
  json.extract! article, :id, :order_title, :show_order_then, :show_active
end
