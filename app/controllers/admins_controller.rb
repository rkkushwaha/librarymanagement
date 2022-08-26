class AdminsController < ApplicationController
    def index
        @issue_books=IssueBook.all
    end
 
    # def show
    #     if IssueBook.where(:status => "Pending",:student_id => params[:id] ).present?
    #         @issue_book =IssueBook.find_by_id(params[:id])
    #         @issue_book.update(status: "Success")
    #         flash[:notice] = "Status Updated"
    #     elsif IssueBook.where(:status => "Success",:student_id => params[:id] ).present?
    #         @issue_book =IssueBook.find_by_id(params[:id])
    #         @issue_book.destroy
    #     else    
    #         flash[:notice] = "Status Already Updated"
    #     end
    #     redirect_to admins_path
    # end

    def update
        if IssueBook.where(:status => "Pending",:student_id => params[:id] ).present?
            @issue_book =IssueBook.find_by_id(params[:id])
            @issue_book.update(status: "Success")
            flash[:notice] = "Status Updated"
        elsif IssueBook.where(:status => "Success",:student_id => params[:id] ).present?
            @issue_book =IssueBook.find_by_id(params[:id])
            @issue_book.destroy
        else    
            flash[:notice] = "Status Already Updated"
        end
        redirect_to admins_path
    end

    private

    def issue_book_params
        params.require(:issue_book).permit(:student_id,:book_id,:count_days,:status)
    end
end
