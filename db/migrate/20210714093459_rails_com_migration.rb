class RailsComMigration < ActiveRecord::Migration[6.1]

  def change

    create_table :doc_maps do |t|
      t.string :name
      t.hstore :mappings
      t.timestamps
    end

    create_table :doc_subjects do |t|
      t.string :name
      t.string :request_method
      t.string :request_path
      t.json :path_params
      t.json :request_params
      t.json :request_headers
      t.string :request_type
      t.json :request_body
      t.string :response_status
      t.json :response_headers
      t.string :response_type
      t.string :response_body
      t.string :note
      t.timestamps
    end

    create_table :com_errs do |t|
      t.string :path
      t.string :controller_name
      t.string :action_name
      t.string :exception
      t.string :exception_object
      t.string :exception_backtrace, default: [], array: true
      t.json :params, default: {}
      t.json :headers, default: {}
      t.json :cookie, default: {}
      t.json :session, default: {}
      t.string :ip
      t.timestamps
    end

    create_table :com_infos do |t|
      t.string :code
      t.string :value
      t.string :version
      t.string :platform
      t.timestamps
    end

    create_table :com_acme_orders do |t|
      t.references :acme_account
      t.string :orderid
      t.string :url
      t.datetime :issued_at
      t.string :status
      t.timestamps
    end

    create_table :com_acme_identifiers do |t|
      t.references :acme_order
      t.string :identifier
      t.string :file_name
      t.string :file_content
      t.string :token
      t.string :record_name
      t.string :record_content
      t.string :domain
      t.boolean :wildcard
      t.string :url
      t.boolean :dns_valid
      t.boolean :file_valid
      t.timestamps
    end

    create_table :com_csps do |t|
      t.string :document_uri
      t.string :referrer
      t.string :violated_directive
      t.string :effective_directive
      t.string :original_policy
      t.string :disposition
      t.string :blocked_uri
      t.string :line_number
      t.string :column_number
      t.string :source_file
      t.string :status_code
      t.string :script_sample
      t.timestamps
    end

    create_table :com_blob_defaults do |t|
      t.string :record_class, comment: "AR 类名，如 User"
      t.string :name, comment: "名称, attach 名称，如：avatar"
      t.boolean :private, comment: "是否私有"
      t.timestamps
    end

    create_table :com_cache_lists do |t|
      t.string :path
      t.string :key
      t.timestamps
    end

    create_table :com_acme_accounts do |t|
      t.string :email
      t.string :kid
      t.timestamps
    end
  end

end
