require 'spec_helper'

describe "User visit the home page" do
  context "then perform a book search" do
    context "then select a random book to view" do
      it "should display the same the book attributes as home page"
    end

    context "with an exact book title 'Alice’s Adventures in Wonderland'" do
      it "then title of the first result is equal to the 'Alice’s Adventures in Wonderland'"
    end

    context "with a misspelled word 'Alice’s Adventures in Wanderland'" do
      it "should return no result"
    end
  end
end