Perfect Kafi 😎, ab hum **Git: Compare Two Branches** ke detailed notes banayenge. Ye bohot useful hai jab tum dekhna chahte ho ki do branches me kya differences hain before merge, cherry-pick, ya rebase.

---

# **Git: Compare Two Branches Notes**

---

### **1. Purpose**

* Compare karte hain: **dono branches ke commits aur changes**.
* Useful for:

  * Code review
  * Conflict check before merge
  * Understanding feature progress

---

### **2. Basic Syntax**

```bash
git diff <branch1> <branch2>
```

* Ye dikhata hai **file changes** jo branch2 me hai aur branch1 me nahi.
* Example:

```bash
git diff main feature
```

* Output: Differences between `main` and `feature` branch.

---

### **3. Compare Commits Only**

* Sirf **commits list dekhni ho**:

```bash
git log <branch1>..<branch2>
```

* Example:

```bash
git log main..feature
```

* Matlab: **feature branch me woh commits jo main me nahi hain**.

* Agar dono branches ke commits ek saath dekhne hain:

```bash
git log --oneline --graph --decorate --all
```

* Ye visual graph show karega branch history ka.

---

### **4. Compare Files & Changes**

* Differences in files only:

```bash
git diff --name-only main feature
```

* Output: File names jo different hain.

* Differences with details:

```bash
git diff main feature
```

* Output: Actual lines changed, removed, added.

---

### **5. Compare Branches Using GitHub**

* GitHub UI me:

  1. Repository me jao
  2. Click **Compare**
  3. Choose **base branch** (e.g., main) and **compare branch** (e.g., feature)
  4. View commits and file changes

* Advantages:

  * Easy visualization
  * PR create karne se pehle review

---

### **6. Check Differences Without Switching Branch**

* Agar current branch me ho aur compare karna ho:

```bash
git fetch origin
git diff HEAD origin/main
```

* Ye current branch aur remote main branch ka difference batayega.

---

### **7. Key Notes**

* `branch1..branch2` → jo commits **branch2 me hain aur branch1 me nahi**
* `branch1...branch2` → jo commits **sirf ek branch me hai** (symmetric difference)
* `git diff` → file level changes
* `git log` → commit level differences

---

### **8. Optional: Graphical Comparison**

* For better visualization:

```bash
git log --graph --oneline --all --decorate
```

* Shows:

  * Branch structure
  * Merges
  * Commits in each branch

---

Agar chaho, mai Kafi ab **full Git workflow cheat sheet** bana doon jisme:

* Cherry-Pick
* Squash & Merge
* Rebase
* Merge
* Compare Two Branches

**sab ek hi page me visual diagrams + commands ke saath ho**, taake ekdum easy revision ke liye ready ho jaye.

Kya mai wo bana doon?
