alias ElectoralCollegeRollcall.Repo

# States
alias ElectoralCollegeRollcall.State

states = [
  %{name: "Alabama", abbreviation: "AL", assoc_press: "Ala.", census_region: "3", census_region_name: "South", census_division: "6", census_division_name: "East South Central", circuit_court: "11"},
  %{name: "Alaska", abbreviation: "AK", assoc_press: "Alaska", census_region: "4", census_region_name: "West", census_division: "9", census_division_name: "Pacific", circuit_court: "9"},
  %{name: "Arizona", abbreviation: "AZ", assoc_press: "Ariz.", census_region: "4", census_region_name: "West", census_division: "8", census_division_name: "Mountain", circuit_court: "9"},
  %{name: "Arkansas", abbreviation: "AR", assoc_press: "Ark.", census_region: "3", census_region_name: "South", census_division: "7", census_division_name: "West South Central", circuit_court: "8"},
  %{name: "California", abbreviation: "CA", assoc_press: "Calif.", census_region: "4", census_region_name: "West", census_division: "9", census_division_name: "Pacific", circuit_court: "9"},
  %{name: "Colorado", abbreviation: "CO", assoc_press: "Colo.", census_region: "4", census_region_name: "West", census_division: "8", census_division_name: "Mountain", circuit_court: "10"},
  %{name: "Connecticut", abbreviation: "CT", assoc_press: "Conn.", census_region: "1", census_region_name: "Northeast", census_division: "1", census_division_name: "New England", circuit_court: "2"},
  %{name: "Delaware", abbreviation: "DE", assoc_press: "Del.", census_region: "3", census_region_name: "South", census_division: "5", census_division_name: "South Atlantic", circuit_court: "3"},
  %{name: "Florida", abbreviation: "FL", assoc_press: "Fla.", census_region: "3", census_region_name: "South", census_division: "5", census_division_name: "South Atlantic", circuit_court: "11"},
  %{name: "Georgia", abbreviation: "GA", assoc_press: "Ga.", census_region: "3", census_region_name: "South", census_division: "5", census_division_name: "South Atlantic", circuit_court: "11"},
  %{name: "Hawaii", abbreviation: "HI", assoc_press: "Hawaii", census_region: "4", census_region_name: "West", census_division: "9", census_division_name: "Pacific", circuit_court: "9"},
  %{name: "Idaho", abbreviation: "ID", assoc_press: "Idaho", census_region: "4", census_region_name: "West", census_division: "8", census_division_name: "Mountain", circuit_court: "9"},
  %{name: "Illinois", abbreviation: "IL", assoc_press: "Ill.", census_region: "2", census_region_name: "Midwest", census_division: "3", census_division_name: "East North Central", circuit_court: "7"},
  %{name: "Indiana", abbreviation: "IN", assoc_press: "Ind.", census_region: "2", census_region_name: "Midwest", census_division: "3", census_division_name: "East North Central", circuit_court: "7"},
  %{name: "Iowa", abbreviation: "IA", assoc_press: "Iowa", census_region: "2", census_region_name: "Midwest", census_division: "4", census_division_name: "West North Central", circuit_court: "8"},
  %{name: "Kansas", abbreviation: "KS", assoc_press: "Kan.", census_region: "2", census_region_name: "Midwest", census_division: "4", census_division_name: "West North Central", circuit_court: "10"},
  %{name: "Kentucky", abbreviation: "KY", assoc_press: "Ky.", census_region: "3", census_region_name: "South", census_division: "6", census_division_name: "East South Central", circuit_court: "6"},
  %{name: "Louisiana", abbreviation: "LA", assoc_press: "La.", census_region: "3", census_region_name: "South", census_division: "7", census_division_name: "West South Central", circuit_court: "5"},
  %{name: "Maine", abbreviation: "ME", assoc_press: "Maine", census_region: "1", census_region_name: "Northeast", census_division: "1", census_division_name: "New England", circuit_court: "1"},
  %{name: "Maryland", abbreviation: "MD", assoc_press: "Md.", census_region: "3", census_region_name: "South", census_division: "5", census_division_name: "South Atlantic", circuit_court: "4"},
  %{name: "Massachusetts", abbreviation: "MA", assoc_press: "Mass.", census_region: "1", census_region_name: "Northeast", census_division: "1", census_division_name: "New England", circuit_court: "1"},
  %{name: "Michigan", abbreviation: "MI", assoc_press: "Mich.", census_region: "2", census_region_name: "Midwest", census_division: "3", census_division_name: "East North Central", circuit_court: "6"},
  %{name: "Minnesota", abbreviation: "MN", assoc_press: "Minn.", census_region: "2", census_region_name: "Midwest", census_division: "4", census_division_name: "West North Central", circuit_court: "8"},
  %{name: "Mississippi", abbreviation: "MS", assoc_press: "Miss.", census_region: "3", census_region_name: "South", census_division: "6", census_division_name: "East South Central", circuit_court: "5"},
  %{name: "Missouri", abbreviation: "MO", assoc_press: "Mo.", census_region: "2", census_region_name: "Midwest", census_division: "4", census_division_name: "West North Central", circuit_court: "8"},
  %{name: "Montana", abbreviation: "MT", assoc_press: "Mont.", census_region: "4", census_region_name: "West", census_division: "8", census_division_name: "Mountain", circuit_court: "9"},
  %{name: "Nebraska", abbreviation: "NE", assoc_press: "Neb.", census_region: "2", census_region_name: "Midwest", census_division: "4", census_division_name: "West North Central", circuit_court: "8"},
  %{name: "Nevada", abbreviation: "NV", assoc_press: "Nev.", census_region: "4", census_region_name: "West", census_division: "8", census_division_name: "Mountain", circuit_court: "9"},
  %{name: "New Hampshire", abbreviation: "NH", assoc_press: "N.H.", census_region: "1", census_region_name: "Northeast", census_division: "1", census_division_name: "New England", circuit_court: "1"},
  %{name: "New Jersey", abbreviation: "NJ", assoc_press: "N.J.", census_region: "1", census_region_name: "Northeast", census_division: "2", census_division_name: "Mid-Atlantic", circuit_court: "3"},
  %{name: "New Mexico", abbreviation: "NM", assoc_press: "N.M.", census_region: "4", census_region_name: "West", census_division: "8", census_division_name: "Mountain", circuit_court: "10"},
  %{name: "New York", abbreviation: "NY", assoc_press: "N.Y.", census_region: "1", census_region_name: "Northeast", census_division: "2", census_division_name: "Mid-Atlantic", circuit_court: "2"},
  %{name: "North Carolina", abbreviation: "NC", assoc_press: "N.C.", census_region: "3", census_region_name: "South", census_division: "5", census_division_name: "South Atlantic", circuit_court: "4"},
  %{name: "North Dakota", abbreviation: "ND", assoc_press: "N.D.", census_region: "2", census_region_name: "Midwest", census_division: "4", census_division_name: "West North Central", circuit_court: "8"},
  %{name: "Ohio", abbreviation: "OH", assoc_press: "Ohio", census_region: "2", census_region_name: "Midwest", census_division: "3", census_division_name: "East North Central", circuit_court: "6"},
  %{name: "Oklahoma", abbreviation: "OK", assoc_press: "Okla.", census_region: "3", census_region_name: "South", census_division: "7", census_division_name: "West South Central", circuit_court: "10"},
  %{name: "Oregon", abbreviation: "OR", assoc_press: "Ore.", census_region: "4", census_region_name: "West", census_division: "9", census_division_name: "Pacific", circuit_court: "9"},
  %{name: "Pennsylvania", abbreviation: "PA", assoc_press: "Pa.", census_region: "1", census_region_name: "Northeast", census_division: "2", census_division_name: "Mid-Atlantic", circuit_court: "3"},
  %{name: "Rhode Island", abbreviation: "RI", assoc_press: "R.I.", census_region: "1", census_region_name: "Northeast", census_division: "1", census_division_name: "New England", circuit_court: "1"},
  %{name: "South Carolina", abbreviation: "SC", assoc_press: "S.C.", census_region: "3", census_region_name: "South", census_division: "5", census_division_name: "South Atlantic", circuit_court: "4"},
  %{name: "South Dakota", abbreviation: "SD", assoc_press: "S.D.", census_region: "2", census_region_name: "Midwest", census_division: "4", census_division_name: "West North Central", circuit_court: "8"},
  %{name: "Tennessee", abbreviation: "TN", assoc_press: "Tenn.", census_region: "3", census_region_name: "South", census_division: "6", census_division_name: "East South Central", circuit_court: "6"},
  %{name: "Texas", abbreviation: "TX", assoc_press: "Texas", census_region: "3", census_region_name: "South", census_division: "7", census_division_name: "West South Central", circuit_court: "5"},
  %{name: "Utah", abbreviation: "UT", assoc_press: "Utah", census_region: "4", census_region_name: "West", census_division: "8", census_division_name: "Mountain", circuit_court: "10"},
  %{name: "Vermont", abbreviation: "VT", assoc_press: "Vt.", census_region: "1", census_region_name: "Northeast", census_division: "1", census_division_name: "New England", circuit_court: "2"},
  %{name: "Virginia", abbreviation: "VA", assoc_press: "Va.", census_region: "3", census_region_name: "South", census_division: "5", census_division_name: "South Atlantic", circuit_court: "4"},
  %{name: "Washington", abbreviation: "WA", assoc_press: "Wash.", census_region: "4", census_region_name: "West", census_division: "9", census_division_name: "Pacific", circuit_court: "9"},
  %{name: "West Virginia", abbreviation: "WV", assoc_press: "W.Va.", census_region: "3", census_region_name: "South", census_division: "5", census_division_name: "South Atlantic", circuit_court: "4"},
  %{name: "Wisconsin", abbreviation: "WI", assoc_press: "Wis.", census_region: "2", census_region_name: "Midwest", census_division: "3", census_division_name: "East North Central", circuit_court: "7"},
  %{name: "Wyoming", abbreviation: "WY", assoc_press: "Wyo.", census_region: "4", census_region_name: "West", census_division: "8", census_division_name: "Mountain", circuit_court: "10"},
  %{name: "Washington DC", abbreviation: "DC", assoc_press: "", census_region: "3", census_region_name: "South", census_division: "5", census_division_name: "South Atlantic", circuit_court: "D.C."}
]

cond do
  Repo.all(State) != [] ->
    IO.puts "States detected, aborting state seed."
  true ->
    Enum.each(states, fn state ->
      State.changeset(%State{}, state)
      |> Repo.insert!
    end)
end
