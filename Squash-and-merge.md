Ahh perfect, Kafi 😎 ab **GitHub ka “Squash and Merge”** ke notes bana dete hain. Ye `cherry-pick` ke baad thoda alag concept hai, lekin git history aur clean commits ke liye super important hai.

---

# **GitHub: Squash and Merge Notes**

### **1. Squash and Merge kya hai?**

* Jab multiple commits ko **ek single commit me combine karke main branch me merge karte hain**.
* Matlab: PR (Pull Request) me jitne bhi chote-chote commits hain, unko **ek clean commit** me convert kar dete hain.
* Benefit: **Repository ka history clean aur readable rehta hai**.

---

### **2. Example Scenario**

* Feature branch me commits:

```
commit 1: Added header
commit 2: Fixed header styling
commit 3: Added footer
commit 4: Fixed footer bug
```

* Agar **Squash and Merge** karoge:

```
commit: Implemented header and footer
```

* History me ab **sirf ek commit** dikhega instead of 4.

---

### **3. GitHub Workflow**

1. **Pull Request create karo** feature branch se main branch me.
2. **Review complete ho gaya** → ab merge karna hai.
3. Click **“Squash and Merge”** button.
4. Commit message edit karo (optional).
5. Confirm merge.

* Ye PR ke saare commits **ek single commit** me convert kar ke `main` me merge kar deta hai.

---

### **4. Local Git Commands (Optional)**

Agar GitHub ke bina local git me karna ho:

```bash
# 1. Feature branch me jao
git checkout feature

# 2. Interactive rebase karo (last 4 commits squash karne ke liye)
git rebase -i HEAD~4
```

* Editor open hoga:

```
pick abc123 Added header
pick def456 Fixed header styling
pick ghi789 Added footer
pick jkl012 Fixed footer bug
```

* “pick” ke jagah “squash” ya “s” likho jo commits merge karne hain:

```
pick abc123 Added header
s def456 Fixed header styling
s ghi789 Added footer
s jkl012 Fixed footer bug
```

* Save & exit → ek single commit ban jayega.

---

### **5. Important Notes**

* Use **Squash and Merge** when:

  * Choti features ya fixes hain.
  * Clean commit history chahiye.
* Avoid:

  * Jab original commits ki individual identity chahiye (e.g., multiple authors ka credit).

---

Agar chaho Kafi, mai **Cherry-Pick vs Squash and Merge** ka **ek simple comparison table bhi bana doon**, jisse ye dono commands aur workflow easily yaad rahe.

Chahte ho mai wo bana doon?
