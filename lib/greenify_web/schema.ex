defmodule Greenify.Schema do
    use Absinthe.Schema

    import_types Greenify.Schema.DataTypes

    query do
        @desc "Get a list of events"
        field :event, list_of(:event) do
            resolve fn _parent, _args, _resolution ->
                {:ok, Greenify.Log.list_events()}
            end
        end
    end
end