interface LcarsButtonProps {
  label: string;
  onClick?: () => void;
}

export default function LcarsButton({ label, onClick }: LcarsButtonProps) {
  return (
    <button
      onClick={onClick}
      className="px-4 py-2 rounded-full bg-lcars-orange hover:bg-lcars-peach transition-all"
    >
      {label}
    </button>
  );
}