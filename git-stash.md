Ahh Kafi 😎, ab mai tumhe **`git stash`** ke bare me **complete, detailed notes** de deta hoon. Ye command Git me **temporary changes ko save karne ke liye** use hoti hai jab tum ready nahi ho commit karne ke liye, lekin branch switch karni hai ya pull karna hai.

---

# 🌐 Git Stash — Complete Notes

---

## 1️⃣ What is `git stash`?

* Temporarily **save your uncommitted changes**
* Working directory ko **clean state** me le aata hai
* Changes ko commit kiye bina **branch switch / pull / merge** possible

---

## 2️⃣ Basic Usage

### 2a. Stash Changes

```bash
git stash
```

* Stages + working directory ke **modified & staged changes** ko temporarily store karta hai
* Working directory **clean ho jati hai**

💡 Output example:

```
Saved working directory and index state WIP on main: 123abc Commit message
```

---

### 2b. View Stashed Changes

```bash
git stash list
```

* Shows all stashes

Example:

```
stash@{0}: WIP on main: 123abc Commit message
stash@{1}: WIP on kahaf: 456def Another message
```

---

### 2c. Apply a Stash

```bash
git stash apply
```

* Applies **latest stash** without removing it from stash list

```bash
git stash apply stash@{1}
```

* Apply a **specific stash**

---

### 2d. Pop a Stash

```bash
git stash pop
```

* Applies latest stash **and removes it** from stash list
* Useful when you want to restore changes and **clean stash**

---

### 2e. Drop a Stash

```bash
git stash drop stash@{0}
```

* Deletes a specific stash
* Clean up unnecessary stashes

---

### 2f. Clear All Stashes

```bash
git stash clear
```

* Removes **all stashed changes**

---

## 3️⃣ Stash Untracked / New Files

By default, `git stash` **only stashes tracked files**.

* Include **new files**:

```bash
git stash -u
# or
git stash --include-untracked
```

* Include **ignored files**:

```bash
git stash -a
# or
git stash --all
```

---

## 4️⃣ Use Cases

1. **Switch branches safely** without committing:

```bash
git stash
git switch kahaf
# Do some work
git switch main
git stash pop
```

2. **Pull latest changes** without losing local edits:

```bash
git stash
git pull origin main
git stash pop
```

3. **Temporary experiments**:

* Test some code, if fail → drop stash
* If success → apply/pop stash

---

## 5️⃣ Notes / Tips

* Stash is **local only**, GitHub pe push nahi hoti
* Multiple stashes → use **stash list** + **stash apply/pop**
* Always check **`git status`** before stash → know what will be saved

---

## 6️⃣ Quick Commands Cheat Sheet

```bash
# Stash changes
git stash

# Stash including new untracked files
git stash -u

# View all stashes
git stash list

# Apply latest stash without removing
git stash apply

# Apply and remove stash
git stash pop

# Drop a specific stash
git stash drop stash@{0}

# Clear all stashes
git stash clear
```

---

Kafi 💪
Agar chaho, mai tumhare liye **Git Stash + Restore + Revert + Reset + Diff cheat sheet** bana doon, jisme **har situation ke liye exact command ready ho**, taki practice aur interview dono me kaam aaye.

Chahoge mai wo bana doon?
