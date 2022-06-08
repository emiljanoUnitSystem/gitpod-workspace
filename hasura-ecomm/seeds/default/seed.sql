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
"name" = EXCLUDED."name";


-- Return the dataset that was produced:
INSERT INTO "public"."rooms" ("id","name","user_id")



-- Describe the dataset:
SELECT
CONCAT('r', "r") AS "id",
CONCAT('n',"r")AS "name",
CONCAT('t', floor(random() * (10 - 1 + 1) + 1)) AS "user_id"


-- Set the size of the dataset:
FROM generate_series(1, 100) AS "r"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "PK_room_id"
DO UPDATE SET
"user_id" = EXCLUDED."user_id";

INSERT INTO "public"."messages" ("id", "room_id", "user_id", "message","date_time_created")



-- Describe the dataset:
SELECT
CONCAT('m', "r") AS "id",
CONCAT('r', floor(random() * (10 - 1 + 1) + 1)) AS "room_id",
CONCAT('t', floor(random() * (10 - 1 + 1) + 1)) AS "user_id",
CONCAT('Message', "r") AS "message",
CURRENT_TIMESTAMP AS "date_time_created"



-- Set the size of the dataset:
FROM generate_series(1, 100) AS "r"



-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT PK_messages_id
DO UPDATE SET
"room_id" = EXCLUDED."room_id",
"user_id" = EXCLUDED."user_id",
"message" = EXCLUDED."message"


