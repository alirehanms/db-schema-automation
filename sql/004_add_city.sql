DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'app' AND table_name = 'users' AND column_name = 'city'
  ) THEN
    ALTER TABLE app.users ADD COLUMN city VARCHAR(100);
  END IF;
END
$$;

