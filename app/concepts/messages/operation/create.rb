class Messages::Create < Trailblazer::Operation
  step Model(Message, :new)
  step Contract::Build(constant: Messages::Contract::Create)
  step Contract::Validate()
  step Contract::Persist()
end
