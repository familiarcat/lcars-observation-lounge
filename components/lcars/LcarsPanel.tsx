import { ReactNode } from "react";

export default function LcarsPanel({ children }: { children: ReactNode }) {
  return (
    <div className="p-4 bg-lcars-blue text-black rounded-lg shadow-md">
      {children}
    </div>
  );
}