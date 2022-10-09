Profile: CZ_DevicePS
Parent: Device
Id: cz-DevicePS
Title: "Device (CZ Patient summary)"
Description: "This profile represents the constraints applied to the Device resource by the CZ Patient Summary (CZ PS) FHIR Implementation Guide, based on FHIR R4. A device used by or implanted on the patient is described in the patient summary as an instance of a Device resource constrained by this profile."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International"
* ^purpose = "This profile constrains the representation of a medical device used by or impanted on the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* . ^comment = "This profile applies the rules defined by HL7 International for representing the UDI in the FHIR standard, by the document \"Medical Devices and Unique Device Identification (UDI) Pattern, Release 1\""
* type ..1 MS
/*
* type only CodeableConceptIPS
* type from $medical-devices-uv-ips (preferred)
* type ^slicing.discriminator.type = #pattern
* type ^slicing.discriminator.path = "$this"
* type ^slicing.description = "Discriminated by the bound value set"
* type ^slicing.rules = #open
* type ^short = "Type of device.\r\nPreferably valued by using SNOMED CT.\r\nThe absence of information, or of devices relevant for purpose of this IPS, shall be explicitly stated by using the codes included in the absent-or-unknown-devices-uv-ips value set."
* type ^binding.description = "The type of device"
* type contains absentOrUnknownDevice 0..1 MS
* type[absentOrUnknownDevice] only CodeableConceptIPS
* type[absentOrUnknownDevice] from $absent-or-unknown-devices-uv-ips (required)
* type[absentOrUnknownDevice] ^definition = "Slice to be valued in case of no information or known absence of relevant devices for the purpose of this IPS"
* type[absentOrUnknownDevice] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type[absentOrUnknownDevice] ^binding.extension.valueString = "absentOrUnknownDevice"
* type[absentOrUnknownDevice] ^binding.description = "Absent problem or unknown device"
*/
* patient 1.. MS
* patient only Reference(CZ_Patient)
* patient.reference 1.. MS