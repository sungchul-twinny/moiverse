class Repositories::NewPage < MainLayout
  needs operation : SaveRepository
  quick_def page_title, "New Repository"

  def content
    h1 "New Repository"
    render_repository_form(operation)
  end

  def render_repository_form(op)
    form_for Repositories::Create do
      # Edit fields in src/components/repositories/form_fields.cr
      mount Repositories::FormFields, op

      submit "Save", data_disable_with: "Saving..."
    end
  end
end
