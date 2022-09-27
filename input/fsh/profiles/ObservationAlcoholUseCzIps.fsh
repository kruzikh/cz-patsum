Profile: ObservationAlcoholUseCzIps
Parent: ObservationAlcoholUseUvIps
Id: cz-Observation-alcoholuse
Title: "Observation (SH: alcohol use)"
Description: "This profile constrains the Observation resource to represent alcohol use assessment in a patient summary."
/*
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* code 1..1 MS
* code only CodeableConceptIPS
* code = $loinc#74013-4
* subject 1.. MS
*/
* subject only Reference(CZ_Patient)

/* * subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* valueQuantity only QuantityIPS
* component ..0
* component ^mustSupport = false */