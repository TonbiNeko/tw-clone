ActiveRecord::Schema.define(version: 2020_12_08_023946) do

  enable_extension "plpgsql"

  create_table "jweets", force: :cascade do |t|
    t.text "content"
  end

end
