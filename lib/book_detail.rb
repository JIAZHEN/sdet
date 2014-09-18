class BookDetail < SitePrism::Page

  element :title,           ".book-data .title"
  element :author,          ".book-data .author"
  element :price,           ".book-data .price"
  element :right_arrow,     "#individual-book .right-arrow"
  element :sample_progress, "#individual-book .progress"
end