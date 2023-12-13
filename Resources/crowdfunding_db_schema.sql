CREATE TABLE category (
    category_id varchar(4) PRIMARY KEY,
    category varchar(40) NOT NULL
);
CREATE TABLE subcategory (
    subcategory_id varchar(8) PRIMARY KEY,
    subcategory varchar(40) NOT NULL
);
CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name varchar(40) NOT NULL,
    last_name varchar(40) NOT NULL,
    email varchar(50) NOT NULL
);
CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY,
    contact_id INTEGER NOT NULL,
    company_name varchar(40) NOT NULL,
    description varchar(60) NOT NULL,
    goal float NOT NULL,
    pledged float NOT NULL,
    outcome varchar(20) NOT NULL,
    backers_count INTEGER NOT NULL,
    country varchar(3) NOT NULL,
    currency varchar(4) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(4) NOT NULL,
    subcategory_id varchar(8) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
