["type", "profile", "count"],
(.group[0].stratifier[0].stratum[]?
  | ["Patient", .value.text, .population[0].count]),
(.group[1].stratifier[0].stratum[]?
  | ["Encounter", .value.text, .population[0].count]),
(.group[2].stratifier[0].stratum[]?
  | ["Condition", .value.text, .population[0].count]),
(.group[3].stratifier[0].stratum[]?
  | ["Observation", .value.text, .population[0].count]),
(.group[4].stratifier[0].stratum[]?
  | ["MedicationStatement", .value.text, .population[0].count]),
(.group[5].stratifier[0].stratum[]?
  | ["MedicationAdministration", .value.text, .population[0].count])
| @csv
