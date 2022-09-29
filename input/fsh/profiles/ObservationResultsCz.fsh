Profile: CZ_ObservationResults
Parent: ObservationResultsUvIps
Id: cz-ObservationResults
Title: "Observation Results (CZ PS)"
Description: "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary.  This is the base profile from which the other results profiles are derived."
* ^status = #active
* ^publisher = "NCEZ"
* ^purpose = "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary."

* subject only Reference(CZ_Patient or Group or Device or Location)
* performer only Reference(CareTeam or CZ_Patient or RelatedPerson)

// * performer only Reference(CZ_Practitioner or PractitionerRoleCzIps or CZ_Organization or CareTeam or CZ_Patient or RelatedPerson)
