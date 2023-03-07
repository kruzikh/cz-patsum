**Pacientský souhrn (PS)** je souborem vybraných základních (nejdůležitějších) informací o pacientovi a jeho zdravotním stavu. Účelem pacientského souhrnu je přispět k zajištění bezpečného poskytování zdravotní péče a její kontinuity napříč poskytovateli jak v tuzemsku, tak v jiných zemích EU. Pacientský souhrn poskytne přehled všech známých, klinicky relevantních informací o pacientovi. Může tím významně snížit riziko možného poškození pacienta při předepisování léků, volbě některých typů vyšetření a léčebných postupů.

Datový obsah pacientského souhrnu je navržen tak, aby jeho základní informační komponenty byly využitelné také v jiných typech zdravotnické dokumentace nebo v elektronických zdravotních záznamech (EHR).

### Informace o projektu
Tato implementační specifikace byla vypracována v rámci národního projektu interoperability MZČR.

### Účel dokumentu
Tato implementační specifikace určuje způsob reprezentace pacintského souhrnu pomocí standardu HL7 FHIR.

Alternativní reprezentací pacientského souhrnu je standard [DASTA](https://www.dastacr.cz/dasta/start.htm).

>⚠️ **Upozornění:** Vzhledem k rozhodnutí ukončit do roku 2027 další rozvoj a podporu standardu DASTA, doporučujeme všem implementátorům přechod k mezinárodnímu standardu HL7 FHIR.

### Rozsah specifikace
Tato implementační specifikace vychází z dokumentu **Funkční specifikace pacientského souhrnu**, který stanovuje základní požadavky, obsah a strukturu souhrnu.

Následující obrázek vyjadřuje základní informační bloky pacentského souhrnu.

{% include img.html img="PS-composition.png" caption="Obrázek 1: Obsah pacientského souhrnu" width="70%" %}

### Vazby na jiné projekty
Specifikace pacientského souhrnu vychází ze evropské specifikace, která byla upravena pro národní použití. Národní úpravy zahrnují především využítí národních kódových systémů všude tam, kde jsou v českém zdravotnictví již zavedeny a dlouhodobě využívány.

Většina datových bloků pacientského souhrnu je využívána také v jiných typech dokumentů a záznamů zdravotnické dokumentace: v propouštěcí zprávě, laboratorním nálezu a dalších.

Pacientský souhrn pro přeshraniční sdílení bude i nadále implementován podle evropské specifikace, resp. dokumentace národního kontaktního bodu (NCP) a tvůrci informačních systémů budou muset zajistit jeho správné naplnění dle uvedené specifikace

### Závislosti

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}
