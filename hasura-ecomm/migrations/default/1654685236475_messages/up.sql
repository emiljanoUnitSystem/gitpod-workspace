CREATE TABLE "public"."messages"(
"id" TEXT unique not null,
"room_id" TEXT not null,
"user_id" TEXT not null,
"message" TEXT,
"date_time_created" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT PK_messages_id PRIMARY KEY ("id"),
CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES "public".users(id),
CONSTRAINT FK_room_id FOREIGN KEY (room_id) REFERENCES "public".rooms(id)



);