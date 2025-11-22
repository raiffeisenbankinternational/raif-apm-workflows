---
description: "Generate comprehensive unit tests for Java classes using complexity-ordered, method-by-method workflow"
input:
  - class_name: "Fully qualified class name to test"
  - class_source_path: "Path to the class file"
  - methods: "List of methods to test (comma-separated)"
  - coverage: "Desired code coverage percentage (default: 80%)"
  - fix: "Not create new just fix existing"
---

# Java Unit Test Workflow

## Overview
Generate comprehensive unit tests for: ${input:class_name}

Target class: ${input:class_source_path}

This workflow generates tests method-by-method in complexity order, ensuring simpler methods are tested first.

**Run Mode**:
- Default: Aggregate all methods → Generate tests sequentially
- Custom: Specify methods via ${input:methods}
- Fix: Fix existing tests

## Implementation Steps

### 1. Indexing
- [ ] Extract project facts (Spring Boot version, dependencies, testing frameworks)
- [ ] Create indexes for the class and all its dependencies

### 2. Unit Test Writing
- [ ] Create the test suite for all possible scenarios
- [ ] Create the plan testing strategy
- [ ] Add unit tests

## Success Criteria
- All tests pass
- Jacoco coverage report for lines must be above ${input:coverage} %
- Jacoco coverage for branches must be above ${input:coverage} %
- Documentation updated
- No breaking changes to existing APIs
