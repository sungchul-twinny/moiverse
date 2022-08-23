class Repository < BaseModel
  table do
    column title : String
    column url : String
    column status : Int64 = 0
  end
end
