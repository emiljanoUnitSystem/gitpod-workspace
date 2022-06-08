 INSERT INTO "public"."users" ("id", "name")

-- Describe the dataset:
SELECT
CONCAT('t', "u") AS "id",
CONCAT('Name', "u") AS "name"

-- Set the size of the dataset:
FROM generate_series(1, 100) AS "u"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "users_pkey"
DO UPDATE SET
"name" = EXCLUDED."name"


-- Return the dataset that was produced:
RETURNING *;