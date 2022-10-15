Invariant: hasMemberOrComponent
Description: "component and hasMember are mutually exclusive"
Severity: #error
Expression: "hasMember.empty() or component.empty()"