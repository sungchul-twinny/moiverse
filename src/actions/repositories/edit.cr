class Repositories::Edit < BrowserAction
  get "/repositories/:repository_id/edit" do
    repository = RepositoryQuery.find(repository_id)
    html EditPage,
      operation: SaveRepository.new(repository),
      repository: repository
  end
end
