class StaticPagesController < ApplicationController
  def home
    @carousel_items = ContentfulClient.instance.carousel_items
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

  def send_contact_email
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    ContactMailer.contact_email(name, email, body).deliver

    flash[:sent] = 'Message sent!'
    redirect_to contact_path
  end

  def send_nomination_email
    nominee = params[:nominee]
    nominator = params[:nominator]
    email = params[:email]
    NominationMailer.nomination_email(nominee, nominator, email).deliver

    flash[:sent] = 'Message sent!'
    redirect_to nomination_path
  end
end
