json.array!(@fonts) do |font|
  json.extract! font, :fontnames, :description, :html, :css
  json.url font_url(font, format: :json)
end
