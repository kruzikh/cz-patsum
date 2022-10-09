Profile: CZ_SpecimenPS
Parent: Specimen
Id: cz-SpecimenPS
Title: "Specimen (CZ Patient summary)"
Description: "This profile constrains the Specimen resource to represent the characteristics of a biological specimens in the context of laboratory results integrated to a patient summary."
* ^status = #active
* ^publisher = "HL7 International"
* ^purpose = "Minimal specimen attributes, usable for the laboratory results section and entry of a patient summary."
* type 1..
* type only CodeableConceptIPS
* type from $results-specimen-type-gps-uv-ips (extensible)
* type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension.valueString = "SpecimenType"
* subject only Reference(CZ_Patient)
* subject.reference 1..
* collection.method only CodeableConceptIPS
* collection.method from $results-specimen-collection-method-gps-uv-ips (extensible)
* collection.bodySite only CodeableConceptIPS
* collection.bodySite from SNOMEDCTBodyStructures (extensible)
* collection.fastingStatus[x] only CodeableConceptIPS or Duration