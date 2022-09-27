Profile: ObservationPregnancyStatusCzIps
Parent: ObservationPregnancyStatusUvIps
Id: cz-Observation-pregnancy-status
Title: "Observation (Pregnancy: status)"
Description: "This profile constrains the Observation resource to represent the pregnancy status."
/* * code 1..1 MS
* code only CodeableConceptIPS
* code = $loinc#82810-3
* subject 1.. MS
 */
* subject only Reference(CZ_Patient)
/* * subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept MS
* valueCodeableConcept from $pregnancy-status-uv-ips (required)
* bodySite ..0
* bodySite ^mustSupport = false
* specimen ..0
* specimen ^mustSupport = false
* device ..0
* device ^mustSupport = false
* referenceRange ..0
* referenceRange ^mustSupport = false
* hasMember only Reference(ObservationPregnancyEddUvIps)
* hasMember MS
* hasMember ^short = "Expected Delivery Date"
* hasMember ^definition = "A reference to the Expected Delivery Date Observation."
* hasMember.reference 1.. MS
* component ..0
* component ^mustSupport = false */