require "faker"

class EmailsController < ApplicationController
  def index
    @emails = Email.all.reverse
    puts (@emails)
  end

  def create
    @email = Email.create(object: Faker::Book.title, body: Faker::Lorem.paragraph(3))

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end
end
