require "faker"

class EmailsController < ApplicationController
  def index
    @emails = Email.all.reverse
  end

  def create
    @email = Email.create(object: Faker::Book.title, body: Faker::Lorem.paragraph(100), read: false)

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def show
    @email = find_email
    @email.update(read: true)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def update
    @email = find_email
    @email.read ? @email.update(read: false) : @email.update(read: true)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def destroy
    @email = find_email
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  private

  def find_email
    Email.find(params[:id])
  end
end
