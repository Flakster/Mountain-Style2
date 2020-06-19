# frozen_string_literal: true

class VotesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_article

  def create
    @vote = current_user.votes.new(article_id: params[:article_id])
    if @vote.save
      flash[:notice] = 'Voted successfully.'
    else
      flash[:alert] = 'You can\'t vote twice the same article'
    end
    redirect_to article_path(params[:article_id])
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if vote
      vote.destroy
      redirect_to article_path(params[:article_id]), notice: 'Your vote was deleted.'
    else
      redirect_to root_path
    end
  end

  private

  def find_article
    @article = Article.find(params[:article_id])
  end
end
