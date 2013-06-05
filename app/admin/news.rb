#encoding: utf-8
ActiveAdmin.register News do
  index do
    column :title
    column :subtitle
    column :created_at
    default_actions
  end

  show do |news|
    attributes_table_with_images do
      row :title
      row :subtitle
      row :info
      row :date
      row :estado
      row :videos
    end
  end

  form_with_images do |f|
    f.input :title, as: :string
    f.input :subtitle, as: :string
    f.input :info, as: :text
    f.input :date, as: :datepicker
    f.input :estado, :as => :select, :collection => ["mostrar", "oculto"], :selected => "mostrar"
    f.input :videos
  end  
end