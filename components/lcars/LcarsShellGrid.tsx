import { ReactNode } from "react";

export default function LcarsShellGrid({ children }: { children: ReactNode }) {
  return (
    <div className="grid grid-cols-12 gap-4 p-4 bg-lcars-peach rounded-tr-2xl rounded-bl-2xl">
      {children}
    </div>
  );
}