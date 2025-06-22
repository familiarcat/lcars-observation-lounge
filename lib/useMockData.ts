import { CrewLog, Mission, CrewMember } from '@/types';

export default function useMockData() {
  const logs: CrewLog[] = [
    { 
      id: '1', 
      title: 'Warp Core Status Report',
      timestamp: '13:00', 
      description: 'Routine engineering check on warp core systems',
      author: "Cmdr. Geordi La Forge", 
      mission: "Maintenance Protocol Alpha", 
      message: 'Warp core stable. All systems nominal.', 
      status: 'OK' 
    },
    { 
      id: '2', 
      title: 'Emergency Alert',
      timestamp: '13:03', 
      description: 'Incoming distress signal from nearby vessel',
      author: 'Cmdr. Troi',
      mission: "Sector 7 Patrol", 
      message: "Distress signal detected. Recommend immediate response.", 
      status: 'ALERT' 
    },
    { 
      id: '3', 
      title: 'Security Sweep Complete',
      timestamp: '13:07', 
      description: 'Completed security check of all ship decks',
      author: "Lt. La Forge", 
      mission: "Daily Security Protocol", 
      message: 'All decks secure. No anomalies detected.', 
      status: 'OK' 
    }
  ];

  const missions: Mission[] = [
    { 
      id: 'm1', 
      title: 'Explore Gamma Sector', 
      timestamp: '12:00',
      description: 'Survey sector anomalies and collect scientific data.' 
    },
    { 
      id: 'm2', 
      title: 'Diplomatic Escort', 
      timestamp: '14:30',
      description: 'Ensure safe passage for Betazoid envoy to peace negotiations.' 
    },
    { 
      id: 'm3', 
      title: 'Deep Space Reconnaissance', 
      timestamp: '09:15',
      description: 'Long-range sensor sweep of uncharted regions in Delta Quadrant.' 
    }
  ];

  const crew: CrewMember[] = [
    { id: '001', name: 'Lt. Cmdr. Data', rank: 'Operations', avatar: '/avatars/data.png', status: 'ACTIVE' },
    { id: '002', name: 'Cmdr. Troi', rank: 'Counselor', avatar: '/avatars/troi.png', status: 'ACTIVE' },
    { id: '003', name: 'Lt. La Forge', rank: 'Engineering', avatar: '/avatars/la_forge.png', status: 'AWAY' }
  ];

  return { logs, missions, crew };
}