### What is PostgreSQL?

### What is the purpose of a database schema in PostgreSQL?

### Explain the Primary Key and Foreign Key concepts in PostgreSQL.

### What is the difference between the VARCHAR and CHAR data types?

### xplain the purpose of the WHERE clause in a SELECT statement.

### What are the LIMIT and OFFSET clauses used for?

### How can you modify data using UPDATE statements?

### What is the significance of the JOIN operation, and how does it work in PostgreSQL?

### Explain the GROUP BY clause and its role in aggregation operations.

### How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?

# PostgreSQL

## ১. PostgreSQL কী?

PostgreSQL হলো একটা ওপেন সোর্স অবজেক্ট-রিলেশনাল ডেটাবেজ ম্যানেজমেন্ট সিস্টেম (RDBMS), যা ডাটাবেস হিসেবে কাজ করে। অর্থাৎ, আমরা আমাদের তথ্য বা ডাটা এখানে সঞ্চয় ও সংরক্ষণ করি যাতে প্রয়োজনমতো তা বের করা যায় এবং ব্যবহার করা যায়। এটা অনেক শক্তিশালী, দ্রুত এবং নিরাপদ।

আমরা যখন অনেক ধরনের ডাটা যেমন নাম, ঠিকানা, নম্বর ইত্যাদি রাখতে চাই, তখন PostgreSQL আমাদের সেই ডাটা গুছিয়ে রাখে এবং প্রয়োজনমতো আমরা সহজেই দেখতে পারি বা পরিবর্তন করতে পারি। এতে একসঙ্গে অনেক মানুষ বা অ্যাপ্লিকেশন ডাটা ব্যবহার করতে পারে, আর ডাটা ঠিকঠাক থাকে। PostgreSQL JSON সহ বিভিন্ন আধুনিক ডেটা ফরম্যাট সাপোর্ট করে, ফলে এটি আধুনিক ওয়েব অ্যাপ্লিকেশন ও সফটওয়্যারের জন্য খুবই উপযোগী।

## ২. PostgreSQL-এ ডাটাবেস স্কিমার উদ্দেশ্য কী?

PostgreSQL-এ স্কিমা হলো ডাটাবেসের ভেতরে ডেটাগুলো গুছিয়ে রাখার একটা ব্যবস্থা, এক কথায় বলা যায় — এটি ডাটাবেসের জন্য একটা আলাদা ফোল্ডার বা সেকশন। যেমন, একটি অফিসে HR ডিপার্টমেন্ট ও Sales ডিপার্টমেন্ট আলাদা কাজ করে এবং তাদের ডকুমেন্টগুলোও আলাদা ফোল্ডারে রাখা হয়—তেমনি স্কিমার মাধ্যমে ডাটাবেসেও বিভিন্ন টেবিল, ভিউ, ফাংশন ইত্যাদি গোছানোভাবে আলাদা রাখা যায়।

স্কিমা ব্যবহারের অন্যতম সুবিধা হলো, আমরা একই ডাটাবেসে একই নামের একাধিক টেবিল রাখতে পারি, যদি সেগুলো আলাদা স্কিমায় থাকে। উদাহরণস্বরূপ, hr.employees এবং sales.employees — এখানে দুইটি আলাদা টেবিল, কারণ তারা ভিন্ন স্কিমায় আছে। এছাড়া, স্কিমার মাধ্যমে আমরা আলাদা আলাদা ইউজার বা অ্যাপ্লিকেশনকে নির্দিষ্ট ডেটা অ্যাক্সেস দেওয়ার সুবিধাও পাবো।
উদাহরণ:

```
CREATE SCHEMA hr;

CREATE TABLE hr.employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  position VARCHAR(50)
);
```

এখানে hr হলো স্কিমার নাম, যেখানে employees নামের একটি টেবিল রাখা হয়েছে। একইভাবে আমরা চাইলে finance.employees বা sales.employees নামে আরও টেবিল রাখতে পারি তারা একে অপরের সাথে কোনো ধরণের কনফ্লিক্ট করবে না।

---

## ৩. PostgreSQL-এ Primary Key এবং Foreign Key কী?

ডাটাবেজ ডিজাইনের সময় সবচেয়ে গুরুত্বপূর্ণ বিষয়গুলোর একটি হলো টেবিলের মধ্যে সম্পর্ক স্থাপন করা এবং রেকর্ডগুলোকে ইউনিকভাবে চিহ্নিত করা। রিলেশনাল ডাটাবেজ ব্যবহারের সময় Primary Key এবং Foreign Key এর ধারণা পরিষ্কারভাবে বোঝা অত্যন্ত জরুরি।

### Primary Key কী?

