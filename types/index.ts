
export interface Mission {
  id: string;
  title: string;
  timestamp: string;
  description: string;
}

export interface CrewLog extends Mission {
  author: string;
  mission: string;
  message: string;
  status: 'OK' | 'ALERT' | 'STANDBY';
}

export interface CrewMember {
  id: string;
  name: string;
  rank: string;
  avatar: string;
  status: 'ACTIVE' | 'AWAY' | 'INJURED';
}

export interface Avatar {
  name: string;
  rank: string;
  species: string;
}
