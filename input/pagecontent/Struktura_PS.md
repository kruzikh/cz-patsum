### Struktura pacientského souhrnu

PS obsahuje následující datové sekce.

{% include img.html img="PS-composition.png" caption="Figure 2: The PS composition" width="70%" %}

### Popis sekcí

#### Alergie a intolerance

Sekce alergie a intolerance obsahuje stavy, které ohrožují život nebo závažným způsobem ohrožují zdraví pacienta a mohou mít vliv na volbu terapie.

Sekce umožňuje zaznamenávat jak sklony pacienta k reakci na příslušný agens (původce) a záznamenat také jednotlivé reakce, tedy manifestace alergie či intolerance. U sklonu k reakci je vždy nutné uvést původce (např. tetracyklin, nebo mořské plody), nebo negativní vyjádření (např. žádná známá alergie).

U Alergie je možné (mimo povinného původce) popsat tyto atributy:
-	Původce
-	Kategorie (původce)
-	Typ (alergie)
-	Stav (aktivity)
-	Míra jistoty
-	Riziko
-	Datum od
-	Datum do
-	Datum poslední reakce
-	Popis alergie volným textem

U každé jednotlivé reakce je možné dále popsat:
-	Projev
-	Způsob expozice
-	Závažnost
-	Datum

Mimo to lze doplnit informace k alergii i k reakci volným textem.


#### Varování

Sekce „Varování“ zahrnuje skutečnosti různé povahy, jejichž společným jmenovatelem je značný až zásadní význam pro poskytování péče. eHN PS Guidelines jako příklady uvádí krvácení po aspirinu, kašel po ACE inhibitoru, přítomnost vzácné nemoci, obtížnou intubaci, transplantovaný orgán, ale také účast v klinické studii.

Sémanticky je název bloku „varování“ určitým zjednodušením, neboť obecně upozorňuje na závažné okolnosti či důležité informace, které nemusejí znamenat přímo ohrožení pacienta.

V souladu s obsahem totožného bloku propouštěcí zprávy je v této sekci možno zaznamenat:

-	Označení varování
-	Onemocnění či stav (k němuž se varování vztahuje)
-	Kontakt na odborného lékaře
-	Poznámka
-	Úroveň varování
-	Období platnosti


#### Medikace

Sekce obsahuje přehled medikace se všemi potřebnými parametry (viz níže). Evropská specifikace PS obsahuje též indikaci (medicínský důvod) a rozlišení na léčebné či preventivní podávání. V národní specifikaci jsou tyto údaje nepovinné.

Pro každý záznam se uvvádějí následující atributy:
-	indikace (medicínský důvod)
-	název léčivého přípravku (tzv. firemní název)
-	generické názvy účinných látek
-	forma léčivého přípravku
-	síla
-	dávkování
-	cesta podání
-	datum zahájení podávání
- datum ukončení podávání (pokud přípravek již není pacientem užíván)
-	doporučená doba podávání

V sekci mohou být uvedeny:
- pouze léčivé přípravky, které pacient aktuálně užívá;
- léčivé přípravky, které pacient aktuálně užívá a léčivé přípravky, které užíval v minulosti a jsou významné z hlediska účelu PS;
- všechny předepsané, resp. vydané léčivé přípravky získané z lékového záznamu v systému e-Recept.

Záznamy v této sekci mohou vyjadřovat následující situace, které musí být příslušným způsobem rozlišeny:
- pacient nemá žádnou známou medikaci;
- medikace pacienta není známa;
- medikace je známa a pro každý léčivý přípravek je učiněn samostatný záznam


#### Zdravotní problémy

Sekce obsahuje seznam diagnóz či stavů s možným uvedením klasifikačních kódů MKN nebo Orphacode. Další typy klasifikačních systémů (např. MKN-O) mohou být doplněny v budoucích verzích standardu na základě potřeby a konsenzu odborné veřejnosti.

U každého zdravotního problému je podle jeho povahy dále možné uvést tyto atributy:
-	délku trvání/rok stanovení diagnózy
-	rozsah postižení (např. kódem TNM klasifikace)
-	stav (aktivitu)
-	míru jistoty/způsob ověření diagnózy
-	upřesnění volným textem


#### Výkony

Sekce Výkony zahrnuje všechny podstatné léčebné a diagnosticko-léčebné výkony, tedy nejen chirurgické (laparoskopické i otevřené operace), ale i další endoskopické výkony gastroenterologické, urologické, gynekologické, cévní a další. Hlavním kritériem pro zařazení je význam pro aktuální zdravotní stav i pro budoucí terapeutické i diagnostické procedury.


#### Implantáty a zdravotní pomůcky

Obsahem sekce je seznam implantovaných a externích zdravotnických prostředků, na kterých je pacient závislý nebo které významně ovlivňují nebo mohou ovlivnit jeho zdravotní stav či budoucí terapeutické a diagnostické postupy.

Pro každý z těchto zdravotnických prostředků se uvádějí tyto atributy:
-	popis zdravotnického prostředku
-	identifikátor (ID) zdravotnického prostředku
-	datum implantace
-	datum vyjmutí (i plánovaného)
-	indikace (medicínský důvod užívání prostředku)


#### Očkování

Pro každé očkování se uvádějí tyto atributy:
-	onemocnění nebo původce
-	typ vakcíny vč. výrobce
-	pořadové číslo dávky
-	datum podané dávky
-	datum doporučeného přeočkování/podání další dávky
-	upřesnění volným textem

