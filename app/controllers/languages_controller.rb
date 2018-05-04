class LanguagesController < ApplicationController

  def index
    @languages = Language.all
  end

  def create
    @language = Language.new language_params
    if @language.save
      render json: {
          id: @language.id,
          name: @language.name
      }
    else
      render json: { errors: @language.errors.full_messages.join(', ') }, status: 422
    end
  end

  def autocomplete
    @languages = Language.all
      .where("name ILIKE ?", "%#{params[:term]}%")
      .ordered

    render json: @languages.map { |language|
      {
        label: language.name,
        value: language.name,
        id: language.id,
      }
    }
  end

  private

  def language_params
    params.require(:language).permit :name
  end
end
