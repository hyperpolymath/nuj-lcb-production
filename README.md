# NUJ London Central Branch Website - Production

**Simple, proven WordPress setup with forum and video conferencing for nuj-lcb.org.uk**

This is the PRODUCTION site. Keep it simple and reliable.

## Three Services Architecture

| Service | Subdomain | Purpose | Technology |
|---------|-----------|---------|------------|
| Main Site | nuj-lcb.org.uk | Public website | WordPress 6.7 + Newspaperup theme |
| Forum | forum.nuj-lcb.org.uk | Member discussions | Zulip (threaded chat) |
| Video Meetings | convene.nuj-lcb.org.uk | Video conferencing | Jitsi Meet |

## Stack

- **WordPress** (official Docker image) - Main website
- **Zulip** - Forum for threaded discussions
- **Jitsi Meet** - Video conferencing
- **MariaDB 11.2** - Database
- **Caddy 2** - Reverse proxy with automatic HTTPS
- **Varnish 7.4** (optional) - HTTP cache for WordPress
- **Cloudflare** - DNS, CDN, DNSSEC, IPv6, HTTP/3

## Quick Start

```bash
# 1. Copy environment file
cp .env.example .env

# 2. Edit .env and set passwords
nano .env

# 3. Start all services
docker-compose up -d

# 4. Access services:
# - WordPress: http://localhost:8080
# - Zulip: http://localhost:8081
# - Jitsi: http://localhost:8443

# 5. Complete WordPress installation
# 6. Install Newspaperup theme
# 7. Configure Zulip admin account
# 8. Test Jitsi video calls
```

## Production Deployment

On VPS-D8 (4 vCPU, 8GB RAM, 160GB NVMe):
- All three services running simultaneously
- Caddy reverse proxy handling SSL for all domains
- Resource usage: ~5-6GB RAM (2GB buffer)

## No Experimental Tech

This repo uses ONLY proven, stable technology:
- ✅ Official WordPress Docker image
- ✅ Official Zulip Docker image
- ✅ Official Jitsi Meet Docker image
- ✅ Official MariaDB image
- ✅ Caddy 2 (official image)
- ✅ Standard docker-compose
- ❌ NO Vörðr, Svalinn, Cerro Torre
- ❌ NO custom container builds
- ❌ NO experimental databases

Keep experiments in separate repos (e.g., `lcb-website` for experimental testbed).

## Features

- **WordPress**: Standard CMS with Newspaperup theme
- **Zulip Forum**: Threaded discussions, email notifications, mobile apps
- **Jitsi Video**: WebRTC video calls, no account required for guests
- **Security**: HTTPS, HSTS, DNSSEC, security headers
- **IndieWeb**: Webfinger, webmention, microformats (h-card, h-entry)
- **Modern Web**: HTTP/3 (QUIC), IPv6, DoQ-compatible DNS

## DNS Setup

```dns
# A records
@                   A      <VPS_IP>
forum               A      <VPS_IP>
convene             A      <VPS_IP>

# AAAA records (IPv6)
@                   AAAA   <VPS_IPv6>
forum               AAAA   <VPS_IPv6>
convene             AAAA   <VPS_IPv6>

# Enable in Cloudflare:
# - DNSSEC
# - HTTP/3 (with QUIC)
# - Automatic HTTPS Rewrites
```

## Resource Usage

| Service | RAM | CPU | Storage |
|---------|-----|-----|---------|
| WordPress | 1-2GB | 1 core | 20GB |
| Zulip | ~2GB | 1 core | 30GB |
| Jitsi Meet | 1-2GB | 1 core | 10GB |
| MariaDB | ~1GB | 1 core | 10GB |
| Caddy | 512MB | 0.5 core | 1GB |
| **Total** | ~6GB | 4.5 cores | ~71GB |

## Documentation

- [DEPLOYMENT.md](DEPLOYMENT.md) - Full deployment guide
- [ROADMAP.adoc](ROADMAP.adoc) - Project milestones
- [SECURITY.md](SECURITY.md) - Security checklist
- [.well-known/security.txt](.well-known/security.txt) - Security contact

## License

PMPL-1.0-or-later

