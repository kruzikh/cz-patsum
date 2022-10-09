Profile: CZ_MediaObservationPS
Parent: Media
Id: cz-MediaObservationPS
Title: "Media observation (Results: laboratory, media)"
Description: "This profile constrains the Media resource (which is a specialized observation)."
* ^status = #active
* ^experimental = false
* ^publisher = "Národní centrum elektronického zdravotnictví"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://ncez.mzcr.cz"

* status = #completed (exactly)
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* status ^definition = "The status of the result value. Only final observation are eligible to the Czech patient summary."
* type MS
* subject 1..
* subject only Reference(CZ_Patient)
* subject.reference 1..