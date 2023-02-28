-- Table: public.Place

-- DROP TABLE IF EXISTS public."Place";

CREATE TABLE IF NOT EXISTS public."Place"
(
    id integer NOT NULL,
    "categoryId" integer NOT NULL,
    name text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    location_link text COLLATE pg_catalog."default",
    photo1 text COLLATE pg_catalog."default",
    photo2 text COLLATE pg_catalog."default",
    photo3 text COLLATE pg_catalog."default",
    CONSTRAINT "Place_pkey" PRIMARY KEY (id),
    CONSTRAINT fk_place_category FOREIGN KEY ("categoryId")
        REFERENCES public.category (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

CREATE TABLE IF NOT EXISTS public.category
(
    id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "categoryId_pkey" PRIMARY KEY (id)
)