Primary Key হলো এমন একটি কলাম (বা একাধিক কলামের সমষ্টি) যা প্রতিটি রেকর্ডকে ইউনিক ভাবে চিহ্নিত করে। প্রাইমারি কি সবসময় ইউনিক হতে হবে অর্থাৎ একই মান দুইবার থাকতে পারবে না। NULL হতে পারবে না অর্থাৎ প্রাইমারি কি সবসময় উপস্থিত থাকতে হবে। একটি টেবিলে শুধু একটি Primary Key থাকতে পারে।

চলুন নিচে একটি উদাহরণ এর মাধ্যমে জেনে আসি প্রাইমারি কি সম্পর্কে:

```
CREATE TABLE students (
student_id SERIAL PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100)
);
```

এখানে স্টুডেন্ট টেবিল এর মধ্যে student_id প্রতিটি শিক্ষার্থীর জন্য ইউনিক আইডেন্টিফায়ার হিসেবে কাজ করছে। অর্থাৎ এখানে প্রাইমারি কী হচ্ছে student_id।

### Foreign Key কী?

Foreign Key হলো এমন একটি কলাম যা অন্য টেবিলের Primary Key রেফার করে। এটি টেবিল দুটির মধ্যে সম্পর্ক তৈরি করে।
ফরেইন কী অন্য টেবিলের প্রাইমারি কি/ইউনিক কী রেফার করে। কোনো টেবিলে ফরেন কী দিত চাইলে একই মান সেই টেবিলে থাকতে হবে, নাহলে ইনসার্ট বা আপডেট করা যাবেনা।
ফরেন কী এর মাধ্যমে আমরা এক বা একাধিক টেবিল এর মধ্যে সম্পর্ক তৈরি করতে পারি।

সিনট্যাক্স

```
FOREIGN KEY (column_name) REFERENCES referenced_table(referenced_column)
```

উদাহরণ:

```
CREATE TABLE students (
student_id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE enrollments (
id SERIAL PRIMARY KEY,
student_id INT,
course VARCHAR(100) NOT NULL,
FOREIGN KEY (student_id) REFERENCES students(student_id)
);
```

এখানে enrollments টেবিলের student_id কলামটি Foreign Key হিসেবে students টেবিলের student_id-কে রেফার করছে। এর ফলে, যেকোনো এনরোলমেন্টের রেকর্ড অবশ্যই একটি ছাত্রকে রেফার করবে।

## ৫. SELECT স্টেটমেন্টে WHERE ক্লজের কাজ কী?

SQL SELECT স্টেটমেন্টে WHERE ক্লজের ব্যবহার:

SQL-এ SELECT স্টেটমেন্টের মাধ্যমে আমরা ডেটাবেস থেকে তথ্য বা রেকর্ড সংগ্রহ করি। কিন্তু অনেক সময় আমরা পুরো টেবিল নয়, নির্দিষ্ট শর্ত পূরণকারী রেকর্ডগুলোর দরকার হয়। এই কাজের জন্যই WHERE ক্লজ ব্যবহার করা হয়।

#### WHERE ক্লজ কী?

WHERE ক্লজ ব্যবহার করে আমরা এমন শর্ত দিতে পারি, যাতে কেবলমাত্র নির্দিষ্ট শর্ত পূরণকারী রেকর্ডগুলোই ফলাফল হিসেবে আসে। ডেটা বিশ্লেষণ, রিপোর্ট তৈরি কিংবা অ্যাপ্লিকেশন ডেভেলপমেন্ট—সব ক্ষেত্রেই WHERE ক্লজের ব্যবহার অনিবার্য।

সিনট্যাক্স

```
SELECT column1, column2 FROM table_name WHERE condition;
```

উদাহরণ:

ধরি, আমাদের একটি employees নামের টেবিল আছে, এবং আমরা শুধু সেইসব কর্মচারীদের দেখতে চাই যারা Sales বিভাগে কাজ করেন।

```
SELECT * FROM employees WHERE department = 'Sales';
```

এই কুয়েরি শুধুমাত্র সেই রেকর্ডগুলো দেখাবে যেগুলোর department কলামে 'Sales' লেখা আছে।

```
SELECT * FROM products WHERE price > 100;
```

এই কুয়েরি শুধু মাত্র ঐসব প্রোডাক্ট দেখাবে যেসব প্রোডাক্ট এর প্রাইস ১০০ এর বেশি।

## ৪. VARCHAR এবং CHAR ডাটা টাইপের মধ্যে পার্থক্য কী?

ডেটাবেজ ডিজাইন করার সময় সঠিক ডেটা টাইপ নির্বাচন করা একটি গুরুত্বপূর্ণ কাজ। বিশেষ করে যখন আমরা টেক্সট বা স্ট্রিং ধরণের ডেটা সংরক্ষণ করি, তখন CHAR এবং VARCHAR এই দুইটি ডেটা টাইপ অনেক বেশি ব্যবহৃত হয়।

