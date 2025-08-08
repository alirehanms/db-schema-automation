DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'app' AND table_name = 'users' AND column_name = 'country'
  ) THEN
    ALTER TABLE app.users ADD COLUMN country TEXT;
  END IF;
END
$$;

