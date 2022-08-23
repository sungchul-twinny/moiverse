class Repositories::FormFields < BaseComponent
  needs operation : SaveRepository

  def render
    mount Shared::Field, operation.title, &.text_input(autofocus: "true")
    mount Shared::Field, operation.url
  end
end
