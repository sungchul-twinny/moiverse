class Repositories::ShowPage < MainLayout
  needs repository : Repository
  quick_def page_title, "Repository with id: #{repository.id}"

  def content
    link "Back to all Repositories", Repositories::Index
    h1 "Repository with id: #{repository.id}"
    render_actions
    render_repository_fields
  end

  def render_actions
    section do
      link "Edit", Repositories::Edit.with(repository.id)
      text " | "
      link "Delete",
        Repositories::Delete.with(repository.id),
        data_confirm: "Are you sure?"
    end
  end

  def render_repository_fields
    ul do
      li do
        text "title: "
        strong repository.title.to_s
      end
      li do
        text "url: "
        strong repository.url.to_s
      end
    end
  end
end
