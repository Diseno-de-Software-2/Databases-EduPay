use SistemaBancos;

INSERT INTO banco(nombre) VALUES ('Western Bank');

INSERT INTO banco(nombre) VALUES ('Eastern Bank');

INSERT INTO cuenta
VALUES (
        1,
        '1234567891011121',
        'Juan David Castillo Sierra',
        'juanchito@gmail.com',
        500000,
        1
    ), (
        2,
        '1111111111111111',
        'EduPay',
        'edupay@gmail.com',
        0,
        2
    ), (
        3,
        '1234567890123456',
        'Sebastian David Ramos Bouchra',
        'sebastech@gmail.com',
        1000000,
        1
    ), (
        4,
        '1234567891123456',
        'Francis Blanco Blanco',
        'francescoVirgolini@gmail.com',
        780000,
        1
    ), (
        5,
        '2222222255555555',
        'Jose Daniel Ocoro Lucumi',
        'niche@gmail.com',
        500000,
        2
    ), (
        6,
        '1548544752026354',
        'Juan David Castillo Sierra',
        'juanchito@gmail.com',
        500000,
        2
    ), (
        7,
        '2000000000000001',
        'Pedro Alfonso Molina Lara',
        'Pmolineus@gmail.com',
        250000,
        1
    ), (
        8,
        '3333333333333333',
        'Reinaldo Daniel Mote Prado',
        'Reiprado123@gmail.com',
        890500,
        2
    ), (
        9,
        '9999999999999999',
        'Camilo Andres Lopez Ruiz',
        'CMLRuiz@gmail.com',
        700000,
        1
    ), (
        10,
        '1555555555555514',
        'Camilo Andres Lopez Ruiz',
        'CMLRuiz@gmail.com',
        900000,
        2
    );

INSERT INTO `tarjeta`
VALUES (
        1,
        '1234567891011122',
        '2020-12-31',
        '123',
        'Visa',
        500000,
        1
    ), (
        2,
        '1599999999999999',
        '2022-10-19',
        '123',
        'Visa',
        750000,
        2
    ), (
        3,
        '2598589654258863',
        '2023-11-15',
        '123',
        'Mastercard',
        900000,
        1
    ), (
        4,
        '8545671455684525',
        '2020-11-15',
        '123',
        'American Express',
        1500000,
        3
    ), (
        5,
        '5786214523561581',
        '2022-05-15',
        '123',
        'American Express',
        2500000,
        9
    ), (
        6,
        '1225344869356215',
        '2021-09-08',
        '123',
        'Mastercard',
        1850000,
        8
    ), (
        7,
        '1422563254125635',
        '2022-02-02',
        '123',
        'Mastercard',
        750000,
        5
    ), (
        8,
        '1551545125812154',
        '2025-07-09',
        '123',
        'Visa',
        895000,
        4
    ), (
        9,
        '2445815135441344',
        '2024-02-12',
        '123',
        'Visa',
        600000,
        10
    ), (
        10,
        '3485515136472514',
        '2020-12-25',
        '123',
        'American Express',
        7580000,
        6
    );

INSERT INTO `transaccion`
VALUES (
        1,
        '2020-06-05',
        '12:50:00',
        '0',
        10000,
        1,
        1
    ), (
        2,
        '2019-07-06',
        '18:24:32',
        '0',
        15000,
        1,
        3
    ), (
        3,
        '2018-04-09',
        '22:58:32',
        '1',
        10000,
        4,
        8
    ), (
        4,
        '2020-08-08',
        '23:11:15',
        '1',
        25999,
        9,
        5
    ), (
        5,
        '2019-09-25',
        '18:12:36',
        '0',
        150000,
        4,
        8
    ), (
        6,
        '2009-02-13',
        '16:25:14',
        '1',
        14000,
        8,
        6
    ), (
        7,
        '2010-05-14',
        '08:37:05',
        '1',
        15000,
        10,
        9
    ), (
        8,
        '2016-07-25',
        '05:48:52',
        '0',
        152000,
        1,
        3
    ), (
        9,
        '2019-04-02',
        '19:58:25',
        '1',
        30000,
        10,
        9
    ), (
        10,
        '1999-01-01',
        '01:01:01',
        '1',
        11111,
        1,
        1
    );