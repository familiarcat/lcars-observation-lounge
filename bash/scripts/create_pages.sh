#!/bin/bash
# Phase D: Page Injection
echo "📄 Creating app pages..."
mkdir -p app/dashboard app/missions app/logs
cat <<EOF > app/dashboard/page.tsx
import React from 'react';
import LcarsShell from '@/components/lcars/LcarsShell';
import LcarsSidebar from '@/components/lcars/LcarsSidebar';
import LcarsContent from '@/components/lcars/LcarsContent';
import LcarsTitleBar from '@/components/lcars/LcarsTitleBar';
import LcarsPanel from '@/components/lcars/LcarsPanel';

export default function DashboardPage() {
  return (
    <LcarsShell>
      <LcarsSidebar />
      <LcarsContent>
        <LcarsTitleBar title="Dashboard Overview" />
        <LcarsPanel>
          <p className="text-lcars-peach">Welcome to the LCARS Observation Lounge.</p>
        </LcarsPanel>
      </LcarsContent>
    </LcarsShell>
  );
}
EOF

cat <<EOF > app/missions/page.tsx
import React from 'react';
import LcarsShell from '@/components/lcars/LcarsShell';
import LcarsSidebar from '@/components/lcars/LcarsSidebar';
import LcarsContent from '@/components/lcars/LcarsContent';
import LcarsTitleBar from '@/components/lcars/LcarsTitleBar';
import LcarsPanel from '@/components/lcars/LcarsPanel';
import useMockData from '@/lib/useMockData';
import LcarsLogFeed from '@/components/lcars/LcarsLogFeed';

export default function MissionsPage() {
  const { missions } = useMockData();
  return (
    <LcarsShell>
      <LcarsSidebar />
      <LcarsContent>
        <LcarsTitleBar title="Missions" />
        <LcarsPanel>
          <LcarsLogFeed logs={missions} />
        </LcarsPanel>
      </LcarsContent>
    </LcarsShell>
  );
}
EOF

cat <<EOF > app/logs/page.tsx
import React from 'react';
import LcarsShell from '@/components/lcars/LcarsShell';
import LcarsSidebar from '@/components/lcars/LcarsSidebar';
import LcarsContent from '@/components/lcars/LcarsContent';
import LcarsTitleBar from '@/components/lcars/LcarsTitleBar';
import LcarsPanel from '@/components/lcars/LcarsPanel';
import useMockData from '@/lib/useMockData';
import LcarsLogFeed from '@/components/lcars/LcarsLogFeed';

export default function LogsPage() {
  const { logs } = useMockData();
  return (
    <LcarsShell>
      <LcarsSidebar />
      <LcarsContent>
        <LcarsTitleBar title="Log Terminal" />
        <LcarsPanel>
          <LcarsLogFeed logs={logs} />
        </LcarsPanel>
      </LcarsContent>
    </LcarsShell>
  );
}
EOF

echo "✅ Pages created: /dashboard, /missions, /logs"