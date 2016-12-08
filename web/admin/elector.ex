defmodule ElectoralCollegeRollcall.ExAdmin.Elector do
  use ExAdmin.Register

  register_resource ElectoralCollegeRollcall.Elector do
    index do
      selectable_column

      column :name
      column :state
      column :party
      actions
    end

    form elector do
      inputs do
        input elector, :name
        input elector, :state, collection: ElectoralCollegeRollcall.Repo.all(ElectoralCollegeRollcall.State)
        input elector, :party, collection: ~w(Democrat Green Independent Libertarian Republican)
        input elector, :email
        input elector, :address
        input elector, :phone
        input elector, :nominal_status, label: "Nominal Vote Status", collection: ["Unknown", "Clinton", "Trump", "No Vote"]
        input elector, :hamilton_status, label: "Hamilton Vote Status", collection: ["Unknown", "Clinton", "Trump", "No Vote"]
        input elector, :politico_profile
        input elector, :politico_elector_number
      end
    end

    show elector do
      attributes_table do
        row :name
        row :state
        row :party
        row :email
        row :address
        row :phone
        row :nominal_status, label: "Nominal Vote Status"
        row :hamilton_status, label: "Hamilton Vote Status"
        row :politico_profile
        row :politico_elector_number
      end
    end
  end
end
