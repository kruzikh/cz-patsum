Profile: CZ_ObservationPregnancyOutcome
Parent: ObservationPregnancyOutcomeUvIps
Id: cz-Observation-pregnancy-outcome
Title: "Observation (Pregnancy: outcome)"
Description: "This profile constrains the Observation resource to represent the history of pregnancy outcomes (summary)."
/* * code 1..1 MS
* code only CodeableConceptIPS
* code from $pregnancies-summary-uv-ips (required)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ObservationCode"
* subject 1.. MS
 */
* subject only Reference(CZ_Patient)
/* * subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* valueQuantity only Quantity
* valueQuantity MS
* bodySite ..0
* bodySite ^mustSupport = false
* specimen ..0
* specimen ^mustSupport = false
* device ..0
* device ^mustSupport = false
* referenceRange ..0
* referenceRange ^mustSupport = false
* component ..0
* component ^mustSupport = false */