Profile: CZ_ObservationResultsPathology
Parent: ObservationResultsPathologyUvIps
Id: cz-ObservationResultsPathology
Title: "Observation Results: pathology (CZ Patient summary)"
Description: "This profile constrains the Observation resource to represent results produced by pathology studies in a patient summary."

* subject only Reference(CZ_Patient)
* performer only Reference(CZ_Practitioner or CZ_PractitionerRole or CZ_Organization or CareTeam or CZ_Patient or RelatedPerson)
* specimen only Reference(CZ_Specimen)
* hasMember only Reference(CZ_ObservationResultsLaboratory or CZ_ObservationResults)
