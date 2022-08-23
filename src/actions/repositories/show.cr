class Repositories::Show < BrowserAction
  get "/repositories/:repository_id" do
    html ShowPage, repository: RepositoryQuery.find(repository_id)
  end
end
