namespace :api do
  namespace :doc do
    desc 'Generate API documentation markdown'
    task :generate do
      require 'rspec/core/rake_task'

      RSpec::Core::RakeTask.new(:api_spec) do |t|
        t.pattern = 'spec/request/api/v1/'
        t.rspec_opts = "-f Dox::Formatter --order defined --tag dox --out public/api/docs/v1/apispec.md"
      end

      Rake::Task['api_spec'].invoke
    end

    task :publish do
      `apiary publish --path=public/api/docs/v1/apispec.md --api-name=apidocsdemo`
    end
  end
end
