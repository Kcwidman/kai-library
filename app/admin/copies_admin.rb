Trestle.resource(:copies) do
  menu do
    item :copies, icon: "fa fa-star"
  end

  search do |query|
    if query
      Copy.where("condition ILIKE ?", "%#{query}%")
    else
      Copy.all
    end
  end
  # Customize the table columns shown on the index view.
  #
  table do
    column :condition
    column :checked_out
    column :book_id
    column :book
    column :library
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |copy|
    text_field :condition
    check_box :checked_out
  
    select :book_id, Book.all
    select :library_id, Library.all
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:copy).permit(:name, ...)
  # end
end
