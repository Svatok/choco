class MessagesController < BaseController
  def create
    result = run Messages::Create

    if result.success?
      flash[:success] = 'Сообщение отправлено!'
    else
      flash[:danger] = 'Пожалуйста, заполните все поля и введите правильный email.'
    end

    redirect_to contacts_path
  end
end
