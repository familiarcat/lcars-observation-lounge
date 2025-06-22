import React from "react";
import Link from "next/link";

export default function LcarsSidebar (){
  return (
  <aside className="w-48 bg-purple-900 p-2 flex flex-col space-y-4">
    <Link href="/dashboard" className="block bg-yellow-500 text-black px-3 py-2 rounded">Dashboard</Link>
    <Link href="/missions" className="block bg-blue-500 text-white px-3 py-2 rounded">Missions</Link>
    <Link href="/logs" className="block bg-red-500 text-white px-3 py-2 rounded">Logs</Link>
  </aside>
  )
}

