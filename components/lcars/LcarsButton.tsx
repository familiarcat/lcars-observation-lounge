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
