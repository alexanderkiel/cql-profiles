library "profiles"
using FHIR version '4.0.0'
include FHIRHelpers version '4.0.0'

context Patient

define IncludePatient:
  true

define PatientProfile:
  Patient.meta.profile.first()

define AllEncounters:
  [Encounter]

define AllConditions:
  [Condition]

define AllObservations:
  [Observation]

define AllMedicationStatements:
  [MedicationStatement]

define AllMedicationAdministrations:
  [MedicationAdministration]

define function Profile(resource FHIR.Resource):
  resource.meta.profile.first()
