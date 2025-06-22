#!/bin/bash
echo "🔮 Katra Checkpoint Activated"
echo "Saving LCARS Observation Lounge Project State..."
mkdir -p katra_backup
cp -r bash/scripts katra_backup/
cp -r components katra_backup/
cp -r app katra_backup/
cp tailwind.config.ts katra_backup/
cp tsconfig.json katra_backup/
cp package.json katra_backup/
echo "✅ All artifacts secured in katra_backup/"
