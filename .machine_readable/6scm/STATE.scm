;; SPDX-License-Identifier: PMPL-1.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell <jonathan.jewell@open.ac.uk>
;; STATE.scm - Current project state

(define-module (nuj-lcb-production state)
  #:version "2026.01.28"
  #:schema-version "1.0")

;;; Metadata
(metadata
  (version "0.1.0")
  (created "2026-01-28T11:40:00Z")
  (updated "2026-01-28T11:40:00Z")
  (project "nuj-lcb-production")
  (repo "https://github.com/hyperpolymath/nuj-lcb-production"))

;;; Project Context
(project-context
  (name "NUJ LCB Website - Production")
  (tagline "Simple, proven WordPress deployment for NUJ London Central Branch")
  (tech-stack
    (wordpress "WordPress 6.7 (official Docker image)")
    (database "MariaDB 11.2")
    (cache "Varnish 7.4 (optional)")
    (theme "Newspaperup")
    (orchestration "Docker Compose")))

;;; Current Position
(current-position
  (phase "setup")
  (overall-completion 60)
  (components
    ((name "Repository Structure") (completion 100) (status "complete"))
    ((name "Docker Compose") (completion 100) (status "complete"))
    ((name "Documentation") (completion 100) (status "complete"))
    ((name "RSR Compliance") (completion 100) (status "complete"))
    ((name "License (PMPL)") (completion 100) (status "complete"))
    ((name "Local Testing") (completion 0) (status "pending"))
    ((name "WordPress Installation") (completion 0) (status "pending"))
    ((name "Newspaperup Theme") (completion 0) (status "pending"))
    ((name "SSL/HTTPS") (completion 0) (status "pending"))
    ((name "Production Deployment") (completion 0) (status "pending")))
  (working-features
    "Git repository with complete structure"
    "Docker Compose configuration"
    "Deployment guide"
    "RSR compliance (SCM files, licenses, docs)")
  (blocked-features
    "None - all dependencies are standard/proven"))

;;; Route to MVP
(route-to-mvp
  (milestone "M1: Local WordPress Running"
    (status "0% complete")
    (items
      (item "Copy .env.example to .env" "pending" "")
      (item "Generate strong passwords" "pending" "")
      (item "docker-compose up -d" "pending" "")
      (item "Complete WordPress installation wizard" "pending" "")))

  (milestone "M2: Theme and Content"
    (status "0% complete")
    (items
      (item "Install Newspaperup theme" "pending" "")
      (item "Configure theme colors (purple #461cfb)" "pending" "")
      (item "Upload NUJ LCB logo" "pending" "")
      (item "Create basic pages (About, Contact)" "pending" "")))

  (milestone "M3: Production Deployment"
    (status "0% complete")
    (items
      (item "Set up domain DNS (nuj-lcb.org.uk)" "pending" "")
      (item "Configure SSL via Let's Encrypt" "pending" "")
      (item "Deploy to production server" "pending" "")
      (item "Test site publicly accessible" "pending" "")))

  (milestone "M4: Handover and Documentation"
    (status "0% complete")
    (items
      (item "Document admin access" "pending" "")
      (item "Create backup procedures" "pending" "")
      (item "Train content editors" "pending" "")
      (item "Site live and stable" "pending" ""))))

;;; Blockers and Issues
(blockers-and-issues
  (critical ())
  (high ())
  (medium ())
  (low ()))

;;; Critical Next Actions
(critical-next-actions
  (immediate
    "Test docker-compose locally"
    "Install WordPress via web wizard"
    "Install and configure Newspaperup theme")

  (this-week
    "Deploy to production server"
    "Configure SSL/HTTPS"
    "Test site accessibility"
    "Create admin documentation")

  (this-month
    "Train content editors"
    "Establish backup procedures"
    "Monitor site stability"
    "Consider Varnish cache if needed"))

;;; Session History
(session-history
  (snapshot
    (date "2026-01-28T11:40:00Z")
    (accomplishments
      "Created nuj-lcb-production repository"
      "Added standard WordPress docker-compose.yml"
      "Wrote comprehensive DEPLOYMENT.md"
      "Added PMPL-1.0-or-later LICENSE"
      "Created RSR compliance structure (SCM files, docs)"
      "Documented what Gemini promised vs reality"
      "Established clean separation from experimental repos")))

;;; Helper Functions
(define (get-completion-percentage)
  "Overall project completion: 60%")

(define (get-blockers)
  "Current blockers: 0 critical, 0 high, 0 medium, 0 low")

(define (get-milestone milestone-name)
  (case milestone-name
    (("M1") "Local WordPress Running: 0% complete")
    (("M2") "Theme and Content: 0% complete")
    (("M3") "Production Deployment: 0% complete")
    (("M4") "Handover and Documentation: 0% complete")
    (else "Unknown milestone")))
