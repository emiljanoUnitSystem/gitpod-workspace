
CREATE TABLE "public"."rooms" (
    "id" text NOT NULL,
    "user_id" text NOT NULL,
    "timestamp" timestamptz DEFAULT now() NOT NULL,
    "name" text,
    CONSTRAINT "rooms_pkey" PRIMARY KEY ("id")
) WITH (oids = false);