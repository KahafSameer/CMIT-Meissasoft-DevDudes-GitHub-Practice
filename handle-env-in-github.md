Perfect Kafi 😎, ab mai **GitHub me environment variables (env) set karne ka detailed notes** bana deta hoon. Ye bohot important hai for **CI/CD, Actions, Secrets, aur workflows**.

---

# **GitHub: Environment Variables / Secrets Notes**

---

### **1. Types of Environment Variables on GitHub**

1. **Repository Secrets / Variables**

   * Specific repository ke liye set hote hain.
   * Examples: `API_KEY`, `DB_PASSWORD`

2. **Organization Secrets / Variables**

   * Agar multiple repositories share kar rahe ho under org.

3. **Environment-specific Variables**

   * GitHub Actions me alag environment ke liye (e.g., `development`, `staging`, `production`)

---

### **2. Setting Environment Variables (Repository Level)**

1. Repository open karo → **Settings** tab

2. Left menu → **Secrets and Variables** → **Actions**

   * Two tabs:

     * **Secrets** → hidden, encrypted values
     * **Variables** → plain text, workflow me accessable

3. **Add New Repository Secret / Variable**

   * **Name**: Uppercase, e.g., `API_KEY`
   * **Value**: Actual value, e.g., `1234567890`
   * **Save**

---

### **3. Using Variables in GitHub Actions**

* `.github/workflows/your-workflow.yml` me use karte hain:

```yaml
name: CI Example

on:
  push:
    branches: [main]

jobs:
  build:
    runs-on: ubuntu-latest
    env:
      GREETING: "Hello World"   # Repository variable example
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      
      - name: Show Env
        run: echo "Greeting is $GREETING"

      - name: Use Secret
        run: echo "API key is ${{ secrets.API_KEY }}"
```

* **Important:**

  * `env:` → normal env variable
  * `secrets:` → encrypted secret, use `${{ secrets.NAME }}`

---

### **4. Environment-specific Secrets / Variables**

1. Settings → **Environments**
2. Add new environment, e.g., `staging`
3. Add secrets/variables per environment
4. GitHub Actions me:

```yaml
jobs:
  deploy:
    environment: staging
    runs-on: ubuntu-latest
    steps:
      - name: Deploy
        run: echo "Deploying with ${{ secrets.STAGING_KEY }}"
```

* **Benefit:** Different environments ke liye alag secrets securely store kar sakte ho.

---

### **5. Best Practices**

* Secret values ko **never commit karo** in code.
* Environment variables ka **naming convention uppercase with underscores** follow karo.
* Use **environment-specific secrets** for safe deployments.

---

Kafi, agar chaho mai tumhare liye **GitHub Secrets, Env Variables, Actions workflow me use ka ek diagram + cheat sheet** bana doon jisse sab ek nazar me yaad ho jaye.

Chahte ho mai wo bana doon?
