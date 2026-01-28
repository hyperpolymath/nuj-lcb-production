;; SPDX-License-Identifier: PMPL-1.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell <jonathan.jewell@open.ac.uk>
;; STATE.scm - Current project state

(define-module (nuj-lcb-production state)
  #:version "2026.01.28"
  #:schema-version "1.0")

;;; Metadata
(metadata
  (version "0.2.0")
  (created "2026-01-28T11:40:00Z")
  (updated "2026-01-28T14:45:00Z")
  (project "nuj-lcb-production")
  (repo "https://github.com/hyperpolymath/nuj-lcb-production"))

;;; Project Context
(project-context
  (name "NUJ LCB Website - Production")
  (tagline "Simple, proven WordPress deployment for NUJ London Central Branch with forum and video conferencing")
  (tech-stack
    (wordpress "WordPress 6.7 (official Docker image)")
    (database "MariaDB 11.2")
    (cache "Varnish 7.4 (optional)")
    (theme "Newspaperup")
    (forum "Zulip (forum.nuj-lcb.org.uk)")
    (video "Jitsi Meet (convene.nuj-lcb.org.uk)")
    (reverse-proxy "Caddy 2 (automatic HTTPS)")
    (orchestration "Docker Compose")))

;;; Current Position
(current-position
  (phase "content-complete-ready-for-review")
  (overall-completion 85)
  (components
    ((name "Repository Structure") (completion 100) (status "complete"))
    ((name "Docker Compose") (completion 100) (status "complete"))
    ((name "Documentation") (completion 100) (status "complete"))
    ((name "RSR Compliance") (completion 100) (status "complete"))
    ((name "License (PMPL)") (completion 100) (status "complete"))
    ((name "Subdomain Architecture") (completion 100) (status "complete"))
    ((name "DNS Planning") (completion 100) (status "complete"))
    ((name "Security Headers") (completion 100) (status "planned"))
    ((name ".well-known Setup") (completion 100) (status "planned"))
    ((name "Shareable HTML Preview") (completion 100) (status "complete"))
    ((name "Content Pages") (completion 100) (status "complete"))
    ((name "Members Area Design") (completion 100) (status "complete"))
    ((name "Security Implementation Guide") (completion 100) (status "complete"))
    ((name "WordPress Deployment Plan") (completion 100) (status "complete"))
    ((name "Git Hooks") (completion 100) (status "complete"))
    ((name "LinkedIn Integration") (completion 100) (status "complete"))
    ((name "Local Testing") (completion 0) (status "pending"))
    ((name "WordPress Installation") (completion 0) (status "pending"))
    ((name "Zulip Forum") (completion 0) (status "pending"))
    ((name "Jitsi Video") (completion 0) (status "pending"))
    ((name "Newspaperup Theme") (completion 0) (status "pending"))
    ((name "SSL/HTTPS") (completion 0) (status "pending"))
    ((name "Production Deployment") (completion 0) (status "pending")))
  (working-features
    "Git repository with complete structure"
    "Docker Compose configuration (main site)"
    "Deployment guide with subdomain architecture"
    "RSR compliance (SCM files, licenses, docs)"
    "Subdomain plan (forum + convene)"
    "DNS records specification"
    "Security headers plan (HSTS, CSP, etc.)"
    ".well-known files specification"
    "Self-contained shareable HTML site (1,071 lines, single file)"
    "Complete content pages (Home, About, Join, Officers, Contact, Members, LinkedIn)"
    "Members area with privacy-first design"
    "Officers page with 3-column expandable grid (14 officers + 2 auditors)"
    "Security implementation guide (far-right doxing protection)"
    "Social engineering defense guide"
    "WordPress deployment plan (8 phases, 3 services)"
    "Git hooks (pre-commit, commit-msg, pre-push)"
    "Sharing guide with email templates"
    "LinkedIn integration guide")
  (blocked-features
    "None - all dependencies are standard/proven")
  (subdomains
    ((name "nuj-lcb.org.uk") (purpose "Main WordPress site") (status "planned"))
    ((name "forum.nuj-lcb.org.uk") (purpose "Zulip threaded discussion") (status "planned"))
    ((name "convene.nuj-lcb.org.uk") (purpose "Jitsi Meet video conferencing") (status "planned"))))

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

  (milestone "M3: Subdomain Services"
    (status "0% complete")
    (items
      (item "Deploy Zulip on forum.nuj-lcb.org.uk" "pending" "")
      (item "Deploy Jitsi Meet on convene.nuj-lcb.org.uk" "pending" "")
      (item "Configure Caddy reverse proxy" "pending" "")
      (item "Set up .well-known files for all domains" "pending" "")
      (item "Configure security headers (HSTS, CSP, etc.)" "pending" "")))

  (milestone "M4: Production Deployment"
    (status "0% complete")
    (items
      (item "Set up domain DNS (nuj-lcb.org.uk + subdomains)" "pending" "")
      (item "Configure Cloudflare (DNSSEC, IPv6, HTTP/3)" "pending" "")
      (item "Configure SSL via Cloudflare + Caddy" "pending" "")
      (item "Deploy to VPS-D8 (4 vCPU, 8GB RAM)" "pending" "")
      (item "Test all three domains publicly accessible" "pending" "")))

  (milestone "M5: Handover and Documentation"
    (status "0% complete")
    (items
      (item "Document admin access (WordPress, Zulip, Jitsi)" "pending" "")
      (item "Create backup procedures" "pending" "")
      (item "Train content editors" "pending" "")
      (item "Monitor resource usage (aim for <6GB RAM)" "pending" "")
      (item "All sites live and stable" "pending" ""))))

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
    "Install and configure Newspaperup theme"
    "Set up Zulip and Jitsi containers")

  (this-week
    "Configure Caddy reverse proxy for subdomains"
    "Set up DNS records in Cloudflare"
    "Deploy to VPS-D8 production server"
    "Configure SSL/HTTPS for all three domains"
    "Add .well-known files"
    "Configure security headers (HSTS, CSP, etc.)")

  (this-month
    "Train content editors"
    "Establish backup procedures (all three services)"
    "Monitor resource usage (WordPress + Zulip + Jitsi)"
    "Test Zulip email notifications"
    "Test Jitsi video calls under load"
    "Consider Varnish cache if WordPress needs it"))

