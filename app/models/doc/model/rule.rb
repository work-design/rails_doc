module Doc
  module Model::Rule
    extend ActiveSupport::Concern

    included do
      attribute :name, :string
      attribute :verb, :string
      attribute :path, :string
      attribute :required_parts, :string
      attribute :controller_path, :string
      attribute :action_name, :string

      has_many :subjects, dependent: :delete_all
    end

  end
end
