class HiController < ApplicationController
  def index
  @stud = 'Сергій Афтанас'
  @message = "Моє повідомлення прийшло з Контролера"
  @time = Time.now(in: '+02:00')
  end
end