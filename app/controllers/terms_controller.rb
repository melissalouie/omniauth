class TermsController < ApplicationController

  def create
    @term = Term.new(term_params)
    if @term.save
      redirect_to term_path(@term)
    else
      render '/auth/facebook/callback'
    end
  end

  def show
    @name = env['omniauth.auth']['info']['name']
    @term = Term.find(params[:id])
    df = DataFetcher.new
    @articles = df.get_articles(@name)
  end

  private

  def term_params
    params.require(:term).permit(:text)
  end

end
