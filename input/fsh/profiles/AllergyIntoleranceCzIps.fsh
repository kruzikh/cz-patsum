Profile: AllergyIntoleranceCzIps
Parent: AllergyIntoleranceUvIps
Id: cz-AllergyIntolerance
Title: "Allergy Intolerance (IPS)"
Description: "This profile represents the constraints applied to the AllergyIntolerance resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an allergy or intolerance is represented in the patient summary as an instance of an AllergyIntolerance resource constrained by this profile."

* patient only Reference(CZ_Patient)
* patient MS
* patient.reference 1.. MS
* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type.extension.valueBoolean = true
* reaction MS
* reaction.manifestation only CodeableConceptIPS
* reaction.manifestation MS
* reaction.manifestation ^slicing.discriminator.type = #pattern
* reaction.manifestation ^slicing.discriminator.path = "$this"
* reaction.manifestation ^slicing.description = "Discriminated by the bound value set"
* reaction.manifestation ^slicing.rules = #open
* reaction.manifestation contains reactionManifestationGPSCode 0..1 MS
* reaction.manifestation[reactionManifestationGPSCode] only CodeableConceptIPS
* reaction.manifestation[reactionManifestationGPSCode] from $allergy-reaction-gps-uv-ips (required)
* reaction.manifestation[reactionManifestationGPSCode] ^short = "Code for the allergy or intolerance reaction manifestation from the SNOMED CT GPS code set"
* reaction.manifestation[reactionManifestationGPSCode] ^definition = "Code for an allergy or intolerance reaction manifestation statement that is selected from the SNOMED CT GPS code set."
* reaction.manifestation[reactionManifestationGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* reaction.manifestation[reactionManifestationGPSCode] ^binding.extension.valueString = "ReactionManifestationGPS"
* reaction.severity MS