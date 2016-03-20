class ArticlesController < ApplicationController

  include ArticlesHelper

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    # **
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
end

# **
  # => Longest way
  # @article = Article.new
  # @article.title = params[:article][:title]
  # @article.body = params[:article][:body]
  # @article.save
  # redirect_to article_path(@article)

  # => Long way - hopping into the params[:article] hash to pull its data out and stick it right back into a hash with the same keys/structure
  # @article = Article.new(
  #   title: params[:article][:title]
  #   body: params[:article][:body])
  # redirect_to article_path(@article)

  # => Short way. Blows up. For security reasons, it’s not a good idea to blindly save parameters sent into us via the params hash. So Rails gives us: Strong Parameters.
  # @article = Article.new(params[:article])
  # @article.save
  # redirect_to article_path(@article)
