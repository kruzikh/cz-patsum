Invariant: hasComponentifValueStringEmpty
Description: "component is required if valueString is empty"
Severity: #error
Expression: "(component.exists() and valueString.empty()) or valueString.exists()"