class CreateRepositories::V20220823104455 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Repository) do
      primary_key id : Int64
      add_timestamps
      add title : String
      add url : String
      add status : Int64
    end
  end

  def rollback
    drop table_for(Repository)
  end
end
