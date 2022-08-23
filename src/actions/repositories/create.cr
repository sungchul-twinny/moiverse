class Repositories::Create < BrowserAction
  post "/repositories" do
    SaveRepository.create(params) do |operation, repository|
      if repository
        flash.success = "The record has been saved"
        redirect Show.with(repository.id)
      else
        flash.failure = "It looks like the form is not valid"
        html NewPage, operation: operation
      end
    end
  end
end
