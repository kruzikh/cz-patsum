
// Profiles:
// zde přijdou případné vlastní aliasy pro CZ Patient summary na vlastní valuesets nebo codesystems

// Aliases base on project HL7/fhir-ips - International Patient Summary (IPS) FHIR Implementation Guide Repository
Alias: $loinc = http://loinc.org
// Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
// Alias: $clinicaldocument = http://hl7.org/fhir/StructureDefinition/clinicaldocument

Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $abatement-dateTime-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/abatement-dateTime-uv-ips
// Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
// Alias: $medication-example-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medication-example-uv-ips
Alias: $medicine-route-of-administration = http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration
Alias: $allergy-intolerance-substance-condition-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-substance-condition-uv-ips
Alias: $allergy-intolerance-substance-condition-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-substance-condition-gps-uv-ips
Alias: $absent-or-unknown-allergies-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-allergies-uv-ips
Alias: $allergy-reaction-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/allergy-reaction-gps-uv-ips
// Alias: $problem-type-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/problem-type-uv-ips
// Alias: $condition-severity-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/condition-severity-uv-ips
// Alias: $core-problem-finding-situation-event-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/core-problem-finding-situation-event-gps-uv-ips
// Alias: $medical-devices-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medical-devices-uv-ips
// Alias: $absent-or-unknown-devices-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-devices-uv-ips
Alias: $results-radiology-observations-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-radiology-observations-uv-ips
Alias: $dicom-standard-SOP-classes = http://hl7.org/fhir/uv/ips/ValueSet/dicom-standard-SOP-classes
Alias: $vaccines-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/vaccines-uv-ips
Alias: $vaccines-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/vaccines-gps-uv-ips
Alias: $whoatc-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips
Alias: $absent-or-unknown-immunizations-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-immunizations-uv-ips
Alias: $target-site-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/target-site-uv-ips
Alias: $targetDiseases-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/targetDiseases-uv-ips
Alias: $targetDiseases-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/targetDiseases-gps-uv-ips
Alias: $medication-snomed-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medication-snomed-uv-ips
Alias: $medicine-doseform = http://hl7.org/fhir/uv/ips/ValueSet/medicine-doseform
Alias: $medicine-active-substances-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medicine-active-substances-uv-ips
Alias: $absent-or-unknown-medications-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-medications-uv-ips
Alias: $edd-method-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/edd-method-uv-ips
Alias: $pregnancies-summary-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/pregnancies-summary-uv-ips
Alias: $pregnancy-status-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/pregnancy-status-uv-ips
Alias: $results-laboratory-observations-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-observations-uv-ips
Alias: $result-coded-value-laboratory-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/result-coded-value-laboratory-gps-uv-ips
Alias: $results-pathology-observations-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-pathology-observations-uv-ips
Alias: $result-coded-value-pathology-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/result-coded-value-pathology-gps-uv-ips
Alias: $results-radiology-txtobs-gps-dicom-loinc-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-radiology-txtobs-gps-dicom-loinc-uv-ips
Alias: $results-radiology-numobs-gps-dicom-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-radiology-numobs-gps-dicom-uv-ips
Alias: $current-smoking-status-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/current-smoking-status-uv-ips
// Alias: $v3-PersonalRelationshipRoleType = http://terminology.hl7.org/ValueSet/v3-PersonalRelationshipRoleType
// Alias: $healthcare-professional-roles-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/healthcare-professional-roles-uv-ips
Alias: $procedures-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/procedures-uv-ips
Alias: $procedures-snomed-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/procedures-snomed-gps-uv-ips
Alias: $absent-or-unknown-procedures-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-procedures-uv-ips
Alias: $results-specimen-type-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-specimen-type-gps-uv-ips
Alias: $results-specimen-collection-method-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-specimen-collection-method-gps-uv-ips
