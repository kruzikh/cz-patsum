Profile: CZ_ObservationResultsRadiologyPS
Parent: CZ_ObservationResultsPS
Id: cz-ObservationResultsRadiologyPS
Title: "Observation Results: radiology (Czech Patient Summary)"
Description: """This profile represents the constraints applied to the Observation resource by the IPS project, which specifies a radiology observation for the international patient summary based on the FHIR standard R4. 

This observation may represent the conclusions of a diagnostic procedure such a Chest RX, or it may group the set of results produced by that single or multi-modality procedure. 

In the latter case, the main observation (this one) carries the overall conclusion of the study and/or a global interpretation by the observer of the study as value of this observation; and may references the atomic results of the study as "child observations".

It allows also providing details about the related study using the partOf element referring to an ImagingStudy resource.
"""
* ^experimental = false
* ^publisher = "Národní centrum elektronického zdravotnictví"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://ncez.mzcr.cz"
* ^purpose = "This profile constrains the Observation resource to represent a laboratory in vitro diagnostic test or panel/study. In case of a panel/study, the results of the panel appear as sub-observations. In this case this top-level Observation acts as a grouper of all the observations belonging to the panel or study.  The top-level observation may carry a conclusion in the value element and or a global interpretation by the producer of the study, in the comment element."
// Invariants
* obeys hasMemberOrComponent and hasComponentifValueStringEmpty
* partOf only Reference(CZ_ImagingStudyPS)
* status = #final (exactly)
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* status ^definition = "The status of the result value. Only final results feed patient summaries."
* category only CodeableConceptIPS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies the general type of observation being made. In this profile, fixed to \"imaging\"."
* category contains radiology 1..1 MS
* category[radiology] only CodeableConceptIPS
* category[radiology] = $observation-category#imaging
* code only CodeableConceptIPS
* code MS
* code from $results-radiology-observations-uv-ips (extensible)
* code ^label = "Diagnostic Procedure Code"
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\r\nIn this profile the code of the containing observation (the organizer result in the CDA implementation) may correspond to the procedure code (e.g. Chest X-Ray)."
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ObservationCode"
* subject only Reference(CZ_Patient)
* subject MS
* subject ^definition = "The patient, or group of patients, location, or device whose characteristics (direct or indirect) are described by the observation and into whose record the observation is placed.  Comments: Indirect characteristics may be those of a specimen, fetus, donor, other observer (for example a relative or EMT), or any observation made about the subject.\r\n\r\nIn this profile is constrained to the patient"
* effective[x] MS
* effective[x] obeys ips-1
* performer 1.. MS
* performer only Reference(CZ_Practitioner or CZ_PractitionerRole or CZ_Organization or CareTeam or CZ_Patient or RelatedPerson)
* valueString only string
* valueString MS
* valueString ^label = "Overall Conclusion"
* bodySite only CodeableConceptIPS
* bodySite from $target-site-uv-ips (example)
* bodySite ^label = "body site"
* bodySite ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* bodySite ^binding.extension.valueString = "BodySite"
* device only Reference(CZ_DeviceObserverPS)
* hasMember only Reference(CZ_ObservationResultsRadiologyPS or CZ_ObservationResultsPS)
* component MS
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "value"
* component ^slicing.description = "Slicing based on value[x] type."
* component ^slicing.rules = #closed
* component ^requirements = "Required if not(exists(Observation.valueString))"
* component ^min = 0
/*
* component contains
    observationText 0..* and
    observationCode 0..* and
    numericQuantityMeasurement 0..* and
    numericRangeMeasurement 0..* and
    numericRatioMeasurement 0..* and
    numericSampledDataMeasurement 0..*
* component[observationText] ^short = "Observation Text"
* component[observationText].code only CodeableConceptIPS
* component[observationText].code from $results-radiology-txtobs-gps-dicom-loinc-uv-ips (extensible)
* component[observationText].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[observationText].code ^binding.extension.valueString = "ObservationCode"
* component[observationText].value[x] 1..
* component[observationText].value[x] only string
* component[observationCode] ^short = "Observation Code"
* component[observationCode].code only CodeableConceptIPS
* component[observationCode].code from $results-radiology-observations-uv-ips (extensible)
* component[observationCode].value[x] 1..
* component[observationCode].value[x] only CodeableConceptIPS
* component[numericQuantityMeasurement] ^short = "Observation Measurement, including linear, area and volume quantity measurements"
* component[numericQuantityMeasurement].code only CodeableConceptIPS
* component[numericQuantityMeasurement].code from $results-radiology-numobs-gps-dicom-uv-ips (extensible)
* component[numericQuantityMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[numericQuantityMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
* component[numericQuantityMeasurement].code ^binding.description = "Codes identifying numeric measurements"
* component[numericQuantityMeasurement].value[x] 1..
* component[numericQuantityMeasurement].value[x] only QuantityIPS
* component[numericRangeMeasurement] ^short = "Observation Measurement, including linear, area and volume range measurements"
* component[numericRangeMeasurement].code only CodeableConceptIPS
* component[numericRangeMeasurement].code from $results-radiology-numobs-gps-dicom-uv-ips (extensible)
* component[numericRangeMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[numericRangeMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
* component[numericRangeMeasurement].code ^binding.description = "Codes identifying numeric measurements"
* component[numericRangeMeasurement].value[x] 1..
* component[numericRangeMeasurement].value[x] only RangeIPS
* component[numericRatioMeasurement] ^short = "Observation Measurement, including linear, area and volume ratio measurements"
* component[numericRatioMeasurement].code only CodeableConceptIPS
* component[numericRatioMeasurement].code from $results-radiology-numobs-gps-dicom-uv-ips (extensible)
* component[numericRatioMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[numericRatioMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
* component[numericRatioMeasurement].code ^binding.description = "Codes identifying numeric measurements"
* component[numericRatioMeasurement].value[x] 1..
* component[numericRatioMeasurement].value[x] only RatioIPS
* component[numericSampledDataMeasurement] ^short = "Observation Measurement, including linear, area and volume sampled data measurements"
* component[numericSampledDataMeasurement].code only CodeableConceptIPS
* component[numericSampledDataMeasurement].code from $results-radiology-numobs-gps-dicom-uv-ips (extensible)
* component[numericSampledDataMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[numericSampledDataMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
* component[numericSampledDataMeasurement].code ^binding.description = "Codes identifying numeric measurements"
* component[numericSampledDataMeasurement].value[x] 1..
* component[numericSampledDataMeasurement].value[x] only SampledData
*/
