class BooksController < ApplicationController

  helper_method :sort_column, :sort_direction

  # GET /books
  # GET /books.xml
  def index

    @title = "Home"

    @books = Book.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])

    
#    if(params[:title].nil?)
#      @books = Book.all
#    else
#      @books = Book.search params[:title]
#    end
#
#    if(params[:c] && params[:d])
#      order = "#{params[:c]} #{params[:d] == 'down' ? 'DESC' : 'ASC'}"
#      @books = Book.find(:all, :order => order)
#    end

  end

  # GET /books/1
  # GET /books/1.xml
  def show
    @book = Book.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
    end
  end

  # GET /books/new
  # GET /books/new.xml
  def new
    @book = Book.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book }
    end
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.xml
  def create
    @book = Book.new(params[:book])

    respond_to do |format|
      if @book.save
        format.html { redirect_to(@book, :notice => 'Book was successfully added.') }
        format.xml  { render :xml => @book, :status => :created, :location => @book }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.xml
  def update
    params[:book][:author_ids] ||= []
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to(@book, :notice => 'Book info was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.xml
  def destroy
    if !current_user.nil?
      @book = Book.find(params[:id])
      @book.destroy

      flash[:success] = "Successfully deleted!"

      @books = Book.all
    end
#    respond_to do |format|
#      format.html { redirect_to(books_url) }
#      format.xml  { head :ok }
#    end
  end

  private

  def sort_column
    Book.column_names.include?(params[:sort]) ? params[:sort] : "title"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end

end
