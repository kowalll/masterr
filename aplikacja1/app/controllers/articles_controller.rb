class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    logger.debug(params.inspect)

    @setting = Setting.first
    @articles = Article.all # order(title: @setting.order_title).where(" created_at > ?", @setting.show_order_then)

    @articles = @articles.where(active: params[:show_active].to_s == "false" ? 0 : 1 )  unless params[:show_active].nil?
    @articles = @articles.order("title #{params[:order_title]}")   unless params[:order_title].nil?
     respond_to do |format|
    format.html
    format.json
    end
  end
  # GET /articles/1
  # GET /articles/1.json
  def show
    @attachments = @article.attachments
    # @attachment_list = @attachments.map(&:name).join(',')
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit

  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Poszło.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Spoko loko.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :content, :active, :url, :attachment )

    end
  end