class IssueBooksController < ApplicationController
  before_action :check_book, only: %i[create]

  def index
    @issue_books = IssueBook.all
  end

  def new
    @issue_books_all = Book.all
    @issue_book = current_student.issue_books.new
  end

  def create
    issue_book_params[:book_ids].each do |book_id|
      if IssueBook.where(student_id: current_student.id, book_id: book_id.to_i).first.nil?
        @issuebook_request = IssueBook.create(book_id: book_id.to_i, student_id: current_student.id)
        @issuebook_request.save
        flash[:notice] = 'Book Hold Request Placed'
      else
        flash[:notice] = 'Book Hold Request Is Already Placed'
      end
    end
    redirect_to root_path
  end

  def update
    @issue_book = IssueBook.where(status: 'Pending', id: params[:id])

    if @issue_book.present?
      # BookMailer.book_issued.deliver!
      @issue_book.update(status: 'Success')
      @issue_books = IssueBook.pending
      flash[:notice] = 'Status Updated'
    else
      flash[:notice] = 'Status Already Updated'
    end
    redirect_to admins_path
  end

  def destroy
    if IssueBook.where(status: 'Success', id: params[:id]).present?
      flash[:notice] = 'Status Already Updated'
    else
      @issue_book = IssueBook.find_by_id(params[:id])
      # RejectMailer.reject_request.deliver!
      @issue_book.destroy
      flash[:notice] = 'Book Removed successfully'
    end
    redirect_to admins_path
  end

  private

  def check_book
    @book = Book.find(params[:issue_book][:book_ids])
  end

  def issue_book_params
    params.require(:issue_book).permit(book_ids: [])
  end
end

# def new
#     @issue_book=IssueBook.new
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
