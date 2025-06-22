import React, { ReactNode } from "react";

type Props = {
  title?: string;
  children: ReactNode;
};

export default function LcarsPanel ({ title, children }: Props) {
  return(
    <section className="border-4 border-orange-400 p-4 m-4 rounded-lg bg-gray-800">
    <h2 className="text-orange-400 font-bold text-lg mb-2">{title}</h2>
    <div>{children}</div>
  </section>
  )
}
