# Schema Crosswalk - Stack Overflow Developer Survey (2023–2025)

The Stack Overflow survey changes its questions every year. This document tracks which
fields are safe to compare in 2023, 2024 and 2025 and which ones need care.

**Scope:**  Only some fields used in this project, not the whole survey.

This analysis started by reviewing the official survey documentation first. 
After that, we checked it against the real data below.

## Fields present in all three years (safe backbone)

**Demographics and career:**
- `MainBranch`
- `Age`
- `Employment`
- `EdLevel`
- `DevType`
- `OrgSize`
- `ICorPM`
- `RemoteWork`
- `Country`
- `Industry`
- `YearsCode`
- `WorkExp`
- `LearnCode`

**Compensation:**
- `Currency`
- `CompTotal`
- `ConvertedCompYearly`

**Tech stack:**
- `LanguageHaveWorkedWith`
- `LanguageWantToWorkWith`
- `DatabaseHaveWorkedWith`
- `DatabaseWantToWorkWith`
- `PlatformHaveWorkedWith`
- `PlatformWantToWorkWith`
- `WebframeHaveWorkedWith`
- `WebframeWantToWorkWith`
- `OpSysPersonal use`
- `OpSysProfessional use`

**AI baseline:** 
- `AISelect`
- `AISent`
- `AIAcc`

**Community:** 
- `SOAccount`
- `SOVisitFreq`
- `SOPartFreq`
- `SOComm`

## Known gaps and traps

| Field | Issue | How we handle it |
|---|---|---|
| `YearsCodePro` | Exists in 2023 and 2024 - dropped in 2025 | Use only for 2023–2024 comparison |
| `JobSat` / `JobSatPoints_*` | Doesn't exist in 2023 results | Use only for 2024–2025 comparison |
| `JobSatPoints_1`–`_11` | Same code name in 2024 and 2025 but different meaning each year | Do not merge blindly - treat 2025 as a redesigned question |
| `AIComplex` | New since 2024 - not in 2023 | Use only for 2024–2025 comparison. Added to processed dataset per year in `01_data_cleaning.ipynb` |
| `AIAgents` | New in 2025 only | Use as a single year snapshot - Not as a trend. Added to processed dataset per year in `01_data_cleaning.ipynb` |
| `DevType` role labels (Data Scientist, Data Engineer, DBA) | Wording changes across years and word order flip, no shared text to match | Normalized in `01_data_cleaning.ipynb` by  `role_map` (see notebook for exact mappings) |
| Tool/collaboration categories (`MiscTech`, `ToolsTech`, `NEWCollabTools`, `OfficeStackSync`) | Reorganized in 2025 into `DevEnvs`, `CommPlatform`, `SOTags` | Out of scope for this project |

## Status

- [x] 2023 vs 2024 vs 2025 header comparison done
- [x] Sample size check per role for `AIComplex` and `AIAgents`
- [X] Role name normalization applied
- [X] Final column list locked for the cleaning script