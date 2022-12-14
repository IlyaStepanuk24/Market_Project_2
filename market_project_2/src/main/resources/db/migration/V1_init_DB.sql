-- -- USERS
-- drop sequence if exists user_seq;
-- create sequence user_seq start 1 increment 1;
--
-- drop table if exists users cascade;
-- create table users
-- (
--     id int8 not null,
--     archive boolean not null,
--     email varchar(255),
--     user_name varchar(255),
--     password varchar(255),
--     role varchar(255),
--     basket_id int8,
--     primary key (id)
--                    );
--
-- -- BASKET
--
-- drop sequence if exists basket_seq;
-- create sequence basket_seq start 1 increment 1;
--
-- drop table if exists baskets cascade;
-- create table baskets
--                     (
--     id int8 not null,
--     user_id int8,
--     primary key (id));
--
-- -- LINK BETWEEN BASKET AND USER
-- alter table if exists baskets
--     add constraint baskets_fk_user
--         foreign key (user_id)
--             references users;
--
-- alter table if exists users
--     add constraint users_fk_basket
--         foreign key (basket_id)
--             references baskets;
--
-- -- Category
--
-- drop sequence if exists category_seq;
-- create sequence category_seq start 1 increment 1;
--
-- drop table if exists categories cascade;
-- create table categories
-- (
--     id int8 not null,
--     title varchar(255),
--     primary key (id)
-- );
--
-- -- PRODUCTS
--
-- drop sequence if exists product_seq;
-- create sequence product_seq start 1 increment 1;
--
-- drop table if exists products cascade;
-- create table products
-- (
--     id int8 not null,
--     price numeric(19, 2),
--     title varchar(255),
--     primary key (id)
-- );
--
-- -- PRODUCTS_CATEGORIES
--
-- drop table if exists products_categories cascade;
-- create table products_categories
-- (
--     basket_id int8 not null,
--     category_id int8 not null
-- );
--
-- -- LINK BETWEEN PRODUCTS_CATEGORIES AND BASKETS
--
-- alter table if exists products_categories
--     add constraint products_categories_fk_basket
--         foreign key (basket_id)
--             references baskets;
--
-- -- LINK BETWEEN PRODUCTS_CATEGORIES AND CATEGORIES
--
-- alter table if exists products_categories
--     add constraint products_categories_fk_category
--         foreign key (category_id)
--             references categories;
--
-- -- ORDERS
--
-- drop sequence if exists order_seq;
-- create sequence order_seq start 1 increment 1;
--
-- drop table if exists orders cascade;
-- create table orders
-- (
--     id int8 not null,
--     address varchar(255),
--     created timestamp,
--     status varchar(255),
--     sum numeric(19, 2),
--     updated timestamp,
--     user_id int8,
--     primary key (id)
-- );
--
-- -- LINK BETWEEN ORDERS AND USERS
--
-- alter table if exists orders
--     add constraint orders_fk_user
--         foreign key (user_id)
--             references users;
--
-- -- ORDERS_DETAILS
-- drop table if exists orders_details cascade;
-- create table orders_details
-- (
--     id int8 not null,
--     amount numeric(19, 2),
--     price numeric(19, 2),
--     order_id int8,
--     product_id int8,
--     details_id int8 not null,
--     primary key (id)
-- );
--
-- -- LINK BETWEEN ORDERS_DETAILS AND USERS
--
-- alter table if exists orders
--     add constraint orders_fk_user
--         foreign key (user_id)
--             references users;
--
--
