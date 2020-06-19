# frozen_string_literal: true

# class ArticlesController
class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  before_action :set_article, only: %i[show edit update destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
    @popular_article = Vote.popular_article
    @categories = Category.priority_ordered
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @vote = if current_user.nil?
              nil
            else
              Vote.voteid(current_user.id, @article.id).take
            end
  end

  # GET /articles/new
  def new
    @article = Article.new
    @article.tags.build
  end

  # GET /articles/1/edit
  def edit; end

  # POST /articles
  # POST /articles.json

  def create # rubocop:disable Metrics/AbcSize:
    @article = current_user.articles.build(article_params)
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' } # rubocop:disable Layout/LineLength
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity } # rubocop:disable Layout/LineLength
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' } # rubocop:disable Layout/LineLength
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity } # rubocop:disable Layout/LineLength
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' } # rubocop:disable Layout/LineLength
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:title, :body, :image, :author_id, tags_attributes: %i[category_id id]) # rubocop:disable Layout/LineLength
  end
end
