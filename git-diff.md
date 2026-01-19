Ahh Kafi 😎, ab mai tumhe **`git diff`** ke bare me **complete, detailed notes** bata deta hoon — ye command Git me **changes compare karne ke liye** use hoti hai.

---

# 🌐 Git Diff — Complete Notes

---

## 1️⃣ What is `git diff`?

* Shows **differences between files / commits / branches**
* Helps you see **what has changed before committing**
* **Color-coded** output (added/removed lines)

---

## 2️⃣ Basic Usage

### 2a. Check unstaged changes

```bash
git diff
```

* Shows changes in **working directory** that are **not staged** yet
* Example output:

```diff
- old line
+ new line
```

* `-` = removed
* `+` = added

---

### 2b. Check staged changes

```bash
git diff --staged
```

* Shows changes that are **added to staging area (`git add`)** but **not committed yet**

---

### 2c. Compare with last commit

```bash
git diff HEAD
```

* Shows **all changes in working directory and staging area** compared to last commit

---

## 3️⃣ Compare Specific Files

```bash
git diff <file-name>
git diff --staged <file-name>
```

* Only that file’s changes are displayed

---

## 4️⃣ Compare Commits

```bash
git diff <commit1> <commit2>
```

* Example:

```bash
git diff a1b2c3 d4e5f6
```

* Shows differences between **two commits**

---

## 5️⃣ Compare Branches

```bash
git diff <branch1> <branch2>
```

* Example:

```bash
git diff main kahaf
```

* Shows **what changes exist in `kahaf` branch but not in `main`**

---

## 6️⃣ Other Useful Options

| Option          | Use                                           |
| --------------- | --------------------------------------------- |
| `--color-words` | Show inline changes clearly                   |
| `--name-only`   | Only show **file names** changed              |
| `--name-status` | Shows **added / modified / deleted** files    |
| `--stat`        | Shows **summary stats**: #lines added/removed |

---

## 7️⃣ Workflow Example

```bash
# 1. Check unstaged changes
git diff

# 2. Stage changes
git add index.html

# 3. Check staged changes
git diff --staged

# 4. Commit
git commit -m "Update index"

# 5. Compare last two commits
git diff HEAD~1 HEAD
```

---

## 8️⃣ Quick Notes

* `git diff` **does not change any files** → safe to run anytime
* Always use **`--staged`** to check what will go in commit
* For practice → compare **branches / commits** to see real effect

---

Kafi 💪
Agar chaho, mai tumhare liye **diff + revert + restore ka combo cheat sheet** bana doon, jisme **har situation me exact command ka use dikh jaye**, taaki practice me sab kaam one-stop ho jaye.

Chahoge mai wo bana doon?
