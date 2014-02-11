class StaticPagesController < ApplicationController
  def home
  end

  def mission
  end

  def reserve_space
  end

  def calendar
  end

  def auditions
  end

  def spotlight
  end

  def main_attraction
  end

  def encore
  end

  def media
  end

  def contact
  end

  def send_mail
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    ContactMailer.contact_email(name, email, body).deliver

    flash[:sent] = 'Message sent!'
    redirect_to contact_path
  end
end
