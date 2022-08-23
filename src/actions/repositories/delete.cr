class Repositories::Delete < BrowserAction
  delete "/repositories/:repository_id" do
    repository = RepositoryQuery.find(repository_id)
    DeleteRepository.delete(repository) do |_operation, _deleted|
      flash.success = "Deleted the repository"
      redirect Index
    end
  end
end
