Profile: CZ_Device
Parent: DeviceUvIps
Id: cz-device
Title: "Device (CZ)"
Description: "This profile represents the constraints applied to the Device resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A device used by or implanted on the patient is described in the patient summary as an instance of a Device resource constrained by this profile."
* ^status = #active
* ^experimental = false
* ^publisher = "NCEZ"
* ^purpose = "This profile constrains the representation of a medical device used by or impanted on the patient, in the context of the czech patient summary."

* patient only Reference(CZ_Patient)