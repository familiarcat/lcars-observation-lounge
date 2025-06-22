#!/bin/bash
echo "🔁 Phase D: Injecting LcarsShell, LcarsSidebar, and LcarsPanel..."

mkdir -p app/components/lcars

cat <<EOF > app/components/lcars/LcarsShell.tsx
import React, { ReactNode } from "react";
import LcarsSidebar from "./LcarsSidebar";

type Props = {
  children: ReactNode;
};

const LcarsShell = ({ children }: Props) => (
  <div className="min-h-screen flex bg-black text-white font-lcars">
    <LcarsSidebar />
    <main className="flex-1 p-4 overflow-y-auto">{children}</main>
  </div>
);

export default LcarsShell;
EOF

cat <<EOF > app/components/lcars/LcarsSidebar.tsx
import React from "react";
import Link from "next/link";

const LcarsSidebar = () => (
  <aside className="w-48 bg-purple-900 p-2 flex flex-col space-y-4">
    <Link href="/dashboard" className="block bg-yellow-500 text-black px-3 py-2 rounded">Dashboard</Link>
    <Link href="/missions" className="block bg-blue-500 text-white px-3 py-2 rounded">Missions</Link>
    <Link href="/logs" className="block bg-red-500 text-white px-3 py-2 rounded">Logs</Link>
  </aside>
);

export default LcarsSidebar;
EOF

cat <<EOF > app/components/lcars/LcarsPanel.tsx
import React, { ReactNode } from "react";

type Props = {
  title: string;
  children: ReactNode;
};

const LcarsPanel = ({ title, children }: Props) => (
  <section className="border-4 border-orange-400 p-4 m-4 rounded-lg bg-gray-800">
    <h2 className="text-orange-400 font-bold text-lg mb-2">{title}</h2>
    <div>{children}</div>
  </section>
);

export default LcarsPanel;
EOF

echo "✅ LcarsShell, LcarsSidebar, and LcarsPanel injected."