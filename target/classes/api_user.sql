create table api_user
(
    id       integer generated by default as identity
        primary key,
    username varchar(30) default ('user-'::text || currval('api_user_id_seq'::regclass)) not null,
    password varchar                                                                     not null,
    role     varchar     default 'ROLE_USER'::character varying                          not null
);

alter table api_user
    owner to postgres;

