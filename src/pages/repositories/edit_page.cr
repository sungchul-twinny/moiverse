class Repositories::EditPage < MainLayout
  needs operation : SaveRepository
  needs repository : Repository
  quick_def page_title, "Edit Repository with id: #{repository.id}"

  def content
    link "Back to all Repositories", Repositories::Index
    h1 "Edit Repository with id: #{repository.id}"
    render_repository_form(operation)
  end

  def render_repository_form(op)
    form_for Repositories::Update.with(repository.id) do
      # Edit fields in src/components/repositories/form_fields.cr
      mount Repositories::FormFields, op

      submit "Update", data_disable_with: "Updating..."
    end
  end
end
