#!/bin/bash
# Phase F: Inject types and mock data
echo "📦 Creating types and mock data..."
mkdir -p types lib
cat <<EOF > types/index.ts
export interface LogEntry {
  id: string;
  message: string;
  timestamp: string;
  status: 'OK' | 'ALERT' | 'STANDBY';
}

export interface Mission {
  id: string;
  title: string;
  description: string;
  crew: string[];
  status: 'PLANNED' | 'ACTIVE' | 'COMPLETE';
}

export interface CrewMember {
  id: string;
  name: string;
  rank: string;
  avatar: string;
  status: 'ACTIVE' | 'AWAY' | 'INJURED';
}
EOF

cat <<EOF > lib/useMockData.ts
import { LogEntry, Mission, CrewMember } from '@/types';

export default function useMockData() {
  const logs: LogEntry[] = [
    { id: '1', message: 'Warp core stable.', timestamp: '13:00', status: 'OK' },
    { id: '2', message: 'Unknown signal detected.', timestamp: '13:03', status: 'ALERT' },
    { id: '3', message: 'All decks secure.', timestamp: '13:07', status: 'STANDBY' },
  ];

  const missions: Mission[] = [
    { id: 'm1', title: 'Explore Gamma Sector', description: 'Survey sector anomalies.', crew: ['001', '002'], status: 'ACTIVE' },
    { id: 'm2', title: 'Diplomatic Escort', description: 'Ensure safe passage for envoy.', crew: ['003'], status: 'PLANNED' }
  ];

  const crew: CrewMember[] = [
    { id: '001', name: 'Lt. Cmdr. Data', rank: 'Operations', avatar: '/avatars/data.png', status: 'ACTIVE' },
    { id: '002', name: 'Cmdr. Troi', rank: 'Counselor', avatar: '/avatars/troi.png', status: 'ACTIVE' },
    { id: '003', name: 'Lt. La Forge', rank: 'Engineering', avatar: '/avatars/la_forge.png', status: 'AWAY' }
  ];

  return { logs, missions, crew };
}
EOF

echo "✅ Types and mock data created"