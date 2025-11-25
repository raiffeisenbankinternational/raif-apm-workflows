---
applyTo: "**/*.java"
description: "Java unit tests writing guidelines"
---

## Test important roles
- add prefix `ai` for each unit test
- if it's the test for java, every test must contain `@DisplayName` annotation with human-readable name
- if it's the test for java, never use lenient() for stubbing, try to remove not required stubbing instead of using lenient()
- if it's the test for java, use `Mockito.verifyNoMoreInteractions(mock)` in the `@AfterEach` method to verify that no more interactions with the mock happened