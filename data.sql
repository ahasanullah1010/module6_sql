




-- Insert dummy data into authors table
INSERT INTO authors (author_name) VALUES
('John Doe'),
('Jane Smith'),
('Alice Johnson'),
('Bob Brown'),
('Emily Davis');

-- Insert dummy data into categories table
INSERT INTO categories (category_name) VALUES
('Technology'),
('Health'),
('Lifestyle'),
('Education'),
('Travel');

-- Insert dummy data into posts table
INSERT INTO blogs (title, body, category_id, author_id) VALUES
('Introduction to AI', 'This post discusses the basics of artificial intelligence.', 1, 1),
('Healthy Living Tips', 'Learn how to maintain a healthy lifestyle.', 2, 2),
('Top Travel Destinations', 'Explore the best places to travel this year.', 5, 3),
('Education in the Digital Age', 'How technology is changing education.', 4, 4),
('The Future of Gadgets', 'A glimpse into upcoming technological advancements.', 1, 5);