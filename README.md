1️) What is PostgreSQL ?
PostgreSQL একটি শক্তিশালী, ওপেন সোর্স, রিলেশনাল ডেটাবেস ম্যানেজমেন্ট সিস্টেম (RDBMS) যা SQL (Structured Query Language) ব্যবহার করে ডেটাবেস পরিচালনা করতে ব্যবহৃত হয়।এটি ডেটা সংরক্ষণ, পরিচালনা করার জন্য ব্যবহৃত হয় | এটি ট্রানজেকশনাল সাপোর্ট, অ্যাডভান্সড কুয়েরি অপটিমাইজেশন, স্কেলেবিলিটি এবং ইন্টারনাল এক্সটেনসিবিলিটির জন্য পরিচিত
2)What is the purpose of a database schema in PostgreSQL?
PostgreSQL -এ স্কিমা মূলত ডাটাবেস সংগঠিত রাখার একটি উপায়। এটি একটি লজিক্যাল কন্টেইনার, যেখানে টেবিল, ভিউ, ইনডেক্স, ফাংশন ইত্যাদি রাখা যায়। একটি ডাটাবেসের মধ্যে একাধিক স্কিমা থাকতে পারে, যা একই ডাটাবেসের মধ্যে বিভিন্ন অ্যাপ্লিকেশন বা ইউজারের ডাটা আলাদা রাখতে সাহায্য করে। এটি ডাটাকে আলাদা ও নিরাপদ রাখতে সাহায্য করে এবং একই ডাটাবেসে একই নামের একাধিক টেবিল ব্যবহারের সুযোগ দেয়।
3)Explain the Primary Key and Foreign Key concepts in PostgreSQL--->

🔑 Primary Key (প্রাইমারি কি)
Primary Key হলো টেবিলের এমন একটি কলাম বা একাধিক কলামের সমন্বয়, যা প্রতিটি রেকর্ডকে অন্য রেকর্ড থেকে আলাদা করে চিহ্নিত করে।

🟢 বৈশিষ্ট্য:
এর মান অন্যদের থেকে ইউনিক (অদ্বিতীয়) হতে হবে।

এটি NULL হতে পারে না (খালি থাকতে পারে না)।

একটি টেবিলে মাত্র একটি Primary Key থাকতে পারে।


4)What is the difference between the VARCHAR and CHAR data types?

VARCHAR (Variable Character) হলো পরিবর্তনশীল দৈর্ঘ্যের ডেটা টাইপ। অর্থাৎ, যদি তুমি VARCHAR(50) দাও, তবুও তুমি যদি মাত্র 10 অক্ষরের লেখা রাখো, তাহলে সেটি শুধু সেই 10 অক্ষরই সংরক্ষণ করবে, অতিরিক্ত কোনো জায়গা নষ্ট হবে না। এটি নাম, ইমেইল, ঠিকানা ইত্যাদি ধরনের ডেটার জন্য খুব উপযুক্ত যেখানে দৈর্ঘ্য ছোট-বড় হতে পারে।

অন্যদিকে, CHAR (Character) হলো নির্দিষ্ট দৈর্ঘ্যের ডেটা টাইপ। যদি তুমি CHAR(10) দাও এবং মাত্র 4 অক্ষরের কিছু লেখো, তাহলে বাকি 6টি জায়গা ফাঁকা স্পেস দিয়ে পূরণ করে রাখবে। এর মানে, CHAR সবসময় নির্ধারিত পরিমাণ জায়গা ব্যবহার করে,

5)Explain the purpose of the WHERE clause in a SELECT statement.
WHERE clause ব্যবহার করে নির্দিষ্ট শর্ত অনুযায়ী ডাটা বের করা যায়। যখন ডাটাবেজে অনেক তথ্য থাকে, তখন WHERE ক্লজ ব্যবহার করে প্রয়োজনীয় তথ্য ফিল্টার করা হয়।

ব্যবহার
নির্দিষ্ট শর্তে ডাটা খুঁজতে – যেমন, বয়স ১৮-এর বেশি এমন শিক্ষার্থীদের বের করা।
তুলনা করতে – =, >, <, >=, <=, != দিয়ে চেক করা।
বেশি শর্ত একসাথে দিতে – AND, OR, NOT ব্যবহার করে।
আনুমানিক মিল খুঁজতে – LIKE, ILIKE দিয়ে আংশিক মিলিয়ে খোঁজা।

