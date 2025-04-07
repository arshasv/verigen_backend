```markdown
# OpenLane Design Summary Report

## Overall Status: Success

## Configuration Warnings

### Missing VSRC_LOC_FILES
*   **Violation:** Missing configuration parameter: `VSRC_LOC_FILES`
*   **Severity:** Medium
*   **Stage:** Power Analysis
*   **Tool:** OpenLane
*   **Impact:** Inaccurate IR drop analysis may lead to power grid failures in silicon.
*   **Resolution:** Define `VSRC_LOC_FILES` or confirm IR drop analysis is not critical for the design stage.
*   **Suggestions:**
    *   If you are integrating a top-level chip for manufacture, define the `VSRC_LOC_FILES` variable with the correct path to the voltage source location files.
    *   Refer to the OpenLane documentation for `VSRC_LOC_FILES` to understand its purpose and how to configure it.
    *   If you are not integrating a top-level chip for manufacture, you may ignore this warning.
*   **Reference:** [OpenLane Documentation](https://openlane.readthedocs.io/en/latest/reference/configuration.html#vsrc-loc-files)

## Design Rule Check (DRC) Warnings

### Obsolete NOWIREEXTENSIONATPIN Statement
*   **Violation:** `[WARNING ODB-0220] WARNING (LEFPARS-2008): NOWIREEXTENSIONATPIN statement is obsolete in version 5.6 or later.`
*   **Count:** 6
*   **Suggestions:**
    *   Investigate the obsolete `NOWIREEXTENSIONATPIN` warnings. This statement might be causing issues and should be updated if possible.

## Key Metrics

### Die and Core Area
*   **Die Area:** 0.0 0.0 97.025 107.745 (µm)
*   **Core Area:** 5.52 10.88 91.08 95.2 (µm)

### Chip Area
*   **delayed_serial_adder:** 52.550400, 103.849600
*   **spm:** 1681.612800, 3.753600, 3326.940800, 3326.940800, 3326.940800

### Global Placement
*   **Core Area:** 7214.419 um^2
*   **Non-Place Instances Area:** 356.592 um^2
*   **Place Instances Area:** 3326.941 um^2
*   **Standard Instances Area:** 3326.941 um^2
*   **Macro Instances Area:** 0.000 um^2
*   **Target Density:** 0.550
*   **Average Place Instance Area:** 14.786 um^2
*   **Ideal Bin Area:** 26.884 um^2
*   **Total Bin Area:** 7214.419 um^2
*   **Timing Driven Worst Slack:** 9.19e-09

## Synthesis Warnings

*   **ABC Warnings:**
    *   Detected 2 multi-output gates (for example, "sky130_fd_sc_hd__fa_1").
    *   The network is combinational.

## Routing Violations

### Detailed Routing

*   **LEF58_ENCLOSURE Warnings:**
    *   mcon: 2
    *   via: 3
    *   via2: 2
    *   via3: 2
    *   via4: 2
*   **Violation Summary:**
    *   Number of Routing Stages: 4
    *   **Stage 1:**
        *   10%: 0
        *   20%: 0
        *   30%: 5
        *   40%: 12
        *   50%: 12
        *   60%: 17
        *   Final Violations: 52
    *   **Stage 2:**
        *   10%: 52
        *   20%: 52
        *   30%: 52
        *   40%: 52
        *   50%: 47
        *   60%: 47
        *   70%: 47
        *   80%: 47
        *   90%: 26
        *   100%: 15
        *   Final Violations: 17
    *   **Stage 3:**
        *   10%: 17
        *   20%: 17
        *   30%: 17
        *   40%: 17
        *   50%: 16
        *   60%: 16
        *   70%: 16
        *   80%: 16
        *   90%: 10
        *   100%: 10
        *   Final Violations: 10
    *   **Stage 4:**
        *   10%: 10
        *   20%: 10
        *   30%: 10
        *   40%: 5
        *   50%: 5
        *   60%: 3
        *   Final Violations: 0

## Cell Matching

*   cell sky130_fd_sc_hd__dfxtp_2 (noninv, pins=3, area=21.27) is a direct match for cell type $_DFF_P_.
*   cell sky130_fd_sc_hd__dfrtp_2 (noninv, pins=4, area=26.28) is a direct match for cell type $_DFF_PN0_.
*   cell sky130_fd_sc_hd__dfstp_2 (noninv, pins=4, area=26.28) is a direct match for cell type $_DFF_PN1_.
*   cell sky130_fd_sc_hd__dfbbn_2 (noninv, pins=6, area=35.03) is a direct match for cell type $_DFFSR_NNN_.

## Suggestions

*   Investigate the obsolete `NOWIREEXTENSIONATPIN` warnings. This statement might be causing issues and should be updated if possible.
*   Cell type report data is unavailable. Check the complete log file or the tool configuration to ensure that cell type reports are generated. This report is important for cell density and area analysis.
*   Investigate the unknown cell areas for the following cell types: $_NAND_, $_OR_, $_XOR_, $_XNOR_, $_ANDNOT_, $_DFF_PN0_, `\delayed_serial_adder`. Missing area information for these cell types might affect the accuracy of area estimations and optimization during synthesis.
*   Review global placement metrics. Target density is 0.55. Consider adjusting the density or placement parameters if congestion or timing issues are observed.
```