-- ## Authors Table 
-- id: INT, Auto Increment, Primary Key. 
-- author_name: VARCHAR(255), NOT NULL. 
-- created_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP. 
-- updated_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP, Auto-updates on record change (ON UPDATE CURRENT_TIMESTAMP). 

CREATE Table authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ## Categories Table 
-- id: INT, Auto Increment, Primary Key. 
-- category_name: VARCHAR(255), NOT NULL. 
-- created_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP. 
-- updated_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP, Auto-updates on record change (ON UPDATE CURRENT_TIMESTAMP).

CREATE TABLE categories(
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)



-- ## Blogs Table: id: Primary Key, Auto-Increment. 
-- title: Required, String (Max 255 characters). 
-- body: Required, Text. 
-- category_id: Foreign Key referencing categories(id), Required. 
-- author_id: Foreign Key referencing authors(id), Required. 
-- created_at: Auto-generated timestamp for record creation. 
-- updated_at: Auto-updated timestamp for record updates.

CREATE TABLE categories(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    FOREIGN KEY (category_id) REFERENCES categories(id) ON UPDATE CASCADE ON DELETE CASCADE ,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON UPDATE CASCADE ON DELETE CASCADE 
)
-- Relationships: 
-- category_id: Deletes associated blogs if the category is deleted (ON DELETE CASCADE). 
-- author_id: Deletes associated blogs if the author is deleted (ON DELETE CASCADE). 
-- category_id: Automatically updates associated blogs if the category is updated (ON UPDATE CASCADE). 
-- author_id: Automatically updates associated blogs if the author is updated (ON UPDATE CASCADE). 





-- ১. Authors Table: 
        -- 1. How do you add a new author to the authors table? 
        INSERT INTO authors (author_name) VALUES
        ('jossep scott'),
        ('peter'),
        ('holan');

        -- 2. How do you retrieve all authors from the authors table? 

        SELECT * FROM authors;

        -- 3. How do you retrieve a specific author by their ID from the authors table? 
        SELECT * FROM authors WHERE id = 1;
        -- 4. How do you update an author’s name in the authors table? 
        UPDATE authors SET author_name = 'john don' WHERE id = 3;
        -- 5. How do you delete an author by their ID from the authors table? 
        DELETE FROM authors WHERE id = 3;


-- ২. Categories Table: 
        -- 6. How do you add a new category to the categories table? 
        -- 7. How do you retrieve all categories from the categories table? 
        -- 8. How do you retrieve a specific category by its ID from the categories table? 
        -- 9. How do you update a category’s name in the categories table? 
        -- 10. How do you delete a category by its ID from the categories table? 


-- ৩. Blogs Table: 
        -- 11. How do you add a new blog to the blogs table? 
        -- 12. How do you retrieve all blogs from the blogs table?

        -- 13. How do you retrieve a specific blog by its ID from the blogs table? 
        SELECT * FROM blogs 

        -- 14. How do you retrieve all blogs with their category and author information? 
        SELECT blogs.title, blogs.body, categories.category_name, authors.author_name
        FROM blogs
        JOIN categories ON blogs.category_id = categories.id
        JOIN authors ON blogs.author_id = authors.id; 


        -- 15. How do you update a blog’s title in the blogs table? 
        UPDATE blogs SET title = "Updated title" WHERE id = 1;


        -- 16. How do you update a blog’s category or author in the blogs table? 
        UPDATE blogs SET category_id = 4, author_id = 2 WHERE id = 10;

        -- 17. How do you delete a blog by its ID from the blogs table? 
        DELETE FROM blogs WHERE id = 1;

-- ৪. Specific Queries: 
        -- 18. How do you get all blogs written by a specific author? 
        SELECT authors.author_name, blogs.title, blogs.body FROM blogs JOIN authors on blogs.author_id = authors.id WHERE authors.id = 1;
        
        -- 19. How do you get all blogs under a specific category? 
        SELECT categories.category_name, blogs.title, blogs.body
        FROM blogs
        JOIN categories ON blogs.category_id = categories.id
        WHERE categories.category_name = "Lifestyle";

-- ### জমাদানের নির্দেশাবলী:


-- ৫. অ্যাসাইনমেন্ট পেজের Upload File সেকশ১. একটি নতুন GitHub রিপোজিটরি তৈরি করুন এবং blog_project.sql, data.sql, এবং blogs.sql ফাইলগুলো রিপোজিটরিতে অন্তর্ভুক্ত করুন।

-- - **blog_project.sql** ফাইলে টেবিল ক্রিয়েশন এবং অন্যান্য প্রয়োজনীয় কুইরি থাকবে। -
--  **data.sql** ফাইলে শুধুমাত্র ডেমো ডাটা ইনসার্ট করার জন্য কুইরি থাকবে। - 
-- **blogs.sql** ফাইলে XAMPP থেকে এক্সপোর্ট করা কুইরি থাকবে, যাতে সহজেই ব্লগ টেবিলটি ডেটাবেসে ইমপোর্ট করা যায়। 
-- ২. blogs.sql ফাইলটি XAMPP থেকে এক্সপোর্ট করে যোগ করতে হবে। 
-- ৩. শুধুমাত্র GitHub রিপোজিটরি লিঙ্ক জমা দিতে হবে। 
-- ৪. ডেডলাইনের পরে আপনার কোডে কোনো পরিবর্তন করা যাবে না। নে কোনো ফাইল আপলোড করার প্রয়োজন নেই।