class UnvotesController < ApplicationController
  # GET /unvotes
  # GET /unvotes.xml
  def index
    @unvotes = Unvote.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unvotes }
    end
  end

  # GET /unvotes/1
  # GET /unvotes/1.xml
  def show
    @unvote = Unvote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unvote }
    end
  end

  # GET /unvotes/new
  # GET /unvotes/new.xml
  def new
    @unvote = Unvote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unvote }
    end
  end

  # GET /unvotes/1/edit
  def edit
    @unvote = Unvote.find(params[:id])
  end

  # POST /unvotes
  # POST /unvotes.xml
  def create
    @unvote = Unvote.new(params[:unvote])
    @question = Question.find(params[:question_id])
    @unvote.question=@question

    respond_to do |format|
      if @unvote.save
        flash[:notice] = 'Unvote was successfully created.'
        format.html { redirect_to(@question) }
        format.xml  { render :xml => @unvote, :status => :created, :location => @unvote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unvote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unvotes/1
  # PUT /unvotes/1.xml
  def update
    @unvote = Unvote.find(params[:id])

    respond_to do |format|
      if @unvote.update_attributes(params[:unvote])
        flash[:notice] = 'Unvote was successfully updated.'
        format.html { redirect_to(@unvote) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unvote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unvotes/1
  # DELETE /unvotes/1.xml
  def destroy
    @unvote = Unvote.find(params[:id])
    @unvote.destroy

    respond_to do |format|
      format.html { redirect_to(unvotes_url) }
      format.xml  { head :ok }
    end
  end
end
