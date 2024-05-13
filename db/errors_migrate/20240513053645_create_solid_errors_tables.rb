# frozen_string_literal: true

class CreateSolidErrorsTables < ActiveRecord::Migration[7.2]
  def change
    create_table :solid_errors do |t|
      t.text :exception_class, null: false
      t.text :message, null: false
      t.text :severity, null: false
      t.text :source
      t.datetime :resolved_at, index: true
      t.string :fingerprint, null: false, limit: 64, index: { unique: true }

      t.timestamps
    end

    create_table :solid_errors_occurrences do |t|
      t.belongs_to :error, null: false, foreign_key: { to_table: :solid_errors }
      t.text :backtrace
      t.json :context

      t.timestamps
    end
  end
end
