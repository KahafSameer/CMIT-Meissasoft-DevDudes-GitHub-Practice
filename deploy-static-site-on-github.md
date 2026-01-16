Perfect Kafi 💪 — mai tumhare liye **“Deploy a Static Website on GitHub Pages”** ke **complete detailed notes** bana deta hoon, step-by-step, beginner-friendly aur interview-ready. Ye notes tumhare **practice aur reference** dono ke liye kaam aayenge.

---

# 🌐 Deploy a Static Website on GitHub Pages — Notes

---

## 1️⃣ What is a Static Website?

* Static website = HTML, CSS, JS files only
* Server-side processing **not needed**
* Example: Portfolio, simple landing page, practice website

---

## 2️⃣ Why GitHub Pages?

* Free hosting for static websites
* No server or backend required
* Automatically deploy from repo

---

## 3️⃣ Folder / File Structure

Example:

```
my-website/
 ├─ index.html     ← homepage
 ├─ style.css      ← CSS
 └─ script.js      ← JS
```

* **index.html** is mandatory (homepage)
* All files should be relative paths

---

## 4️⃣ Step 1: Create GitHub Repository

1. Login to GitHub
2. Click **New Repository**
3. Name: `my-website` (example)
4. Public → required for free Pages
5. Initialize with README (optional)

---

## 5️⃣ Step 2: Clone Repository Locally

```bash
git clone https://github.com/<username>/my-website.git
cd my-website
```

* Repository ready in local folder

---

## 6️⃣ Step 3: Add Website Files

* Copy your HTML, CSS, JS files into cloned repo folder

---

## 7️⃣ Step 4: Stage and Commit Changes

```bash
git add .
git commit -m "Initial website upload"
```

* Adds all files to Git
* Commit saves the snapshot

---

## 8️⃣ Step 5: Push to GitHub

```bash
git push origin main
```

* Confirms local repo synced with GitHub

---

## 9️⃣ Step 6: Enable GitHub Pages

1. Open GitHub repo → **Settings → Pages**
2. Source: **Branch = main**, Folder = `/root`
3. Click Save

* GitHub deploy automatically
* 1–2 minutes later → website live

---

## 10️⃣ Step 7: Access Your Website

```
https://<username>.github.io/my-website/
```

* Example:

```
https://KahafSameer.github.io/my-website/
```

---

## 11️⃣ Step 8: Update Website Later

```bash
git add .
git commit -m "Update website"
git push origin main
```

* Changes automatically reflected

---

## 12️⃣ Optional: Deploy a Subfolder

* Repo root contains multiple folders
* To deploy only one folder (`my-website`), select **Folder** in GitHub Pages settings
* Or rename folder to `docs/` → easy deploy

---

## 13️⃣ Optional: Use a Branch Other Than Main

* Example: `kahaf` branch
* GitHub Pages settings → **Source = kahaf branch**
* Root HTML unaffected

---

## 14️⃣ Tips / Best Practices

* Always have **index.html** in root or folder selected
* Keep relative paths consistent for CSS / JS / images
* Use **default GitHub Pages URL** for free practice
* Custom domains require DNS configuration

---

## 15️⃣ Common Mistakes

| Mistake                | Fix                               |
| ---------------------- | --------------------------------- |
| Forget `index.html`    | Add homepage file                 |
| Wrong folder selected  | Use `/root` or `/docs`            |
| Using non-existent TLD | Stick to GitHub Pages default URL |
| Pushing without commit | `git add . && git commit` first   |

---

## 16️⃣ Quick Git Commands Cheat Sheet

```bash
# Clone repo
git clone <repo-url>
cd <repo-name>

# Add website files
git add .
git commit -m "Initial upload"

# Push to GitHub
git push origin main

# Update website
git add .
git commit -m "Update"
git push origin main
```

---

💡 **Pro Tip:**

* Practice ke liye **default GitHub Pages URL** use karo → no DNS, no paid domain needed
* Subfolder deploy ya branch deploy ke liye **Settings → Pages → select branch/folder**

---

Kafi 💪
Agar chaho, mai ye notes **Vite / React static deployment ke liye bhi ready-to-use add kar doon**, taki same workflow tum React/Vite projects me bhi use kaS