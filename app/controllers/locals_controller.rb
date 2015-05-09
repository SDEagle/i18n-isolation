class LocalsController < ApplicationController
  def german
    I18n.locale = :de
    render :language
  end

  def english
    I18n.locale = :en
    render :language
  end

  def language
  end
end
