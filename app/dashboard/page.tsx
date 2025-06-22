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
