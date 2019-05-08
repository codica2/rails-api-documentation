# frozen_string_literal: true

module Docs

  module V1

    module Books

      extend Dox::DSL::Syntax

      document :api do
        resource 'Books' do
          endpoint '/books'
          group 'Books'
        end
      end

      document :index do
        action 'Index'
      end

      document :show do
        action 'Show'
      end

      document :create do
        action 'Create'
      end

      document :update do
        action 'Update'
      end

      document :destroy do
        action 'Destroy'
      end

    end

  end

end
