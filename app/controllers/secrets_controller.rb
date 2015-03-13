class SecretsController < ApplicationController

  def index
    @name = env['omniauth.auth']['info']['first_name']

    df = DataFetcher.new
    @articles = df.get_articles(@name)
  end

end
