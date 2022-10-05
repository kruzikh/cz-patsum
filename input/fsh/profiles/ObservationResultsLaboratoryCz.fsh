Profile: CZ_ObservationResultsLaboratory
Parent: ObservationResultsLaboratoryUvIps
Id: cz-ObservationResultsLaboratory
Title: "Observation Results: laboratory (CZ Patient summary)"
Description: """This profile constrains the Observation resource to represent results produced by laboratory tests or panels/studies in a patient summary.

This observation may represent the result of a simple laboratory test such as hematocrit or it may group the set of results produced by a multi-test study or panel such as a complete blood count, a dynamic function test, a urine specimen study. In the latter case, the observation carries the overall conclusion of the study and or a global interpretation by the producer of the study, in the comment element; and references the atomic results of the study as "has-member" child observations.
"""

* performer only Reference(CZ_Practitioner or CZ_PractitionerRole or CZ_Organization or CareTeam or CZ_Patient or RelatedPerson)
* specimen only Reference(CZ_Specimen)
* hasMember only Reference(CZ_ObservationResultsLaboratory or CZ_ObservationResults)
