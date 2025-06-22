import React, { ReactNode } from "react";
import LcarsSidebar from "./LcarsSidebar";

type Props = {
  children: ReactNode;
};

export default function LcarsShell ({ children }: Props) { 
  return (
    <div className="min-h-screen flex bg-black text-white font-lcars">
      <LcarsSidebar />
      <main className="flex-1 p-4 overflow-y-auto">{children}</main>
    </div>
  );
}