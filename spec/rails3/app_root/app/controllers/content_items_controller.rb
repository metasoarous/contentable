class ContentItemsController < ApplicationController
  # GET /content_items
  # GET /content_items.xml
  def index
    @content_items = ContentItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @content_items }
    end
  end

  # GET /content_items/1
  # GET /content_items/1.xml
  def show
    @content_item = ContentItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @content_item }
    end
  end

  # GET /content_items/new
  # GET /content_items/new.xml
  def new
    @content_item = ContentItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @content_item }
    end
  end

  # GET /content_items/1/edit
  def edit
    @content_item = ContentItem.find(params[:id])
  end

  # POST /content_items
  # POST /content_items.xml
  def create
    @content_item = ContentItem.new(params[:content_item])

    respond_to do |format|
      if @content_item.save
        format.html { redirect_to(@content_item, :notice => 'Content item was successfully created.') }
        format.xml  { render :xml => @content_item, :status => :created, :location => @content_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @content_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /content_items/1
  # PUT /content_items/1.xml
  def update
    @content_item = ContentItem.find(params[:id])

    respond_to do |format|
      if @content_item.update_attributes(params[:content_item])
        format.html { redirect_to(@content_item, :notice => 'Content item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @content_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /content_items/1
  # DELETE /content_items/1.xml
  def destroy
    @content_item = ContentItem.find(params[:id])
    @content_item.destroy

    respond_to do |format|
      format.html { redirect_to(content_items_url) }
      format.xml  { head :ok }
    end
  end
end
