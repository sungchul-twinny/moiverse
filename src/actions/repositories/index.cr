class Repositories::Index < BrowserAction
  get "/repositories" do
    html IndexPage, repositories: RepositoryQuery.new
  end
end
