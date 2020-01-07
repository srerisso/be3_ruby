CREATE TABLE "active_storage_attachments" (
  "id" varchar,
  "name" string,
  "record_type" string,
  "record_id" bigint,
  "blob_id" bigint,
  "created_at" datetime
);

CREATE TABLE "active_storage_blobs" (
  "id" varchar,
  "key" string,
  "filename" string,
  "content_type" string,
  "metadata" text,
  "byte_size" bigint,
  "checksum" string,
  "created_at" datetime
);

CREATE TABLE "clientes" (
  "id" varchar,
  "nombre" string,
  "email" string,
  "created_at" datetime,
  "updated_at" datetime
);

CREATE TABLE "presupuestos" (
  "id" varchar,
  "codigoalg" string,
  "series" string,
  "acabado" string,
  "created_at" datetime,
  "updated_at" datetime,
  "referencia" string,
  "estado" string,
  "etiquetas" string,
  "cliente_id" integer,
  "importe" float
);

CREATE TABLE "tareas" (
  "id" varchar,
  "created_at" datetime,
  "updated_at" datetime
);

CREATE TABLE "todos" (
  "id" varchar,
  "texto" string,
  "created_at" datetime,
  "updated_at" datetime,
  "presupuesto_id" integer
);

CREATE TABLE "users" (
  "id" varchar,
  "email" string,
  "encrypted_password" string,
  "reset_password_token" string,
  "reset_password_sent_at" datetime,
  "remember_created_at" datetime,
  "sign_in_count" integer,
  "current_sign_in_at" datetime,
  "last_sign_in_at" datetime,
  "current_sign_in_ip" string,
  "last_sign_in_ip" string,
  "created_at" datetime,
  "updated_at" datetime,
  "failed_attempts" integer,
  "unlock_token" string,
  "locked_at" datetime,
  "confirmation_token" string,
  "confirmed_at" datetime,
  "confirmation_sent_at" datetime
);

ALTER TABLE "clientes" ADD CONSTRAINT "fk_rails_presupuestos_clientes" FOREIGN KEY ("id") REFERENCES "presupuestos" ("cliente_id");

ALTER TABLE "presupuestos" ADD CONSTRAINT "fk_rails_todos_presupuestos" FOREIGN KEY ("id") REFERENCES "todos" ("presupuesto_id");
