defmodule ElectoralCollegeRollcall.ExAdmin.State do
  use ExAdmin.Register

  register_resource ElectoralCollegeRollcall.State do
    index do
      selectable_column

      column :name
      column :abbreviation
      column :assoc_press
      actions
    end

    form state do
      inputs do
        input state, :name
        input state, :abbreviation
        input state, :assoc_press
        input state, :census_region
        input state, :census_region_name, collection: ["South", "Midwest", "Northeast", "West"]
        input state, :census_division
        input state, :census_division_name, collection: ["East North Central", "East South Central", "Mid-Atlantic", "Mountain", "New England", "Pacific", "South Atlantic", "West North Central", "West South Central"]
        input state, :circuit_court
      end
    end
  end
end