Další atributy, které jsou součástí evropské specifikace PS: číslo šarže, zdravotnické zařízení, které dávku podalo, jméno zdravotníka a zemi podání nebyly do národní specifikace zahrnuty.


#### Ostatní části PS

Evropská specifikace Pacientského souhrnu obsahuje další části, které dosud nebyly do národní specifikace pacientského souhrnu zahrnuty:

-	Souhrnná anamnéza
- Faktory životního stylu
-	Vybrané nálezy
-	Léčebná doporučení
-	Hodnocení soběstačnosti
- Informace o těhotenství

Tato implementační specifikace však i tyto části pacientského souhrnu zahrnuje jako volitelné části pacientského souhrnu z důvodu potřebné kompatibility s evropským standardem.

### Seznam profilů

Profily, které byly pro tuto implementační příručku definovány, jsou uvedeny <a href="profiles.html">zde</a>.

Níže jsou uvedeny profily, které byly definovány pro každou sekci PS. (R) označuje požadovaný oddíl (tj. musí být přítomen v PS), (S) označuje doporučený oddíl, ostatní jsou volitelné:
* Medication Summary (R)
 [ <a href="StructureDefinition-MedicationStatement-uv-ips.html">Medication Statement (PS)</a> |
 <a href="StructureDefinition-MedicationRequest-uv-ips.html">Medication Request (PS)</a> |
 <a href="StructureDefinition-Medication-uv-ips.html">Medication (PS)</a> ]
* Allergies and Intolerances (R)
 [ <a href="StructureDefinition-AllergyIntolerance-uv-ips.html">Allergy Intolerance (PS)</a> ]
* Problem List (R)
 [ <a href="StructureDefinition-Condition-uv-ips.html">Condition (PS)</a> ]
* Immunizations (S)
 [ <a href="StructureDefinition-Immunization-uv-ips.html">Immunization (PS)</a> ]
* History of Procedures (S)
 [ <a href="StructureDefinition-Procedure-uv-ips.html">Procedure (PS)</a> |
  <a href="StructureDefinition-Organization-uv-ips.html">Organization (PS)</a> |
  <a href="StructureDefinition-Device-observer-uv-ips.html">Device (performer, observer)</a> ]
* Medical Devices (S)
 [ <a href="StructureDefinition-DeviceUseStatement-uv-ips.html">Device Use Statement (PS)</a> |
 <a href="StructureDefinition-Device-uv-ips.html">Device (IPS)</a> ]
* Diagnostic Results (S)
 [ <a href="StructureDefinition-Observation-results-uv-ips.html">Observation (Results)</a> |
   <a href="StructureDefinition-DiagnosticReport-uv-ips.html">DiagnosticReport (PS)</a> |
   <a href="StructureDefinition-Organization-uv-ips.html">Organization (PS)</a> ]
  * Laboratory results
   [ <a href="StructureDefinition-Observation-results-laboratory-uv-ips.html">Observation (Results: laboratory)</a> |
   <a href="StructureDefinition-Specimen-uv-ips.html">Specimen (PS)</a> |
   <a href="StructureDefinition-Media-observation-uv-ips.html">Media observation (Results: laboratory, media)</a> ]
  * Radiology results
   [ <a href="StructureDefinition-Observation-results-radiology-uv-ips.html">Observation (Results: radiology)</a> |
   <a href="StructureDefinition-Device-observer-uv-ips.html">Device (performer, observer)</a> |
   <a href="StructureDefinition-ImagingStudy-uv-ips.html">Imaging Study (PS)</a> |
   <a href="StructureDefinition-Practitioner-uv-ips.html">Practitioner (PS)</a> ]
  * Pathology results
   [ <a href="StructureDefinition-Observation-results-pathology-uv-ips.html">Observation (Results: pathology)</a> |
   <a href="StructureDefinition-Specimen-uv-ips.html">Specimen (PS)</a> |
   <a href="StructureDefinition-Media-observation-uv-ips.html">Media observation (Results: laboratory, media)</a> ]
* Vital Signs
  [ <a href="{{site.data.fhir.path}}vitalsigns.html">Vital Signs</a> ]
* Past history of illnesses
  [ <a href="StructureDefinition-Condition-uv-ips.html">Condition (PS)</a> ]
* Pregnancy (status and history summary)
 [ <a href="StructureDefinition-Observation-pregnancy-edd-uv-ips.html">Observation (Pregnancy: EDD)</a> |
 <a href="StructureDefinition-Observation-pregnancy-outcome-uv-ips.html">Observation (Pregnancy: outcome)</a> |
 <a href="StructureDefinition-Observation-pregnancy-status-uv-ips.html">Observation (Pregnancy: status)</a> ]
* Social History
 [ <a href="StructureDefinition-Observation-alcoholuse-uv-ips.html">Observation (SH: alcohol use)</a> |
 <a href="StructureDefinition-Observation-tobaccouse-uv-ips.html">Observation (SH: tobacco use)</a> ]
* Functional Status (Autonomy / Invalidity)
 [ <a href="StructureDefinition-Condition-uv-ips.html">Condition (PS)</a> |
  <a href="{{site.data.fhir.path}}clinicalimpression.html">Clinical Impression</a> ]
* Plan of care
  [ <a href="{{site.data.fhir.path}}careplan.html">Care Plan</a> ]
* Advance Directives
  [ <a href="{{site.data.fhir.path}}consent.html">Consent</a> ]

---
