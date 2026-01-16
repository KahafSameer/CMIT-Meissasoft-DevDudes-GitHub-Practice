Perfect 👍 Kafi
Neeche mai tumhe **Create, Switch, Merge & Delete Branches** ke **proper, exam + GitHub + practical friendly DETAIL NOTES** de raha hoon.
Ye notes tum **direct GitHub README / exam / interview** ke liye use kar sakte ho.

---

# 🌿 Git Branches

## Create, Switch, Merge & Delete — Detailed Notes

---

## 1️⃣ What is a Branch?

A **Git branch** is a **pointer to a commit** that allows developers to work on features, bug fixes, or experiments **independently** from the main codebase.

📌 Branch code ki copy nahi hoti
📌 Branch sirf commit ko point karti hai
📌 Default branch usually `main` hoti hai

### Why branches are used?

* Parallel development
* Safe experimentation
* Team collaboration
* Clean production code

---

## 2️⃣ Create Branch

### Command:

```bash
git branch branch-name
```

### Example:

```bash
git branch feature-login
```

### What happens internally?

* Git ek new pointer create karta hai
* Current commit ko point karta hai
* Working directory change **nahi hoti**

Check branches:

```bash
git branch
```

---

## 3️⃣ Switch Branch

### Old method:

```bash
git checkout branch-name
```

### New & recommended method:

```bash
git switch branch-name
```

### Example:

```bash
git switch feature-login
```

### Internally:

* `HEAD` pointer new branch pe chala jata hai
* Working directory us branch ke commits ke mutabiq update hoti hai

---

## 4️⃣ Create & Switch Branch (One Command)

### Command:

```bash
git switch -c branch-name
```

### Example:

```bash
git switch -c feature-payment
```

📌 Industry me sab se zyada use hone wali command

---

## 5️⃣ Working on a Branch

```bash
git switch -c feature-login
echo "Login code" > login.txt
git add login.txt
git commit -m "Add login feature"
```

State:

```
main ──► C1
feature-login ──► C2
```

Main branch safe rehti hai 👍

---

## 6️⃣ Merge Branch

### Merge ka meaning:

> Do branches ki history ko combine karna

### Rule:

➡️ Hamesha **target branch** pe jaa kar merge hota hai

---

## 🔹 Type 1: Fast-Forward Merge

### Condition:

* Target branch me koi new commit nahi hota
* Feature branch aage hoti hai

### Command:

```bash
git switch main
git merge feature-login
```

### Result:

* Koi new commit nahi banta
* Main branch pointer aage move ho jata hai

---

## 🔹 Type 2: Merge Commit (Three-Way Merge)

### Condition:

* Dono branches me different commits hotay hain

### Result:

* Git ek **new merge commit** banata hai
* Ye batata hai ke branches merged hain

```text
C1 ──► C2 ──► C5 (merge commit)
       └──► C3 ─► C4
```

---

## 7️⃣ Merge Conflict

### When conflict occurs?

* Same file
* Same lines
* Different changes

### Conflict markers:

```text
<<<<<<< HEAD
code from main
=======
code from feature
>>>>>>> feature
```

### How to resolve?

1. File open karo
2. Correct code choose karo
3. Markers remove karo
4. Save file
5. Run:

```bash
git add file.txt
git commit
```

---

## 8️⃣ Delete Branch

### Delete local branch:

```bash
git branch -d branch-name
```

📌 Git delete se pehle check karta hai ke branch merge hui hai ya nahi

---

### Force delete (dangerous):

```bash
git branch -D branch-name
```

Use only when:

* Branch merge nahi hui
* Lekin tum sure ho ke data nahi chahiye

---

## 9️⃣ Delete Remote Branch (GitHub)

```bash
git push origin --delete branch-name
```

---

## 🔁 Real GitHub Workflow

1. Create feature branch
2. Code + commits
3. Push branch
4. Create Pull Request
5. Merge to `main`
6. Delete branch

---

## 🔑 Important Commands Summary

| Task                 | Command                         |
| -------------------- | ------------------------------- |
| List branches        | `git branch`                    |
| Create branch        | `git branch name`               |
| Switch branch        | `git switch name`               |
| Create & switch      | `git switch -c name`            |
| Merge branch         | `git merge name`                |
| Delete local branch  | `git branch -d name`            |
| Force delete         | `git branch -D name`            |
| Delete remote branch | `git push origin --delete name` |

---

## 🧠 Best Practices

* `main` pe direct kaam na karo
* Har feature ke liye new branch banao
* Merge ke baad branch delete karo
* Merge se pehle `git status` check karo
* Conflicts se daro mat 😄

---

## 🏁 One-Line Interview Answer

> "Git branches allow parallel development by creating independent lines of work which can later be merged into the main branch safely."

---

Agar chaho to mai:
✅ **Isko GitHub README format** me
✅ **PDF / notes style**
✅ **Diagram ke sath**
bhi bana deta hoon.

Bas batao next kya step rakhein Kafi 👊
