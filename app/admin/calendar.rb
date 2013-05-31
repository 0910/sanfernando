#encoding: utf-8
ActiveAdmin.register Calendar do
  index do
    column :title
    column :subtitle
    column :fecha
    default_actions
  end

  show do |calendar|
    attributes_table_with_images do
      row :title
      row :subtitle
      row :info
      row :fecha
      row :estado
    end
  end

  form_with_images do |f|
    f.input :title, as: :string
    f.input :subtitle, as: :string
    f.input :info
    f.input :fecha, as: :datepicker
    f.input :estado, :as => :select, :collection => ["mostrar", "oculto"], :selected => "mostrar"
  end  
end