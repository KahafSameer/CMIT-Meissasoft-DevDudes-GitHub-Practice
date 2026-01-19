Perfect Kafi 😎 ab **“Merge into Current Branch”** ke notes banate hain. Ye concept straightforward hai aur Git ka daily use me bohot common hai.

---

# **Git: Merge into Current Branch Notes**

### **1. Merge kya hai?**

* `git merge` ka matlab hai: **ek branch ke changes ko current branch me combine karna**.
* Ye **new commit create karta hai** agar conflicts nahi hain to fast-forward ho sakta hai.
* Difference with rebase:

  * **Merge → history me branch structure dikhta hai**
  * **Rebase → linear history hoti hai**

---

### **2. Current Branch me Merge Karna**

* Scenario: Tum `feature` branch me ho aur `main` branch ke changes ko apne branch me lana chahte ho.

Steps:

```bash
# 1. Current branch check karo
git branch
# suppose: feature branch is current

# 2. Main branch update karo (latest commits ke liye)
git fetch origin
git checkout main
git pull origin main

# 3. Feature branch me wapas jao
git checkout feature

# 4. Main branch ko feature branch me merge karo
git merge main
```

* Ab feature branch me **main branch ke latest commits aa gaye**.

---

### **3. Merge Conflicts Handle Karna**

* Agar conflict aaye:

```bash
Auto-merging file.txt
CONFLICT (content): Merge conflict in file.txt
```

Steps:

1. Conflicted file edit karo aur conflicts resolve karo.
2. Changes stage karo:

```bash
git add <file>
```

3. Merge complete karo:

```bash
git commit
```

* Agar merge cancel karna ho:

```bash
git merge --abort
```

---

### **4. Fast-Forward Merge**

* Agar current branch ke upar koi new commits nahi hain, git **fast-forward merge** karta hai:

```bash
git merge main
```

* History linear rehti hai, **extra merge commit nahi banta**.

---

### **5. Important Notes**

* Merge safe hai aur **shared branch me commonly use hota hai**.

* Use merge when:

  * Feature branch me main branch ke updates chahiye
  * Conflict handle karne me comfortable ho

* Difference with rebase:

  | Action | History                     | Safety for shared branches        |
  | ------ | --------------------------- | --------------------------------- |
  | Merge  | Branch structure dikhta hai | Safe                              |
  | Rebase | Linear history              | Careful, force push lag sakta hai |

---

Agar chaho Kafi, mai ab **Cherry-Pick, Squash & Merge, Rebase, Merge** ka **ek complete Git workflow cheat sheet** bana doon, with diagrams aur comparisons — ek hi page me sab clear ho jaye.

Chahte ho mai wo bana doon?
