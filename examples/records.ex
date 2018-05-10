defmodule User do
    require Record
    Record.defrecord :user, [:name, :age]
end

# Import the module to make the user macros locally available
import User

# To create records
record = user()        #=> {:user, "meg", 25}
record = user(age: 26) #=> {:user, "meg", 26}

# To get a field from the record
user(record, :name) #=> "meg"

Record.is_record(record)