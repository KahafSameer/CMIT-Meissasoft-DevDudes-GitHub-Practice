# CMIT Meissasoft DevDudes: GitHub Practice

Team practice repository for Git and GitHub workflows, with notes for each topic and GitHub Actions email notifications.

## Notes

| File | Topic |
|---|---|
| `Create-Switch-Merge-&-Delete-Branches.md` | Branching |
| `git-clone.md`, `git-fetch-pull.md` | Clone, fetch and pull |
| `git-diff.md`, `git-stash.md` | Diff and stash |
| `git-amend-edit-commit-md`, `amend.txt` | Amending commits |
| `cherry1.md`, `cheery2.md`, `cheery3.md` | Cherry-pick |
| `skip-git-staged-area-git-add-command-skip.md` | Committing without staging |
| `collaborator.md` | Working with collaborators |
| `github-actions.md` | GitHub Actions |
| `deploy-static-site-on-github.md` | Deploying a static site to GitHub Pages |

`index.html` / `script.js` / `styles.css` and `my-website/` are sample sites used in the exercises.

## GitHub Actions

| Workflow | Trigger | Action |
|---|---|---|
| `.github/workflows/pr-email.yml` | Pull request | Sends an email (`dawidd6/action-send-mail`) |
| `.github/workflows/push-email.yml` | Push | Sends an email (`dawidd6/action-send-mail`) |

Required repository secrets: `MAIL_SERVER`, `MAIL_PORT`, `MAIL_USERNAME`, `MAIL_PASSWORD`, `MAIL_TO`.
