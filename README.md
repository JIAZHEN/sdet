SDET
========
## Framework
In this project, I used Ruby 2.0, RSpec, Capybara, Selenium-Webdriver and SitePrism. Following the instruction, I wrote the pending examples first and then implement the code.

## Examples
As we can see in `blinkbox_spec.rb`, there are four examples:
- User can perform book search from the home page and select a random book from the search results page to view its details. Book attributes (title, author and price) displayed on the book details page are the same as on the search results page.
- When user searches for an exact book title (such as “Alice’s Adventures in Wonderland”), then title of the first result is equal to the search string. 
- User gets no results when searching for a misspelled word, e.g. “wanderland”.
- Book sample can be looked through (navigated through pages) on a book details page.

## Improvements
There are many other scenarios can be automated.

- Click search button with any keyword should not perform the search.
- Input some sql injections such as `; 1=1` should not break the serach functionality.
- Input long keywork such as `a` X 100 should return no result and will not break the serach functionality.
- Search result will show only 60 records for the first page.
- Search result can be displayed in list view.
- Search result can be sorted by criteria.
- List view should display Tesco Clubcard points.
- There are `Try it free` and `Buy now` buttons on list view.
- Click on the down arrow button will display more search results.


## Live bug (IMO):
Search 'The Nature of Space and Time'
The author on the home page is `Stephen Hawking, Roger P…`
However, the author on the detail page is `Stephen Hawking, Roger Pe…`

I am expecting they should be exactly the same. And I would suggest to keep them the same so that they are consistent. 
