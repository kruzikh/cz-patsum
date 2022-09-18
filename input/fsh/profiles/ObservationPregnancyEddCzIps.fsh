Profile: ObservationPregnancyEddCzIps
Parent: ObservationPregnancyEddUvIps
Id: cz-Observation-pregnancy-edd
Title: "Observation (Pregnancy: EDD)"
Description: "This profile constrains the Observation resource to represent the pregnancy expected delivery date."
* code 1..1 MS
* code only CodeableConceptIPS
* code from $edd-method-uv-ips (required)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ObservationCode"
* subject 1.. MS
* subject only Reference(CZ_Patient)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* valueDateTime only dateTime
* valueDateTime MS
* bodySite ..0
* bodySite ^mustSupport = false
* method ..0
* method ^mustSupport = false
* specimen ..0
* specimen ^mustSupport = false
* device ..0
* device ^mustSupport = false
* referenceRange ..0
* referenceRange ^mustSupport = false
* component ..0
* component ^mustSupport = false