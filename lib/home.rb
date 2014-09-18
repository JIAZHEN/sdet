class Home < SitePrism::Page
  set_url "https://www.blinkboxbooks.com"

  element :search_field, "#term"
  element :search, "#submit_desk"
end