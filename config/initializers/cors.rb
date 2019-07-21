Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins "http://localhost:3000"
        resource "*", headers: :any, methods: [:post, :put, :patch, :get, :delete, :options, :head], credentials: true
    end
    allow do
        origins "https://app_name.herokuapp.com"
        resource "*", headers: :any, methods: [:post, :put, :patch, :get, :delete, :options, :head], credentials: true
    end
end