defmodule Alpina.Email do
  use Ash.Domain, extensions: [AshJsonApi.Domain]

  json_api do
    routes do
      # in the domain `base_route` acts like a scope
      base_route "contact", Alpina.Email.Contact do
        post :create
      end
    end
  end

  resources do
    resource Alpina.Email.Contact do
      # Define an interface for calling resource actions.
      define :create_contact, action: :create
    end
  end
end