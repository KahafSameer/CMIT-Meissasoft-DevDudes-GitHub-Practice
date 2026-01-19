Perfect Kafi 😎 ab hum **Git: Rebase Current Branch** ke notes banate hain. Ye concept **history clean karne aur branch ko update rakhne** me bohot useful hai.

---

# **Git: Rebase Current Branch Notes**

### **1. Rebase kya hai?**

* `git rebase` ka matlab hai: **current branch ke commits ko ek nayi base (usually main branch) ke upar shift karna**.
* Basically: branch ko update karna without creating a merge commit.
* Compare karo **merge vs rebase**:

  * Merge → new commit create hota hai.
  * Rebase → history linear aur clean rehti hai.

---

### **2. Current Branch Rebase Karna**

* Scenario: Tum `feature` branch me ho aur `main` branch updated hai.
* Steps:

```bash
# 1. Main branch update karo
git checkout main
git pull origin main

# 2. Feature branch me jao
git checkout feature

# 3. Feature branch ko main ke upar rebase karo
git rebase main
```

* Isse kya hoga:

  * `feature` branch ke commits ab **latest main branch ke upar** honge.
  * History clean aur linear ho jayegi.

---

### **3. Conflicts Handle Karna**

* Agar conflict aaye:

```bash
error: could not apply <commit>
```

Steps:

1. Conflicted files edit karo.
2. Changes stage karo:

```bash
git add <file>
```

3. Continue rebase:

```bash
git rebase --continue
```

4. Agar abort karna ho:

```bash
git rebase --abort
```

---

### **4. Interactive Rebase (Optional)**

* Commits ko reorder, edit, squash karne ke liye:

```bash
git rebase -i main
```

* Editor me options:

  * `pick` → keep commit
  * `squash` → merge commit with previous
  * `edit` → modify commit message or content

---

### **5. Important Notes**

* Rebase **only local commits ke liye safe** hai.
* Agar branch already push ho chuki hai aur team use kar rahi hai → careful, **force push** lagega:

```bash
git push --force
```

* Use rebase to:

  * **Clean history**
  * **Update feature branch** with latest main
  * Avoid unnecessary merge commits

---

Agar chaho Kafi, mai ek **cheat sheet bana doon jo: Cherry-Pick, Squash & Merge, Rebase** sab cover kare **ek hi page me**, taake yaad rakhna easy ho jaye.

Chahte ho mai wo bana doon?
