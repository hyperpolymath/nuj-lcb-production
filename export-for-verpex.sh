#!/bin/bash
# SPDX-License-Identifier: PMPL-1.0-or-later
# SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell <jonathan.jewell@open.ac.uk>
#
# Export WordPress site for Verpex deployment

set -e

echo "=== Exporting NUJ LCB WordPress for Verpex Deployment ==="
echo ""

# Check if containers are running
if ! docker compose ps | grep -q "Up"; then
    echo "ERROR: Containers are not running. Start them with:"
    echo "  docker compose up -d"
    exit 1
fi

# Get database password from .env
DB_PASSWORD=$(grep DB_PASSWORD .env | cut -d'=' -f2)

echo "[1/3] Exporting database..."
docker exec nuj-lcb-mariadb mysqldump -u wordpress -p"${DB_PASSWORD}" wordpress > nuj-lcb-backup.sql
echo "  ✓ Database exported: nuj-lcb-backup.sql"

echo "[2/3] Compressing database..."
gzip -f nuj-lcb-backup.sql
echo "  ✓ Database compressed: nuj-lcb-backup.sql.gz"

echo "[3/3] Exporting WordPress files..."
docker exec nuj-lcb-wordpress tar czf /tmp/wordpress-files.tar.gz -C /var/www/html .
docker cp nuj-lcb-wordpress:/tmp/wordpress-files.tar.gz ./wordpress-files.tar.gz
docker exec nuj-lcb-wordpress rm /tmp/wordpress-files.tar.gz
echo "  ✓ Files exported: wordpress-files.tar.gz"

echo ""
echo "=== Export Complete! ==="
echo ""
echo "Files ready for upload to Verpex:"
ls -lh nuj-lcb-backup.sql.gz wordpress-files.tar.gz
echo ""
echo "Next steps:"
echo "1. Follow VERPEX-DEPLOYMENT.md guide"
echo "2. Upload these files to cPanel"
echo "3. Import database and configure wp-config.php"
echo ""
echo "⚠️  SECURITY: Delete these files after uploading!"
