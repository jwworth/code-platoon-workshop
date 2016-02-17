<!---
This slidedeck designed for use with Deckset: http://www.decksetapp.com/
-->

# Intro to TDD

### Hashrocket TDD/Pair Programming Workshop

---

# What is TDD?

---

# Write test; then write code.

---

# Coined by Kent Beck (early 2000's)

---

# Counterintuitive

---

# Cutting Edge & Controversial

^ By no means a standard practice

---

> 'TDD is dead. Long live testing.'
--DHH (RailsConf 2014)

---

# Benefits

---

# Benefits

- Test coverage guaranteed
- Cleaner code
- Easy refactoring
- Useful when stuck (declarative paradigm)

---

# Workflow

---

# Workflow ('Red Green Refactor')

- Write 'happy path' test (good *red*)
- Write naive implementation to *green*

```ruby
def users_count(users)
  3
end
```

- Add test cases (*red*)

---

# Workflow ('Red Green Refactor')

- Make tests *green*

```ruby
def users_count(users)
  users.count
end
```

- Test edge cases to *green*
- *Refactor* tested code
- Run all tests, fix failures, commit!

---

# Questions?