6)What are the LIMIT and OFFSET clauses used for?

🔹 LIMIT:
LIMIT ক্লজ ব্যবহার করা হয় কতটি রেকর্ড দেখাবে তা নির্ধারণ করতে। অর্থাৎ, তুমি যদি টেবিলে অনেক রেকর্ড থেকে শুধু প্রথম ৫টা দেখতে চাও — তখন LIMIT ব্যবহার করা হয়।

🔹 OFFSET:
OFFSET ক্লজ ব্যবহার করা হয় ডেটার কতটি রেকর্ড স্কিপ (এড়িয়ে) করবে তা নির্ধারণ করতে। অর্থাৎ, তুমি যদি প্রথম ৫টা রেকর্ড না দেখিয়ে, ৬ নম্বর থেকে শুরু করে পরবর্তী ৫টা দেখতে চাও — তখন OFFSET ব্যবহার করা হয়।
7)
How can you modify data using UPDATE statements?
UPDATE স্টেটমেন্ট ব্যবহার করে ডাটাবেজের বিদ্যমান রেকর্ড পরিবর্তন করা যায়। এটি সাধারণত WHERE ক্লজের সাথে ব্যবহার করা হয়, যাতে শুধুমাত্র নির্দিষ্ট রেকর্ড পরিবর্তন করা হয়।
8) What is the significance of the JOIN operation, and how does it work in PostgreSQL?
JOIN একটি খুবই শক্তিশালী অপারেশন, যা একাধিক টেবিলের মধ্যে সম্পর্কিত ডাটা একত্রিত করতে সাহায্য করে। ডাটাবেজে একাধিক টেবিল থাকতে পারে এবং কখনও কখনও তথ্য সম্পর্কিত টেবিলগুলো থেকে একসাথে আনা প্রয়োজন হয়। JOIN অপারেশন বিভিন্ন টেবিলের মধ্যে সম্পর্ক তৈরি করে, এবং এটি তথ্য বিশ্লেষণকে আরও কার্যকর এবং সহজ করে তোলে।

PostgreSQL JOIN অপারেশন
PostgreSQL-এ JOIN অপারেশন ব্যবহার করে একাধিক টেবিলের মধ্যে সম্পর্কিত ডাটা একত্রিত করা হয়। নিচে বিভিন্ন ধরনের JOIN অপারেশন এবং তাদের কাজের বর্ণনা দেয়া হলো:

JOIN প্রকার ---	কী করে?
INNER JOIN----	দুই টেবিলের মধ্যে মিল থাকা রেকর্ডগুলো দেখায়।
LEFT JOIN----	প্রথম (বাম) টেবিলের সব রেকর্ড দেখায়, আর দ্বিতীয় টেবিল থেকে মিল পাওয়া রেকর্ড যোগ করে।
RIGHT JOIN	---দ্বিতীয় (ডান) টেবিলের সব রেকর্ড দেখায়, আর প্রথম টেবিল থেকে মিল পাওয়া রেকর্ড যোগ করে।
FULL JOIN---	দুই টেবিলের সব রেকর্ড দেখায়, যেখানে মিল আছে বা নেই।

9)Explain the GROUP BY clause and its role in aggregation operations
PostgreSQL-এ GROUP BY ক্লজ ব্যবহার করে ডাটাকে একাধিক গ্রুপে ভাগ করা হয় এবং প্রতি গ্রুপের উপর অ্যাগ্রিগেট ফাংশন (যেমন: COUNT(), SUM(), AVG(), MAX(), MIN()) প্রয়োগ করা হয়। এটি ডাটা বিশ্লেষণ এবং সারাংশ তৈরি করতে সাহায্য করে।

GROUP BY
GROUP BY ডাটাকে একই মান থাকা রেকর্ডগুলোর গ্রুপ করে।
এরপর, অ্যাগ্রিগেট ফাংশন (যেমন: COUNT(), SUM(), AVG()) প্রয়োগ করা হয় গ্রুপের উপর, যার মাধ্যমে গ্রুপভিত্তিক বিশ্লেষণ করা যায়।

 10)How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?

 *)use of count --- SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
*)use of sum----SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
*) use of avg ----SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

