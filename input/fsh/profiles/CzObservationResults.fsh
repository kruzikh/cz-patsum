Profile: CZ_ObservationResultsPS
Parent: Observation
Id: cz-ObservationResultsPS
Title: "Observation Results (Czech patient summary)"
Description: "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary.  This is the base profile from which the other results profiles are derived."

* ^status = #active
* ^experimental = false
* ^publisher = "Národní centrum elektronického zdravotnictví"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://ncez.mzcr.cz"
* ^purpose = "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary."
* status = #final (exactly)
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* category only CodeableConceptIPS
* code only CodeableConceptIPS
* code MS
* subject 1.. MS
* subject only Reference(CZ_Patient or Group or Device or Location)
* subject.reference 1.. MS
* effective[x] 1.. MS
* effective[x] only dateTime or Period
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* performer only Reference(CZ_Practitioner or CZ_PractitionerRole or CZ_Organization or CareTeam or CZ_Patient or RelatedPerson)
* value[x] MS
* hasMember only Reference(CZ_ObservationResultsPS or QuestionnaireResponse or MolecularSequence)
* component MS