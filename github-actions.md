Perfect Kafi 😎 — ab tumhare liye mai **GitHub Actions ke complete, detailed notes** ready kar deta hoon. Ye notes **beginner → pro** level ke liye hain aur tumhare GitHub workflow aur CI/CD practice ke liye **copy-paste ready** honge.

Mai isko sections me divide kar raha hoon jisse easily revise kar sako.

---

# 📌 GitHub Actions Complete Notes

---

## 1️⃣ What is GitHub Actions?

* GitHub Actions = **CI/CD + Automation platform** inside GitHub
* Automate:

  * Build
  * Test
  * Deploy
  * Notifications
* Triggered by **events**: push, pull_request, schedule, manual, etc.

---

## 2️⃣ Workflow Basics

* Workflow = **.yml file** inside `.github/workflows/`
* Basic Structure:

```yaml
name: Workflow Name
on: [push, pull_request] # triggers
jobs:
  job_name:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - run: echo "Hello World"
```

### Notes:

* Multiple jobs = parallel by default
* Steps execute sequentially inside a job

---

## 3️⃣ Events (Triggers)

| Event             | Use Case                  |
| ----------------- | ------------------------- |
| push              | Code pushed to branch     |
| pull_request      | PR opened/closed          |
| schedule          | Cron jobs (daily, weekly) |
| workflow_dispatch | Manual trigger            |
| release           | Release created/tagged    |

---

## 4️⃣ Jobs & Steps

* **Jobs** = independent units, can run in parallel
* **Steps** = sequence of commands inside job

Example:

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Install deps
        run: npm ci
      - name: Build
        run: npm run build
```

---

## 5️⃣ Actions Marketplace

* Use pre-built actions for:

  * Node setup → `actions/setup-node`
  * Docker → `docker/build-push-action`
  * Email → `dawidd6/action-send-mail`
  * Slack → `slackapi/slack-github-action`
* Benefits:

  * Saves time
  * Industry-standard practices

---

## 6️⃣ Secrets & Environment Variables

* **Secrets** → for sensitive info (tokens, passwords)

  * Repo → Settings → Secrets → Actions
* **Access in workflow**:

```yaml
env:
  MY_VAR: ${{ secrets.MY_SECRET }}
```

* GitHub automatically **hides secrets** in logs

---

## 7️⃣ Artifacts & Caching

* **Artifacts** = store build output for later use

```yaml
- uses: actions/upload-artifact@v4
  with:
    name: build-output
    path: .next
```

* **Caching** = speed up dependencies/build

```yaml
- uses: actions/cache@v4
  with:
    path: |
      ~/.npm
      .next/cache
    key: ${{ runner.os }}-nextjs-${{ hashFiles('**/package-lock.json') }}
```

---

## 8️⃣ Job Concurrency

* Control **multiple workflow runs**
* Prevent duplicate builds/deploys

```yaml
concurrency:
  group: ${{ github.workflow }}-${{ github.ref }}
  cancel-in-progress: true
```

* Only **latest run** executes per group

---

## 9️⃣ Scheduling Actions (Cron Jobs)

```yaml
on:
  schedule:
    - cron: "0 9 * * *" # daily 9AM UTC
  workflow_dispatch: # manual trigger
```

* Format: `minute hour day month day-of-week` (UTC)
* Use cases: backups, reports, nightly builds

---

## 🔟 Disabling Actions

* UI: Actions → workflow → Disable workflow
* Workflow file: remove triggers or use `on: []`
* Repo Settings: Actions → disable all

---

## 1️⃣1️⃣ PR / Push Notifications (Email Example)

```yaml
- uses: dawidd6/action-send-mail@v3
  with:
    server_address: ${{ secrets.MAIL_SERVER }}
    username: ${{ secrets.MAIL_USERNAME }}
    password: ${{ secrets.MAIL_PASSWORD }}
    to: ${{ secrets.MAIL_TO }}
    subject: "New Push"
    body: |
      Repo: ${{ github.repository }}
      Branch: ${{ github.ref_name }}
      Pushed by: ${{ github.actor }}
```

* Can trigger on:

  * push
  * pull_request
  * release

---

## 1️⃣2️⃣ Testing / Debugging

* Use `workflow_dispatch` to **manually trigger** workflow
* Logs visible in **Actions tab**
* Step names → easy debugging

---

## 1️⃣3️⃣ Best Practices

* Split **build / test / deploy** in separate jobs
* Use **cache for dependencies**
* Use **artifacts for build output**
* Use **concurrency** for deploys
* Use **secrets** for credentials
* Use **workflow_dispatch** for testing

---

## 1️⃣4️⃣ Example: Complete Next.js CI/CD Workflow

```yaml
name: Next.js CI/CD

on:
  push:
    branches: [main]
  workflow_dispatch:

concurrency:
  group: nextjs-${{ github.ref }}
  cancel-in-progress: true

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: 18
      - uses: actions/cache@v4
        with:
          path: |
            ~/.npm
            .next/cache
          key: ${{ runner.os }}-nextjs-${{ hashFiles('**/package-lock.json') }}
      - run: npm ci
      - run: npm run build
      - uses: actions/upload-artifact@v4
        with:
          name: nextjs-build
          path: .next
  deploy:
    runs-on: ubuntu-latest
    needs: build
    steps:
      - uses: actions/download-artifact@v4
        with:
          name: nextjs-build
      - run: echo "Deploy step here"
```

---

## 🔹 Summary Table (Quick Reference)

| Topic        | Key Points                                      |
| ------------ | ----------------------------------------------- |
| Workflow     | `.yml` file in `.github/workflows`              |
| Triggers     | push, pull_request, schedule, workflow_dispatch |
| Jobs & Steps | Jobs = parallel, Steps = sequential             |
| Secrets      | Use `${{ secrets.NAME }}`                       |
| Cache        | Speed up dependencies/build                     |
| Artifacts    | Store build outputs                             |
| Concurrency  | Prevent duplicate workflow runs                 |
| Scheduling   | Cron jobs, UTC time                             |
| Disable      | UI / on: [] / repo settings                     |
| Marketplace  | Pre-built actions for common tasks              |

---

💡 **Pro Tip Kafi**:

* Combine: **Cache + Artifacts + Concurrency + Schedule + Email notifications** → Industry-grade CI/CD workflow ready
* Ye workflow tumhare Next.js / React / Node projects me **full automation** dega

---

Agar chaho mai tumhare liye **“GitHub Actions Cheat Sheet PDF”** bhi bana doon:

* One-page reference
* Commands, triggers, workflows, caching, artifacts
* Copy-paste ready

Tum chahoge mai wo bana doon?
hi! im checking cheery pic