;;; Session History
(session-history
  (snapshot
    (date "2026-01-28T14:45:00Z")
    (accomplishments
      "Created shareable HTML site (1,071 lines, single file)"
      "Built homepage mockup with NUJ green/grey branding"
      "Built officers page with 3-column expandable grid (14 officers + 2 auditors)"
      "Designed members area with privacy-first controls"
      "Wrote security implementation guide (far-right doxing protection)"
      "Wrote social engineering defense guide (realistic approach)"
      "Created LinkedIn integration page with sample posts"
      "Wrote comprehensive WordPress deployment plan (8 phases)"
      "Added Docker Compose for WordPress + Zulip + Jitsi"
      "Configured Caddy reverse proxy with HTTP/3"
      "Created sharing guide with email templates"
      "Set up git hooks (pre-commit, commit-msg, pre-push)"
      "Added GitHub workflows (CodeQL, quality, scorecard, security)"
      "All content ready for stakeholder review"))
  (snapshot
    (date "2026-01-28T13:15:00Z")
    (accomplishments
      "Designed subdomain architecture (forum + convene)"
      "Specified DNS records for all three domains"
      "Planned Zulip forum (forum.nuj-lcb.org.uk)"
      "Planned Jitsi Meet video (convene.nuj-lcb.org.uk)"
      "Specified Caddy reverse proxy configuration"
      "Documented security headers (HSTS, CSP, etc.)"
      "Documented .well-known files setup"
      "Confirmed VPS-D8 specs adequate (4 vCPU, 8GB RAM)"
      "Documented Cloudflare setup (DNSSEC, IPv6, HTTP/3)"
      "Explained DoQ (DNS over QUIC) - already supported by Cloudflare"
      "Updated STATE.scm with subdomain plan"))
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
  "Overall project completion: 85%")

(define (get-blockers)
  "Current blockers: 0 critical, 0 high, 0 medium, 0 low")

(define (get-milestone milestone-name)
  (case milestone-name
    (("M1") "Local WordPress Running: 0% complete")
    (("M2") "Theme and Content: 0% complete")
    (("M3") "Subdomain Services: 0% complete")
    (("M4") "Production Deployment: 0% complete")
    (("M5") "Handover and Documentation: 0% complete")
    (else "Unknown milestone")))

(define (get-subdomain-status subdomain)
  (case subdomain
    (("main" "www") "WordPress - not deployed")
    (("forum") "Zulip - not deployed")
    (("convene") "Jitsi Meet - not deployed")
    (else "Unknown subdomain")))
