Perfect Kafi 😎
ab hum **Branches** ko **proper practical style** me cover karte hain: **Create, Switch, Merge & Delete** — exactly GitHub workflow jaisa.

---

# 🌿 Git Branches – Complete Practice Guide

## Branch kya hoti hai? (1 line)

Branch ek **parallel line of work** hoti hai jahan tum safely feature ya bug fix bana sakte ho **main branch ko touch kiye baghair**.
👉 simple words me: *experiment ka safe area*.

---

## 1️⃣ Branch Create karna

### New branch create (but switch nahi hota)

```bash
git branch feature-login
```

Check:

```bash
git branch
```

`*` jis branch ke sath ho wo current branch hoti hai.

---

## 2️⃣ Branch Switch karna

### Old way

```bash
git checkout feature-login
```

### New & recommended

```bash
git switch feature-login
```

👉 Ab tum `feature-login` branch pe ho.

---

## 3️⃣ Create + Switch (One Command)

```bash
git switch -c feature-profile
```

* Branch create
* Us pe switch
  sab ek sath 👍

---

## 4️⃣ Branch pe kaam karna (Practice)

```bash
echo "Login feature code" > login.txt
git add login.txt
git commit -m "Add login feature"
```

Check log:

```bash
git log --oneline --decorate
```

---

## 5️⃣ Branch Merge karna

### Step 1: Main branch pe wapas jao

```bash
git switch main
```

### Step 2: Feature branch merge karo

```bash
git merge feature-login
```

### Possible Results:

### ✅ Fast-forward merge

Jab main me koi new commit nahi hota.

### 🔀 Merge commit

Jab dono branches me alag-alag commits hote hain.

---

## 6️⃣ Merge Conflict (Short idea)

Conflict tab aata hai jab:

* same file
* same lines
* different branches

Git bolega:

```text
CONFLICT (content): Merge conflict in file.txt
```

Tum:

1. File open karo
2. Conflict markers resolve karo
3. `git add file.txt`
4. `git commit`

👉 conflict **normal cheez hai**, ghabrana nahi 😄

---

## 7️⃣ Branch Delete karna

### Local branch delete

```bash
git branch -d feature-login
```

### Force delete (agar merge nahi hui)

```bash
git branch -D feature-login
```

---

## 8️⃣ Remote (GitHub) Branch Delete

```bash
git push origin --delete feature-login
```

---

## 9️⃣ Real GitHub Workflow (Industry Style)

```text
main
 ├── feature-login
 ├── feature-profile
 └── bugfix-auth
```

Steps:

1. `git switch -c feature-x`
2. Code + commits
3. Push branch
4. Pull Request (GitHub)
5. Merge to main
6. Delete branch ✅

---

## 🔑 Important Commands Cheat Sheet

| Task                 | Command                         |
| -------------------- | ------------------------------- |
| List branches        | `git branch`                    |
| Create branch        | `git branch name`               |
| Switch branch        | `git switch name`               |
| Create + switch      | `git switch -c name`            |
| Merge branch         | `git merge name`                |
| Delete local branch  | `git branch -d name`            |
| Force delete         | `git branch -D name`            |
| Delete remote branch | `git push origin --delete name` |

---

## 🧠 Pro Tips

* Hamesha **merge se pehle `git status`** check karo
* Merge hamesha **target branch (usually main)** pe hoti hai
* Feature branches ko **short-lived** rakho
* Merge ke baad branch delete kar dena clean practice hai

---

Agar chaho next step me hum:
👉 **Merge conflicts ki full practice**
👉 **Rebase vs Merge (interview favorite)**
👉 **GitHub Pull Request workflow (step-by-step)**

Bas batao next kya karein 👊
s