আমরা অনেকেই মনে করি দুটোই একইরকম কাজ করে — আসলে তা নয়। CHAR ও VARCHAR এর মধ্যে মূলত কিছু আচরণগত পার্থক্য রয়েছ।

### CHAR ও VARCHAR কী?

CHAR(n): একটি ফিক্সড দৈর্ঘ্যের ডেটা টাইপ। এটি সবসময় নির্দিষ্ট সংখ্যক ক্যারেক্টারের জায়গা দখল করে নেয়। যদি কম ক্যারেক্টার দেওয়া হয়, তাহলে বাকি জায়গা স্পেস দিয়ে পূরণ হয়।

VARCHAR(n): একটি ভ্যারিয়েবল দৈর্ঘ্যের ডেটা টাইপ। এটি শুধু প্রয়োজন অনুযায়ী জায়গা ব্যবহার করে
অতিরিক্ত কোনো স্পেস নেয় না।

উদাহরণ

CHAR ব্যবহার:

```
CREATE TABLE countries (
  code CHAR(2)
);
```

যেখানে code = 'US', code = 'BD' — সবসময় ২ ক্যারেক্টার জায়গা নেবে।

VARCHAR ব্যবহার:

```
CREATE TABLE users (
  name VARCHAR(100)
);
```

যদি name = 'Akther', তাহলে শুধু 6 ক্যারেক্টার স্টোর করবে।

### এখন প্রশ্ন হলো কখন কোনটি ব্যবহার করবেন?

CHAR ব্যবহার করুন যখন:

ডাটার দৈর্ঘ্য সবসময় একরকম হয় (যেমন দেশের কোড, জেন্ডার কোড, হ্যাশ ইত্যাদি)

পারফরম্যান্স গুরুত্বপূর্ণ (কারণ CHAR তুলনামূলক দ্রুত)

VARCHAR ব্যবহার করুন যখন:

ডাটার দৈর্ঘ্য ভিন্ন ভিন্ন হতে পারে (যেমন নাম, ইমেইল, ঠিকানা)
স্টোরেজ সাশ্রয়ী করতে চান

| বৈশিষ্ট্য    | CHAR                             | VARCHAR                    |
| ------------ | -------------------------------- | -------------------------- |
| দৈর্ঘ্য      | নির্দিষ্ট, ফিক্সড দৈর্ঘ্য        | পরিবর্তনশীল দৈর্ঘ্য        |
| স্টোরেজ      | সর্বদা নির্দিষ্ট জায়গা নেয়       | প্রয়োজন মতো জায়গা নেয়      |
| ব্যবহার      | যখন ডাটার দৈর্ঘ্য সব সময় সমান    | যখন ডাটার দৈর্ঘ্য ভিন্ন হয় |
| পারফরম্যান্স | ফিক্সড দৈর্ঘ্যের জন্য একটু দ্রুত | একটু ধীর                   |

---

## ৫. SELECT স্টেটমেন্টে WHERE ক্লজের কাজ কী?

SQL SELECT স্টেটমেন্টে WHERE ক্লজের ব্যবহার:

SQL-এ SELECT স্টেটমেন্টের মাধ্যমে আমরা ডেটাবেস থেকে তথ্য বা রেকর্ড সংগ্রহ করি। কিন্তু অনেক সময় আমরা পুরো টেবিল নয়, নির্দিষ্ট শর্ত পূরণকারী রেকর্ডগুলোর দরকার হয়। এই কাজের জন্যই WHERE ক্লজ ব্যবহার করা হয়।

#### WHERE ক্লজ কী?

WHERE ক্লজ ব্যবহার করে আমরা এমন শর্ত দিতে পারি, যাতে কেবলমাত্র নির্দিষ্ট শর্ত পূরণকারী রেকর্ডগুলোই ফলাফল হিসেবে আসে। ডেটা বিশ্লেষণ, রিপোর্ট তৈরি কিংবা অ্যাপ্লিকেশন ডেভেলপমেন্ট—সব ক্ষেত্রেই WHERE ক্লজের ব্যবহার অনিবার্য।

সিনট্যাক্স

```
SELECT column1, column2 FROM table_name WHERE condition;
```

উদাহরণ:

ধরি, আমাদের একটি employees নামের টেবিল আছে, এবং আমরা শুধু সেইসব কর্মচারীদের দেখতে চাই যারা Sales বিভাগে কাজ করেন।

```
SELECT * FROM employees WHERE department = 'Sales';
```

এই কুয়েরি শুধুমাত্র সেই রেকর্ডগুলো দেখাবে যেগুলোর department কলামে 'Sales' লেখা আছে।

```
SELECT * FROM products WHERE price > 100;
```

এই কুয়েরি শুধু মাত্র ঐসব প্রোডাক্ট দেখাবে যেসব প্রোডাক্ট এর প্রাইস ১০০ এর বেশি।
