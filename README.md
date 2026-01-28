# NUJ London Central Branch Website - Production

**Simple, proven WordPress setup for nuj-lcb.org.uk**

This is the PRODUCTION site. Keep it simple and reliable.

## Stack

- WordPress (official Docker image)
- MariaDB 11.2
- Varnish cache (optional)
- Newspaperup theme (same as nuj-prc.org.uk)

## Quick Start

```bash
# 1. Copy environment file
cp .env.example .env

# 2. Edit .env and set passwords
nano .env

# 3. Start services
docker-compose up -d

# 4. Open browser to http://localhost:8080
# 5. Complete WordPress installation
# 6. Install Newspaperup theme
```

## No Experimental Tech

This repo uses ONLY proven, stable technology:
- ✅ Official WordPress Docker image
- ✅ Official MariaDB image
- ✅ Standard docker-compose
- ❌ NO Vörðr, Svalinn, Cerro Torre
- ❌ NO custom container builds
- ❌ NO experimental databases

Keep experiments in separate repos.

## Documentation

- [DEPLOYMENT.md](DEPLOYMENT.md) - Full deployment guide
- [SECURITY.md](SECURITY.md) - Security checklist

## License

PMPL-1.0-or-later

