CREATE TABLE public.todos(id SERIAL PRIMARY KEY,
                          title VARCHAR(225) NOT NULL,
                          details TEXT,
                          priority INTEGER NOT NULL DEFAULT 1,
                          created_at timestamp without time zone NOT NULL,
                          completed_at timestamp without time zone);

INSERT INTO public.todos(title, details, priority, created_at)
VALUES ('Wash Car', 'do sometime this week', 2, '2017-6-19 10:23:54'),
('Wash Clothes', '', 3, '2017-06-26 09:00:00');

INSERT INTO public.todos(title, details, priority, created_at, completed_at)
VALUES ('Mow Lawn', 'mow and trim the lawn', 1, '2017-06-20 10:00:08', '2017-06-23 16:10:05'),
('Grocery Shopping', 'avocados, lettuce, cheese, milk', 2, '2017-06-27 14:05:45', '2017-06-27 17:34:52'),
('Water plants', 'plants in front yard', 1, '2017-06-23 18:28:10', '2017-06-24 20:10:31');

SELECT *
FROM public.todos
WHERE completed_at IS NULL;

SELECT *
FROM public.todos
WHERE priority > 1;

UPDATE public.todos
SET details = 'whites only, no red'
WHERE id = 2;

DELETE
FROM public.todos
WHERE completed_at IS NOT NULL;
