CREATE TABLE IF NOT EXISTS  "public"."users" (
    "id" text NOT NULL,
    "created_at" timestamp DEFAULT now() NOT NULL,
    "name" text,
    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

