# STIRR

**A substrate-aware knowledge architecture for Obsidian**

STIRR [extends Nick Milo's](https://forum.obsidian.md/t/the-ultimate-folder-system-a-quixotic-journey-to-ace/63483) [STIR](https://www.linkingyourthinking.com/) framework with a fifth dimension —> **Refraction**, to handle what happens when an LLM enters your knowledge system.

You and an LLM are two different processing substrates sharing the same spatial architecture. When knowledge passes between them, it distorts —> the way light bends passing from air into water. STIRR builds the correction into the architecture itself. Each room declares what the LLM may do there, and what must remain yours.

The result is an Obsidian vault that feels like walking through a building. Each room has a distinct purpose, a distinct processing mode, and a distinct relationship between you and the LLM. You don't search for a fact, you walk to the room where that kind of fact lives.

---

## Why STIRR?

The [**Conjugate Pair**](https://www.linkedin.com/pulse/what-your-notes-making-you-less-capable-rob-chartier-ethersolutions-vmukc/?trackingId=dUQyB43wTN0bRszTJBwU7g%3D%3D) is a structural constraint: precision and range in knowledge are constitutively incompatible. When you sharpen the explicit representation, you narrow the tacit original. This isn't metaphor. It's supported by evidence from cognitive science (verbal overshadowing), organizational behavior (process debt, safety culture displacement), and education (metacognitive laziness from AI offloading).

Most knowledge management systems ignore this. They organize by topic or intention, not by processing mode. A folder called "Projects" mixes creative thinking with financial tracking with personal health — each requiring a fundamentally different cognitive stance.

STIRR uses the [**Method of Loci**](https://en.wikipedia.org/wiki/Method_of_loci) (mind palace) to give each processing mode its own room. Walking into a room loads the right cognitive context. The architecture tells you — and your AI agent — what mode to be in.

The **Substrate Principle** adds the governance layer. An LLM summarizing your research notes performs analytic processing on holistic material, that's the same substrate, and it displaces your thinking. An LLM maintaining your reference index performs analytic processing on analytic material, *that's a different substrate*, and it augments without displacing. The difference depends on where the LLM operates and what it does. STIRR makes that architecture, not choice.

---

## The Nine Rooms

| Room | Mode | LLM Role | What Happens Here |
|------|------|----------|-------------------|
| [**Gatehouse**](0.%20Gatehouse/README.md) | Capture | Scribe | Everything enters here first. Nothing stays long. |
| [**Study**](1.%20Study/README.md) | Range | Interlocutor | Thinking, writing, synthesis. The most important room. |
| [**Library**](2.%20Library/README.md) | Precision | Indexer | Structured knowledge for retrieval. The explicit layer. |
| [**Workshop**](3.%20Workshop/README.md) | Bridge | Lab Assistant | Hands-on making. Practice documented as you go. |
| [**Gallery**](4.%20Gallery/README.md) | Bridge | Project Coordinator | Active projects and work in motion. |
| [**Quarters**](5.%20Quarters/README.md) | Mixed | None | Personal life. The sanctuary. LLM enters only on request. |
| [**Counting House**](6.%20Counting%20House/README.md) | Precision | Clerk | Financial and legal records. Pure precision. |
| [**Archive**](7.%20Archive/README.md) | Precision-Retrieval | Indexer | Completed and historical. Nothing new happens here. |
| [**Foundation**](8.%20Foundation/README.md) | System | Operations | Templates, AI skills, configuration, infrastructure. |

```
The Palace (Vault Root)
├── 0. Gatehouse/          Capture
├── 1. Study/              Range
├── 2. Library/            Precision
├── 3. Workshop/           Bridge
├── 4. Gallery/            Bridge
├── 5. Quarters/           Mixed
├── 6. Counting House/     Precision
├── 7. Archive/            Precision-Retrieval
├── 8. Foundation/         System
├── PROTOCOL.md            LLM governance constitution
├── STIRR.md               Full methodology specification
├── MIGRATION.md           AI-assisted migration guide
└── _Palace MoC.md         Navigation foyer
```

Each room contains its own `README.md` (human-facing — what the room is for), `PROTOCOL.md` (machine-facing — what the LLM is permitted to do), and `_MoC.md` (navigation hub).

---

## The Governance Gradient

Rooms are organized along a gradient from most human-protected to most LLM-autonomous:

```
HUMAN-PROTECTED                          LLM-AUTONOMOUS
    |                                        |
    Quarters - Study - Gatehouse - Workshop - Library - Counting House - Archive - Foundation
    |           |        |           |          |            |              |           |
 restricted  guarded permissive permissive permissive   permissive    permissive   unrestricted
```

This is not a permission hierarchy. It is a substrate compatibility map. The Quarters are restricted because personal, tacit, emotionally embedded knowledge is the most vulnerable to analytic displacement. The Foundation is unrestricted because LLM infrastructure is the LLM's own territory — there is no human substrate to protect.

The boundary condition: an LLM operating on its own substrate does not displace human understanding. An LLM operating on the human substrate does. The governance gradient keeps each in its place.

---

## Substrate Tagging

Every note carries frontmatter that declares its substrate:

```yaml
---
substrate: human-primary      # Which substrate carries the essential work
processing_mode: range        # What cognitive mode this note requires
llm_access: guarded           # What the LLM is permitted to do here
llm_role: interlocutor       # The LLM's functional role
created: 2026-04-24
status: developing
---
```

The substrate tag is not just metadata. It is a refractive index — it tells you (and any AI agent) how knowledge will distort when it passes between substrates. Reading the substrate tag before acting is the STIRR correction.

---

## Quick Start

### 1. Clone this repository

```bash
git clone https://github.com/nothingmn/stirr.git
```

Open the folder in Obsidian as a vault.

### 2. Walk the palace

Start at `_Palace MoC.md` — the foyer. Walk into each room. Read the README on the door. The architecture is designed to be walked, not searched.

### 3. Start creating notes

Use the Gatehouse for capture. Move notes to their proper rooms when you're ready. Apply the frontmatter template from each room's PROTOCOL.md.

### 4. Onboard an AI agent (optional)

If you use an AI agent (Hermes, Claude Code, Copilot, etc.), point it at `PROTOCOL.md`:

```
Read ./PROTOCOL.md and adopt its rules as your operating constraints for this vault.
```

That instruction triggers a 5-step onboarding sequence built into PROTOCOL.md itself:

1. Read PROTOCOL.md (the governance rules)
2. Read STIRR.md (the methodology — *why* the rules exist)
3. Walk the palace via `_Palace MoC.md` (build spatial memory)
4. Acknowledge room roles (verify understanding)
5. First action in the Gatehouse (enter through the front door)

Steps 1-3 are mandatory. The agent cannot operate correctly without understanding both WHAT the rules are and WHY they exist. After onboarding, the agent knows which rooms it can operate in freely, which require your request, and which are sanctuary.

For persistent sessions, add this to your agent's config file:

```
When working in this vault, read ./PROTOCOL.md first and follow its governance rules.
```

### 5. Migrate existing content (optional)

If you have an existing Obsidian vault or collection of notes, see `MIGRATION.md` for the full process. The migration is interactive — the agent proposes, you confirm. Nothing moves without your approval.

### Alternative: Manual bootstrap (no git)

If you cannot clone (no git, no internet, air-gapped), an LLM agent can construct the vault from the reference architecture in `LAYOUT.md`. Steps:

1. Create the 9 room directories with numeric prefixes
2. Create depth-2 subdirectories (see LAYOUT.md for the standard structure)
3. Create governance files in each room and sub-area: `_MoC.md`, `PROTOCOL.md`, `README.md`
4. Create the root files: PROTOCOL.md, README.md, STIRR.md, WORKING.md, MIGRATION.md, LAYOUT.md, _Palace MoC.md
5. Copy the Skills directory under 8. Foundation/Skills/
6. Create AI Library, Config, and Templates directories under 8. Foundation/
7. Initialize git: `git init && git add . && git commit -m "Bootstrap STIRR vault"`

Manual bootstrap cannot provide LAYOUT.md, room-specific protocol customization, or STIRR.md — these must be written from engagement with the Conjugate Pair framework or copied from the reference repository.

### Multi-vault setup

For separate personal and business vaults:

1. Clone twice into separate directories
2. Name them distinctly (e.g., "The Citadel" and "EtherSolutions")
3. Customize LAYOUT.md in each to reflect the different weight distribution
4. Set up cross-vault links in the MOCs where needed
5. Each vault is a separate Obsidian vault with its own .obsidian config

### Verification

After setup, confirm:

- All 9 room directories exist with numeric prefixes
- All rooms and sub-areas contain _MoC.md, PROTOCOL.md, README.md
- Root contains _Palace MoC.md, PROTOCOL.md, README.md, STIRR.md, LAYOUT.md
- 8. Foundation/Skills/ contains stirr-obsidian-operations/ with SKILL.md
- 8. Foundation/AI Library/, Config/, Templates/ each contain governance files
- _Palace MoC.md links to all 9 room MOCs
- Git is initialized with a clean initial commit

---

## Without AI

If you like the spatial structure but don't want the AI/LLM governance layer, you can remove it:

**Linux/macOS:**
```bash
bash remove-ai-layer.sh
```

**Windows:**
```powershell
powershell -ExecutionPolicy Bypass -File remove-ai-layer.ps1
```

The scripts remove all PROTOCOL.md files, MIGRATION.md, and the Skills directory. What remains is a clean spatial knowledge palace — the rooms, MOCs, and READMEs all work without AI governance. STIRR.md and LAYOUT.md remain as reference. Frontmatter stays but is inert.

---

## Document Map

| Document         | Purpose                                                                                             |
| ---------------- | --------------------------------------------------------------------------------------------------- |
| [STIRR.md](STIRR.md)       | Full methodology: first principles, substrate definitions, room descriptions, governance model      |
| [PROTOCOL.md](PROTOCOL.md)    | The LLM constitution: binding rules for what agents may and may not do, room by room                |
| [MIGRATION.md](MIGRATION.md)   | How to move your existing notes into STIRR: step-by-step, interactive                               |
| [LAYOUT.md](LAYOUT.md)      | Architectural blueprint: room-by-room structure, content mapping, migration log |
| [WORKING.md](WORKING.md)     | Project tracker: decisions, open questions, development notes                                       |
| [_Palace MoC.md](_Palace%20MoC.md) | The foyer: navigation hub linking to all rooms                                                      |
| [README.md](README.md)      | This file                                                                                           |

Each room also has:
- **README.md** — The sign on the door. Human-facing. What this room is for and how to use it.
- **PROTOCOL.md** — The room's LLM constitution. What the agent may and may not do here.
- **_MoC.md** — Navigation hub. Links to every area and note in the room.

---

## Relationship to Existing Frameworks

[**STIR (Nick Milo, Linking Your Thinking):**](https://www.youtube.com/@linkingyourthinking)  STIRR inherits the STIR dimensions (Space, Time, Importance, Relatedness) and adds Refraction — the fifth dimension that addresses substrate governance. STIR tells you how to organize by importance and relatedness. STIRR tells you how to manage the distortion that occurs when knowledge passes between human and LLM substrates.

[**ACE (Atlas, Calendar, Efforts):**](https://blog.linkingyourthinking.com/notes/ace-folder-framework) ACE organizes by intention. STIRR organizes by processing mode. They are complementary. ACE decides where a note goes. STIRR decides what cognitive mode to adopt when you get there, and what the LLM is allowed to do while you're in it.

[**PARA (Projects, Areas, Resources, Archive):**](https://fortelabs.com/blog/para/) PARA organizes by time horizon. STIRR organizes by substrate compatibility. PARA's "Resources" maps roughly to the Library (precision) and Study (range), but PARA doesn't distinguish between them. STIRR does, because the Conjugate Pair says they require fundamentally different cognitive treatment.

[**The Conjugate Pair:**](https://www.linkedin.com/pulse/what-your-notes-making-you-less-capable-rob-chartier-ethersolutions-vmukc/?trackingId=dUQyB43wTN0bRszTJBwU7g%3D%3D) The underlying principle that motivates STIRR. Precision and range in knowledge are constitutively incompatible. When you sharpen the explicit representation, you narrow the tacit original. STIRR is the architectural response: give each processing mode its own room, declare each room's substrate, and build the governance into the walls.

---

## Background Reading

The Conjugate Pair blog post series introduces the principle, maps it to knowledge systems, and presents the first practical patterns:

1. [What If Your Notes Are Making You Less Capable?](https://www.linkedin.com/pulse/what-your-notes-making-you-less-capable-rob-chartier-ethersolutions-vmukc/?trackingId=dUQyB43wTN0bRszTJBwU7g%3D%3D) — The Conjugate Pair constraint
2. [Your Second Brain Has a Blind Spot](https://www.linkedin.com/pulse/your-second-brain-has-blind-spot-rob-chartier-ethersolutions-bcb7c/?trackingId=PwSFJaFkjlpxUAa3uOxnPA%3D%3D) — What documentation costs you
3. [How to Build an AI-Assisted Second Brain Without Losing Your Edge](https://www.linkedin.com/pulse/how-build-ai-assisted-second-brain-without-losing-ethersolutions-srqac/?trackingId=lkABCOdvMUxPYi3j2%2BVGhQ%3D%3D) — Practical patterns for substrate-aware knowledge work

---

## License

This project is released under the [MIT License](LICENSE). Use it, adapt it, modify it — build your own palace with it.

---

STIRR: Space, Time, Importance, Relatedness, Refraction.

See through two media simultaneously. Correct for the distortion at the boundary.