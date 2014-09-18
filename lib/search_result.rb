class SearchResult < SitePrism::Page
  set_url "https://www.blinkboxbooks.com/#!/search"

  elements :books, "#search .book"
  element :search, "#submit_desk"
end