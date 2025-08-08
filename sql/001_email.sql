DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'app' AND table_name = 'users' AND column_name = 'email'
  ) THEN
    ALTER TABLE app.users ADD COLUMN email TEXT;
  END IF;
END
$$;
-- Added a test comment to trigger deploymentt  

