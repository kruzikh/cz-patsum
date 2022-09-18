Profile: ObservationResultsCzIps
Parent: ObservationResultsUvIps
Id: cz-ObservationResults
Title: "Observation Results (IPS)"
Description: "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary.  This is the base profile from which the other results profiles are derived."
// * ^experimental = false
// * ^publisher = "HL7 International"
// * ^purpose = "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary."
// * status = #final (exactly)
// * status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
// * status ^extension.valueString = "default: final"
// * category only CodeableConceptIPS
// * code only CodeableConceptIPS
// * code MS
* subject 1.. MS
* subject only Reference(CZ_Patient or Group or Device or Location)
* subject.reference 1.. MS
* effective[x] 1.. MS
* effective[x] only dateTime or Period
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* performer only Reference(CareTeam or CZ_Patient or RelatedPerson)
// * performer only Reference(CZ_Practitioner or PractitionerRoleCzIps or CZ_Organization or CareTeam or CZ_Patient or RelatedPerson)
* value[x] MS
* hasMember only Reference(ObservationResultsCzIps or QuestionnaireResponse or MolecularSequence)
* component MS