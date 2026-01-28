;; SPDX-License-Identifier: PMPL-1.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell <jonathan.jewell@open.ac.uk>
;; META.scm - Architecture decisions and development practices

(meta
  (version "1.0.0")
  (schema-version "1.0")
  (project "nuj-lcb-production")
  (created "2026-01-28")
  (updated "2026-01-28"))

(architecture-decisions
  (adr-001
    (status "accepted")
    (date "2026-01-28")
    (context "Need production WordPress site for NUJ London Central Branch")
    (decision "Use standard Docker WordPress stack, no experimental tech")
    (consequences
      "Proven reliability over cutting-edge features"
      "Easy to maintain and debug"
      "No dependency on incomplete projects (Vörðr, Cerro Torre, Svalinn)"
      "Can deploy within days, not months"))

  (adr-002
    (status "accepted")
    (date "2026-01-28")
    (context "Theme selection for union branch website")
    (decision "Use Newspaperup theme (same as nuj-prc.org.uk)")
    (consequences
      "Proven theme for union/news sites"
      "Professional appearance"
      "No custom theme maintenance burden"
      "Easy for non-technical editors"))

  (adr-003
    (status "accepted")
    (date "2026-01-28")
    (context "Separation of production vs experimental work")
    (decision "Keep production completely separate from research projects")
    (consequences
      "Job security not dependent on experimental tech"
      "Clear boundary between work requirement and research interest"
      "Production failures are easy to debug (standard stack)"
      "Research can proceed without production risk")))

(development-practices
  (code-style
    "Standard WordPress PHP conventions"
    "Docker Compose for orchestration"
    "Environment variables for secrets (.env)")

  (security
    "HTTPS only in production"
    "Strong passwords required"
    "Regular WordPress/plugin updates"
    "Secrets never committed to git"
    "SSL via Let's Encrypt")

  (testing
    "Manual testing in local Docker environment"
    "Test WordPress updates locally before production"
    "Database backups before any changes")

  (versioning
    "Git for version control"
    "Main branch is deployable"
    "No complex branching strategy (keep simple)")

  (documentation
    "DEPLOYMENT.md for step-by-step setup"
    "README.md for quick overview"
    "Comments only where necessary (prefer self-documenting)")

  (branching
    "main branch only (no develop/feature branches)"
    "Commit directly for simple changes"
    "Test locally before pushing"))

(design-rationale
  (why-standard-wordpress
    "WordPress is proven, documented, and has massive community support"
    "Union branch sites don't need experimental container orchestration"
    "Standard stack = faster deployment = job secure")

  (why-no-experimental-tech
    "Vörðr is 70% complete with Ada stubs"
    "Cerro Torre is 0% complete (specs only)"
    "Svalinn is not verified to exist/work"
    "Production site is job requirement, not research project"
    "Experimental work happens in separate repos")

  (why-separate-from-lcb-website
    "lcb-website is experimental testbed"
    "nuj-lcb-production is the actual deployable site"
    "Clear names prevent confusion"
    "Research won't break production")

  (why-newspaperup-theme
    "Already proven on nuj-prc.org.uk"
    "Professional appearance suitable for unions"
    "No custom theme maintenance"
    "Focus on content, not design"))
