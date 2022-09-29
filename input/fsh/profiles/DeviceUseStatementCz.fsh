//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_DeviceUseStatement
Parent:     DeviceUseStatementUvIps
Id:         cz-DeviceUseStatement
Title:      "Device Use Statement (CZ)"
Description: "This profile represents the constraints applied to the DeviceUseStatement resource by the Czech Patient Summary (CZPS) FHIR Implementation Guide, based on FHIR R5. A statement about a device used by or implanted on the patient is described in the patient summary as an instance of a DeviceUseStatement resource constrained by this profile."
//-------------------------------------------------------------------------------------------
* ^status = #active
* ^experimental = false
* ^publisher = "NCEZ"
* ^purpose = "This profile constrains the representation of a statement about a medical device used by or impanted on the patient, part of the \"Medical Devices\" section of the Composition resource representing the international patient summary, as specified by the IPS project of HL7 International."
* subject only Reference(CZ_Patient)
* subject MS
* subject ^definition = "The patient using the device."
* subject.reference 1.. MS
//* timing[x] 1..1 MS
//* timing[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
//* timing[x].extension[data-absent-reason] ^definition = "Provides a reason why the timing is missing."
* device only Reference(CZ_Device)
//* device MS
//* bodySite only CodeableConceptIPS
//* bodySite from SNOMEDCTBodyStructures (example)
//* bodySite ^requirements = "Knowing where the device is targeted is important for tracking if multiple sites are possible. If more information than just a code is required, use the extension bodySite"