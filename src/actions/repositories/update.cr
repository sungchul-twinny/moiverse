class Repositories::Update < BrowserAction
  put "/repositories/:repository_id" do
    repository = RepositoryQuery.find(repository_id)
    SaveRepository.update(repository, params) do |operation, updated_repository|
      if operation.saved?
        flash.success = "The record has been updated"
        redirect Show.with(updated_repository.id)
      else
        flash.failure = "It looks like the form is not valid"
        html EditPage, operation: operation, repository: updated_repository
      end
    end
  end
end
