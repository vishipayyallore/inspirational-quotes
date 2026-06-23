# Preserved Paths — Do Not Modify

## `.archive/`

Preserved historical reference content. **Never edit, delete, or reorganize** files inside `.archive/`. This directory exists only so previous work is not lost.

## `Logs/`

Append-only verification output. You may **read** or **append** new files (via `-OutFile`), but never edit or delete existing log files.

## `.clinerules/`

Configuration for the Cline agent system (a different tool). OpenCode should **read** these for reference but **never modify** them.

## `source-material/`

Does not currently exist. If created in the future, treat it as read-only reference — never edit, move, or delete its contents.
