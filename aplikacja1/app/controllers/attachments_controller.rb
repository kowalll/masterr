class AttachmentsController < ApplicationController
  before_action :set_attachment, only: [:show, :edit, :update, :destroy, :position]
  before_action :get_all_articles, only: [:new, :create, :edit, :update, :position]
  respond_to :js, :json, :html

  # GET /attachments
  # GET /attachments.json
  def index
    @attachments = Attachment.all
    respond_to do |format|
    format.html
    format.json
    format.js
    end
  end

  def generate
   # respond_to do |format|
   # format.html
   # format.js
   # end
    article = Article.order("RAND()").first
    @attachment = Attachment.new
    @attachment.name = Faker::Name.name
    @attachment.url = Faker::Internet.url
    @attachment.active = [true, false].sample
    @attachment.article = article
    @attachment.save
    #   raise @attachment.id
    #   raise @attachment.inspect
    # else
    #   raise @attachment.errors.inspect
    # end
  # raise @attachment.generate
  end

  def show_alert
  end

  def show_destroyed
    @attachment = Attachment.find(params[:id])
    respond_to do |format|
    format.html
    format.json { render json: trip, location: trip }
    format.js { render :nothing => true }
  end
  end
  def 
  end
    
  end
  def position
    acts_as_list
  end
  # GET /attachments/1
  # GET /attachments/1.json
  def show
    respond_to do |format|
    format.html
    format.json
    format.js
  end
  end

  # GET /attachments/new
  def new
    @attachment = Attachment.new
    
  end

  # GET /attachments/1/edit
  def edit
    @attachments = Attachment.last
  end

  # POST /attachments
  # POST /attachments.json
  def create
    @attachment = Attachment.new(attachment_params)

    respond_to do |format|
      if @attachment.save
        format.html { redirect_to @attachment, notice: 'gotowe.' }
        format.json { render :show, status: :created, location: @attachment }
      else
        format.html { render :new }
        format.json { render json: @attachment.errors, status: :unprocessable_entity }
        format.js

      end
    end
  end

  # PATCH/PUT /attachments/1
  # PATCH/PUT /attachments/1.json
  def update
    respond_to do |format|
      if @attachment.update(attachment_params)
        format.html { redirect_to @attachment, notice: 'zmiana.' }
        format.json { render :show, status: :ok, location: @attachment }
      else
        format.html { render :edit }
        format.json { render json: @attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attachments/1
  # DELETE /attachments/1.json
  def destroy
    @attachment.destroy
  end

  private
    def get_all_articles
      @articles = Article.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_attachment
      @attachment = Attachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attachment_params
      params.require(:attachment).permit(:article_id, :name, :url, :active, :position)
    end
end