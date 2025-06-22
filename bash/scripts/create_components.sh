#!/bin/bash
# Full component injector
echo "🔧 Injecting all LCARS Components..."
mkdir -p components/lcars
cat <<EOF > components/lcars/LcarsHeader.tsx
import React from 'react';

export default function LcarsHeader() {
  return (
    <header className="bg-lcars-orange text-black py-2 px-4 font-bold text-lg tracking-wider rounded-t-lcars-lg">
      LCARS Observation Lounge
    </header>
  );
}
EOF

cat <<EOF > components/lcars/LcarsFooter.tsx
import React from 'react';

export default function LcarsFooter() {
  return (
    <footer className="bg-lcars-blue text-white text-sm p-2 rounded-b-lcars-lg text-center">
      Starfleet Command Interface • Stardate 47634.44
    </footer>
  );
}
EOF

cat <<EOF > components/lcars/LcarsContent.tsx
import React, { ReactNode } from 'react';

interface Props {
  children: ReactNode;
}

export default function LcarsContent({ children }: Props) {
  return (
    <main className="bg-black text-white p-4 rounded-lcars-lg overflow-y-auto">
      {children}
    </main>
  );
}
EOF

cat <<EOF > components/lcars/LcarsPanelHeader.tsx
import React from 'react';

interface Props {
  label: string;
}

export default function LcarsPanelHeader({ label }: Props) {
  return <div className="bg-lcars-orange text-black px-3 py-1 font-semibold">{label}</div>;
}
EOF

cat <<EOF > components/lcars/LcarsPanelSection.tsx
import React, { ReactNode } from 'react';

interface Props {
  children: ReactNode;
}

export default function LcarsPanelSection({ children }: Props) {
  return <section className="bg-lcars-black text-lcars-peach p-2">{children}</section>;
}
EOF

cat <<EOF > components/lcars/LcarsDivider.tsx
import React from 'react';

export default function LcarsDivider() {
  return <hr className="border-lcars-orange my-2" />;
}
EOF

cat <<EOF > components/lcars/LcarsButton.tsx
import React from 'react';

interface Props {
  label: string;
  onClick?: () => void;
}

export default function LcarsButton({ label, onClick }: Props) {
  return (
    <button onClick={onClick} className="bg-lcars-orange text-black px-4 py-2 rounded-lcars-full hover:bg-lcars-peach transition">
      {label}
    </button>
  );
}
EOF

cat <<EOF > components/lcars/LcarsNavButton.tsx
import React from 'react';
import { useRouter } from 'next/navigation';

interface Props {
  label: string;
  path: string;
}

export default function LcarsNavButton({ label, path }: Props) {
  const router = useRouter();
  return (
    <button onClick={() => router.push(path)} className="bg-lcars-orange text-black px-4 py-2 rounded-lcars-full w-full text-left">
      {label}
    </button>
  );
}
EOF

cat <<EOF > components/lcars/LcarsIndicator.tsx
import React from 'react';

interface Props {
  status: 'ok' | 'alert' | 'error';
}

export default function LcarsIndicator({ status }: Props) {
  const color = {
    ok: 'bg-lcars-green',
    alert: 'bg-lcars-orange',
    error: 'bg-lcars-red'
  }[status];

  return <span className={\`\${color} w-3 h-3 inline-block rounded-full\`} />;
}
EOF

cat <<EOF > components/lcars/LcarsScannerBar.tsx
import React from 'react';

export default function LcarsScannerBar() {
  return (
    <div className="h-2 w-full bg-gradient-to-r from-lcars-blue via-lcars-peach to-lcars-blue animate-pulse rounded-full mt-2" />
  );
}
EOF

cat <<EOF > components/lcars/LcarsTitleBar.tsx
import React from 'react';

interface Props {
  title: string;
}

export default function LcarsTitleBar({ title }: Props) {
  return <div className="bg-lcars-lavender text-black text-xl px-4 py-2 font-bold">{title}</div>;
}
EOF

cat <<EOF > components/lcars/LcarsLogFeed.tsx
import React from 'react';
import { CrewLog } from '@/types';

interface Props {
  logs: CrewLog[];
}

export default function LcarsLogFeed({ logs }: Props) {
  return (
    <ul className="space-y-2">
      {logs.map((log) => (
        <li key={log.id} className="text-lcars-peach border-l-4 border-lcars-orange pl-2">
          [{log.timestamp}] {log.author}: {log.message}
        </li>
      ))}
    </ul>
  );
}
EOF

cat <<EOF > components/lcars/LcarsProgressBar.tsx
import React from 'react';

interface Props {
  value: number;
}

export default function LcarsProgressBar({ value }: Props) {
  return (
    <div className="w-full bg-lcars-gray h-3 rounded-full overflow-hidden">
      <div className="bg-lcars-peach h-3 transition-all duration-300" style={{ width: \`\${value}%\` }} />
    </div>
  );
}
EOF

cat <<EOF > components/lcars/LcarsStatusBlock.tsx
import React from 'react';

interface Props {
  label: string;
  status: 'on' | 'off' | 'alert';
}

export default function LcarsStatusBlock({ label, status }: Props) {
  const color = {
    on: 'bg-lcars-green',
    off: 'bg-lcars-gray',
    alert: 'bg-lcars-red'
  }[status];

  return <div className={\`\${color} px-3 py-1 text-black font-bold rounded-lcars-lg\`}>{label}</div>;
}
EOF

cat <<EOF > components/lcars/LcarsAvatar.tsx
import React from 'react';
import { Avatar } from '@/types';

interface Props {
  data: Avatar;
}

export default function LcarsAvatar({ data }: Props) {
  return (
    <div className="flex items-center space-x-3 bg-lcars-black text-white p-3 rounded-lcars-lg border border-lcars-orange">
      <div className="w-10 h-10 bg-lcars-blue rounded-full text-center leading-10 font-bold">{data.name[0]}</div>
      <div>
        <div className="font-bold text-lcars-peach">{data.name}</div>
        <div className="text-sm text-lcars-gray">{data.rank} • {data.species}</div>
      </div>
    </div>
  );
}
EOF

echo "✅ All LCARS Components Injected."