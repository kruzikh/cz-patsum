Profile: ImagingStudyCzIps
Parent: ImagingStudyUvIps
Id: cz-ImagingStudy
Title: "Imaging Study (IPS)"
Description: """This profile represents the constraints applied to the ImagingStudy resource by the IPS project, which specifies the information on a DICOM imaging study this imaging result is part of.
"""
// * ^status = #active
// * identifier MS
// * identifier ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
// * identifier ^extension.valueString = "dicom="
* subject only Reference(CZ_Patient)
* subject MS
* subject ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* subject ^extension.valueString = "dicom=http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.2.2.html"
* subject.reference 1.. MS
* started MS
* started ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* started ^extension.valueString = "dicom=http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.2.html#sect_C.7.2.1"
* procedureCode only CodeableConceptIPS
* procedureCode MS
* procedureCode from $results-radiology-observations-uv-ips (extensible)
* procedureCode ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* procedureCode ^binding.extension.valueString = "ImagingProcedureCode"
* reasonCode only CodeableConceptIPS
* reasonCode MS
* series MS
* series.uid MS
* series.modality MS
* series.instance MS
* series.instance.uid MS
* series.instance.sopClass MS
* series.instance.sopClass from $dicom-standard-SOP-classes (extensible)
* series.instance.sopClass ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* series.instance.sopClass ^binding.extension.valueString = "DicomStandardSOPClasses"