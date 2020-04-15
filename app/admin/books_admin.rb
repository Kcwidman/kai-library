Trestle.resource(:books) do
  menu do
    item :books, icon: "fa fa-star"
  end

  search do |query|
    if query
      Book.where("title ILIKE ?", "%#{query}%")
    else
      Book.all
    end
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :subjects_list, sort: false
    column :publisher, sort: false
    column :price
    column :cover, sort: false do |book|
      if book.cover.attached?
        link_to image_tag(main_app.rails_blob_url(book.cover), size: "20x30"), main_app.rails_blob_url(book.cover)
      end
    end
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |book|
    text_field :title
    text_field :price
    collection_select :subject_ids, Subject.all, :id, :name, {}, multiple: true
    select :publisher_id, Publisher.all 
    text_area :description
    file_field :cover
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:book).permit(:name, ...)
  # end
end
