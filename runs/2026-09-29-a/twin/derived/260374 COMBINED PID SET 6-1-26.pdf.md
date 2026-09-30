---
document: 260374 COMBINED PID SET 6-1-26.pdf
for-document: sha256:bdb3725ac983a2e591ba908ef8f3702d8f9bfd1659a6b56b0e7844c1a721bb2e
derived-from: page-001 … page-013
verified-by: single-reader cross-check
verified-on: 2026-09-29
confidence: SURE
---

# Read-through — 260374 COMBINED PID SET 6-1-26.pdf

Project 260374, "PIPING & INSTRUMENTATION" set by 3S Services, LLC (Midland, TX), issued
FOR APPROVAL (stamp May 29 2026; revision B dated 06/01/26). Thirteen PDF pages: two legend
sheets, nine numbered P&ID sheets (-001…-011), of which four (-003, -004, -006, -008) are
INTENTIONALLY BLANK. PDF page order is non-sequential against drawing numbers (-004 last).

## Process narrative as drawn
1. **Well/test collection (-001, p3).** Twelve untagged well/test separators (1–12) tie into
   "TEST 1 HEADER" (10"-AC004-3100/300#) and IP headers (12"-PF-102, 10"-PF-106-B4-IPC),
   with a chemical-injection loop (FQI 504/FCV 504/SDV 504) and H2S area alarms
   (AT-001/002). Flow arrows head to -002, -005 (IP BULK SEP.), -007 (TEST SEP. 1).
2. **Header transfer (-002, p4).** PF header lines routed with arrows to -001, -005, -007
   and to three reaction-area names (WASTE ACID TANK, CAUSTIC WASTE TANK, NEUTRALIZATION
   REACTOR) on -003 — which is blank. Nothing tagged on -002.
3. **Test separation (-007, p8).** V-600A TEST SEPARATOR #1 (60" ID X 18'-0" S/S,
   825/550/825 PSIG) receives the test-1 header flow; gas departs via PCV-600A
   (SET @ 225 PSI, 8" V-BALL FO) on 10"-PG-117-B3 "TO IP GAS LINE -009"; oil departs via
   LCV-601A on 6"-PO-126 "TO V-200 INLET"; water via LCV-603A on 6"-W-127 "TO HEADER -002".
   Protected by PSV-600A/601A/602A (SET @ 720/738/756 PSIG). IA regulation: PCV-601A/602A
   (35 PSIG), PCV-604A (15 PSIG, vent plug). A V-600B series is implied but never drawn.
4. **Bulk separation (-005, p6).** V-200 INTERMEDIATE PRESSURE BULK SEPARATOR
   (72" ID X 18'-0" S/S, 345/250/345 PSIG, datasheet under HOLD FOR INFO) receives IP header
   gas/liquids; PSV-200/201/202 (345/362/380 PSIG); level control LCV-200 (3" V-BALL FO) and
   LCV-201 (3" V-BALL FC) split oil/water out; gas out 10"-PG-112-B3 "TO IP GAS LINE -009".
5. **Gas treatment / MOLT feed (-009, p10).** Two parallel gas pressure-control runs:
   PCV-201 (SET @ 310PSI, 8" V-BALL FC) on the V-200 gas (10"-PG-113-B3) and PCV-202
   (SET @ 225 PSI, 8" V-BALL FO) on the V-600A gas (10"-PG-111-B3), both HOLD FOR SIZING,
   with metering (FT/FE/FI/FQI 200) and PI/PIT/PY loops; overheads to flare header (-008,
   blank) and to the vent stack; an 8" line "TO V-805 AIR REVEIVER".
6. **Venting (-010, p11).** V-700 VENT STACK (0'-6" ID, 1 PSIG op.) receives
   "FROM SEPARATORS -009" on 10"-PG-132-A4 through a 10"X6" reducer.
7. **Instrument air package (-011, p12).** CA-800 duplex compressor package (IR 2-2545A10,
   35 SCFM @ 125 PSIG, integral 240-gal/250-MAWP receiver with PSV-800 SET @ 200 PSI /
   173 SCFM, 10 HP motors, START @ 90 / STOP @ 120 PSIG unloader, PSV-801A/802A 80 PSI /
   74 SCFM on aftercooler circuits) → F-803 general-purpose filter → F-804A oil-removal
   pre-filter → DR-804 desiccant dryer (IR D110IM, with untagged aftercooler/dryer towers
   "(f)") → F-804B dust post-filter → V-805 dry-air receiver (30" OD X 7'-0", 240 GAL,
   MAWP 200 PSIG, CS; PSV-805 3/4"X1" SET @ 200 PSIG; PCV-800 SET @ 100 PSIG regulating IA
   out; KV-800/KV-805 1/2" on-off valves). Vent mufflers tagged DR-3001 (f), outside
   building. IA headers distributed as 2"-IA-501-T / 1"-IA-502…504-T.

## Procurement-relevant state of the set
Every relief valve and every process-scale control valve carries a HOLD FOR SIZING (or
HOLD FOR INFO) cloud: the set is an approval-issue package with provisional sizing.
Equipment ratings are stated only for V-200, V-600A, V-700, V-805, and the CA-800 package
line; the -011 filters/dryer carry mfg/model + capacity instead of vessel ratings.
Named-but-never-drawn items (reaction-area tanks, flare header, V-600B series) are flagged
in detection.md — they cannot be procured from this set as issued.
