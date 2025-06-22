import { ReactNode } from 'react'

export default function LcarsShellGrid({ children }: { children: ReactNode }) {
  return (
    <div className="min-h-screen grid grid-rows-[auto_1fr_auto] grid-cols-[15rem_1fr] text-lcars-black font-lcars bg-lcars-black">
      {/* Top */}
      <div className="col-span-2 bg-lcars-peach p-2">LCARS Header</div>
      {/* Left Sidebar */}
      <div className="bg-lcars-blue p-2">Sidebar</div>
      {/* Main Content */}
      <main className="bg-lcars-gray p-4">{children}</main>
      {/* Bottom Ribbon */}
      <div className="col-span-2 bg-lcars-orange p-2">Status Ribbon</div>
    </div>
  )
}
