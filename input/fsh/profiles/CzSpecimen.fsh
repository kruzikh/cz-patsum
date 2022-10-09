Profile: CZ_SpecimenPS
Parent: Specimen
Id: cz-SpecimenPS
Title: "Specimen (CZ Patient summary)"
Description: "This profile constrains the Specimen resource to represent the characteristics of a biological specimens in the context of laboratory results integrated to a patient summary."
* ^status = #active
* ^url = "https://www.ncez.mzcr.cz/standards/fhir/lab/StructureDefinition/cz-specimen-laboratory"
* ^version = "0.0.1"
* ^status = #draft
* ^purpose = "Minimal specimen attributes, usable for the laboratory results section and entry of a patient summary."
* ^date = "2022-09-27T14:58:00+01:00"
* ^publisher = "Národní centrum elektronického zdravotnictví"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://ncez.mzcr.cz"
* type 1.. MS
* type ^definition = "The kind of material that forms the specimen. RECOMMENDED to include."
* subject only Reference(CZ_Patient)
* subject.reference 1..
* collection MS
* collection.collected[x] ^mustSupport = false
* collection.duration ^mustSupport = false
* collection.quantity ^mustSupport = false
* collection.method ^mustSupport = false
* collection.bodySite ^mustSupport = false
* collection.fastingStatus[x] ^mustSupport = false
* note MS