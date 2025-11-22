## Test cases design principles

### Purpose
- Verify a unit’s behavior in isolation; keep tests fast, deterministic, and readable.

### Isolation:
- Stub/fake external I/O and collaborators; avoid network, disk, sleeps; prefer pure functions.
  Design:
- One behavior per test; Arrange–Act–Assert structure.
- Minimal setup; explicit, clear assertions.
- Focus on observable behavior, not private internals.
- Clear naming: Unit_StateOrInput_Action_ExpectedOutcome.

### Inputs and coverage:
- Use equivalence partitioning and boundary value analysis.
- Include error/exception paths.
- Parameterized/table-driven tests for variants.
- Property-based tests for invariants.

### Test doubles:
- Prefer stubs/fakes; mock only when interaction is the contract.
- Verify outcomes over call order; keep expectations minimal.

### Determinism:
- Control time, randomness, environment, globals/singletons.
- Reset shared state between tests.
- For async/concurrency, use virtual time/test dispatchers; avoid real threads.

### Assertions:
- Assert outputs and observable side effects (including negatives).
- Use tolerances for floats/time; custom matchers for domain clarity.
- Provide rich failure context (inputs, state).

### Coverage and quality:
- Prioritize critical paths, edges, and exceptions.
- Use code coverage and mutation testing diagnostically, not as targets.

### Maintainability and CI:
- Local, lightweight fixtures; DRY utilities.
- No shared mutable state; make tests parallelizable.
- Quarantine/fix flakiness; review tests like production code; refactor/remove brittle or redundant tests.

### Pitfalls to avoid:
- Over-mocking and coupling to internals.
- Duplicating production logic in tests.
- Brittle assertions (e.g., exact logs) without value.
- “Unit” tests that cross process/network boundaries.

### Minimal unit test template:
- Name/ID
- Behavior under test (purpose)
- Preconditions/inputs and doubles
- Steps: Arrange, Act, Verification
- Assertions: expected outputs/side effects (positive and negative)
- Cleanup/reset state