;; SPDX-License-Identifier: PMPL-1.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell <jonathan.jewell@open.ac.uk>
;; ECOSYSTEM.scm - Project position in ecosystem

(ecosystem
  (version "1.1.0")
  (name "nuj-lcb-production")
  (type "web-application")
  (purpose "Production WordPress website with forum and video conferencing for NUJ London Central Branch")

  (position-in-ecosystem
    "Deployable production site for union branch with three services"
    "Main site: WordPress for public content"
    "Forum subdomain: Zulip for member discussions"
    "Convene subdomain: Jitsi Meet for video meetings"
    "Intentionally separate from experimental container projects"
    "Uses proven WordPress/Zulip/Jitsi stack, not custom builds")

  (related-projects
    ((name "lcb-website")
     (relationship "experimental-sibling")
     (description "Container stack experiments, NOT for production"))

    ((name "nuj-prc.org.uk")
     (relationship "design-inspiration")
     (description "Reference site for theme and styling"))

    ((name "zulip")
     (relationship "third-party-dependency")
     (description "Open source team chat (forum.nuj-lcb.org.uk)"))

    ((name "jitsi-meet")
     (relationship "third-party-dependency")
     (description "Open source video conferencing (convene.nuj-lcb.org.uk)"))

    ((name "caddy")
     (relationship "infrastructure-dependency")
     (description "Reverse proxy with automatic HTTPS"))

    ((name "cloudflare")
     (relationship "infrastructure-dependency")
     (description "DNS, CDN, DDoS protection, DNSSEC, IPv6"))

    ((name "verisim-practice-mirror")
     (relationship "future-test-mirror")
     (description "VeriSimDB testing environment (after production is stable)"))

    ((name "rsr-template-repo")
     (relationship "compliance-template")
     (description "RSR structure and licensing template"))

    ((name "palimpsest-license")
     (relationship "license-source")
     (description "PMPL-1.0-or-later license definition")))

  (what-this-is
    "Standard WordPress production deployment"
    "Union branch public-facing website"
    "Member forum (Zulip on forum subdomain)"
    "Video conferencing (Jitsi Meet on convene subdomain)"
    "Job requirement (must work reliably)")

  (what-this-is-not
    "NOT a research project"
    "NOT using experimental container tech (Vörðr, Svalinn, Cerro Torre)"
    "NOT using custom WordPress themes (uses Newspaperup)"
    "NOT a testing ground for security experiments"
    "NOT using VeriSimDB or FormBD (standard MariaDB only)"))
