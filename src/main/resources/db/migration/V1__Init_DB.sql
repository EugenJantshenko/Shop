create table ware
(
    id            bigint not null auto_increment,
    sealed        int default 0,
    manufacturer  varchar(255),
    price         double precision,
    received_date date,
    sealed_date   date,
    serial_number varchar(255),
    ware_name     varchar(255) unique references ware_count (id),
    name_id       bigint,
    type_id       bigint references ware_type (id),
    primary key (id)
);

create table ware_category
(
    id            bigint not null auto_increment,
    category_name varchar(255),
    primary key (id)
);

create table ware_type
(
    id          bigint not null auto_increment,
    blocked     int default 0,
    type_name   varchar(255),
    category_id bigint references ware_category (id),
    primary key (id)
);

create table ware_count
(
    id    bigint not null auto_increment,
    count bigint,
    primary key (id)
);
