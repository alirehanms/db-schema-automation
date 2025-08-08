DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'app' AND table_name = 'users' AND column_name = 'email'
  ) AND NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'app' AND table_name = 'users' AND column_name = 'contact_email'
  ) THEN
    ALTER TABLE app.users RENAME COLUMN email TO contact_email;
  END IF;
END
$$;
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'app' AND table_name = 'users' AND column_name = 'email'
  ) AND NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'app' AND table_name = 'users' AND column_name = 'contact_email'
  ) THEN
    ALTER TABLE app.users RENAME COLUMN email TO contact_email;
  END IF;
END
$$;

