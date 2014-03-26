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
      row :documents do |calendar|
        calendar.documents.collect do |doc|
          link_to(doc.file_file_name, doc.file.url)
        end.join(', ').html_safe
      end
    end
  end

  form_with_images do |f|
    f.input :title, as: :string
    f.input :subtitle, as: :string
    f.input :info, as: :text
    f.input :detail, as: :text
    f.input :fecha, as: :datepicker
    f.input :estado, :as => :select, :collection => ["mostrar", "oculto"], :selected => "mostrar"
    f.has_many :documents, title: 'document' do |fi|
      fi.inputs "documents" do
        if fi.object.new_record?
          fi.input :file, as: :file
        else
          fi.input :_destroy, as: :boolean, label: 'Destroy?', hint: fi.object.file.url 
        end
      end
    end
  end  
end