Profile: CZ_ObservationTobaccoUse
Parent: Observation
Id: cz-ObservationTobaccoUse
Title: "Observation (SH: tobacco use)"
Description: "This profile constrains the Observation resource to represent Tobacco use assessment in a patient summary."

* ^status = #active
* ^date = "2022-10-09T21:56:28-05:00"
* ^publisher = "Národní centrum elektronického zdravotnictví"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://ncez.mzcr.cz"

* code 1..1 MS
* code only CodeableConceptIPS
* code = $loinc#72166-2
* subject 1.. MS
* subject only Reference(CZ_Patient)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept from $current-smoking-status-uv-ips (required)
* component ..0
* component ^mustSupport = false