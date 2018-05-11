class Admin::Session::Create < Trailblazer::Operation
  step Contract::Build(constant: Admin::Session::Contract::Create)
  step Contract::Validate()
  step :model!
  step :authenticate_admin!
  step :create_session!

  def model!(options, params:, **)
    options['model'] = User.find_by(email: params[:email])
  end

  def authenticate_admin!(params:, model:, **)
    model.authenticate(params[:password])
  end

  def create_session!(model:, session:, **)
    session[:user_id] = model.id
  end
end
