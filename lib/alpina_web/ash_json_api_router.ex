defmodule AlpinaWeb.AshJsonApiRouter do
  use AshJsonApi.Router,
    domains: [Module.concat(["Alpina.Email"])],
    open_api: "/open_api"
end
