defmodule ElectoralCollegeRollcall.ExAdmin.User do
  use ExAdmin.Register

  register_resource ElectoralCollegeRollcall.User do
    index do
      selectable_column

      column :name
      column :email
      column :admin
      actions
    end

    show user do
      attributes_table do
        row :name
        row :email
        row :admin
      end
    end

    form user do
      inputs do
        input user, :name
        input user, :email
        input user, :admin, collection: [true, false]
      end
    end
  end
end
