class HomeController < ApplicationController
  
  def index
    @books=Book.all
  end
  
  # def issue_book
  #   @issue_books = IssueBook.all
  # end

  # def issue_book_request
  #   @book=Book.find(params[:id])
  #   if IssueBook.where(:student_id => current_student.id , :book_id => @book.id).first.nil?
  #     @issuebook_request = current_student.issue_books.new(book_id: @book.id) 
  #     @issuebook_request.save
  #     flash[:notice] = "Book Hold Request Placed"
  #   else 
  #     flash[:notice] = "Book Hold Request Is Already Placed"
  #   end
  #   redirect_to root_path
  # end

end
