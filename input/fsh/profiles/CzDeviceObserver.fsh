Profile: CZ_DeviceObserverPS
Parent: Device
Id: cz-DeviceObserverPS
Title: "Device (performer, observer)"
Description: """This profile represents the constraints applied to the Device resource by the CZ PS project, whitch is based on the FHIR standard R4.;

This profile describes a device that plays the role of observer or performer."""
* ^status = #active
* ^purpose = "This profile constrains the representation of a device acting as observer in the patient summary."
* identifier MS
* udiCarrier MS 
* manufacturer MS
* serialNumber MS
* modelNumber MS