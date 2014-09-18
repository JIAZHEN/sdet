require 'spec_helper'

def perform_search_for(keyword)
  fill_in 'term', with: keyword
  click_button 'submit_desk'
end

describe "User visit the home page" do
  before { visit "https://www.blinkboxbooks.com" }

  context "then perform a book search" do
    context "with term 'stephen Hawking'" do
      before do
        perform_search_for('stephen hawking')
        wait_until('#search .book')
      end

      context "then select a random book to view" do
        before do
          book    = all('#search .book').to_a.first
          @title  = book.find('.title').text
          @author = book.find('.author').text
          @price  = book.find('.price').text
          book.find('.title a').click
        end

        it "should display the same the book attributes as home page" do
          title_on_detail_page  = find('.book-data .title').text.upcase
          author_on_detail_page = find('.book-data .author').text
          price_on_detail_page  = find('.book-data .price').text
          expect(title_on_detail_page).to eql(@title)
          expect(author_on_detail_page).to eql(@author)
          expect(price_on_detail_page).to eql(@price)
        end

        context "on display page" do
          it "book sample can be looked through" do
            right_arrow = find('#individual-book .right-arrow')
            right_arrow.click while right_arrow.visible?
            expect(find('#individual-book .progress').text).to eq('100% read')
          end
        end
      end
    end

    context "with an exact book title 'Alice’s Adventures in Wonderland (COLLINS CLASSICS)'" do
      before do
        perform_search_for('Alice’s Adventures in Wonderland')
        wait_until('#search .book')
      end

      it "then title of the first result is equal to the 'Alice’s Adventures in Wonderland (COLLINS CLASSICS)'" do
        first_book = all('#search .book').to_a.first
        title = first_book.find('.title').text.upcase
        expect(title).to eq('Alice’s Adventures in Wonderland (COLLINS CLASSICS)'.upcase)
      end
    end

    context "with a misspelled word 'wanderland'" do
      before do
        perform_search_for('wanderland')
        wait_until('#search')
      end

      it "should return no result" do
        expect(find('#noResults')).to have_content('Unfortunately we could not find any results')
      end
    end
  end
end
