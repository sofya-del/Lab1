UPDATE senders SET sender_id = 100 WHERE sender_id = 1;
SELECT * FROM correspondence WHERE sender_id = 100;
SELECT * FROM correspondence WHERE sender_id = 2;
DELETE FROM senders WHERE sender_id = 2;
SELECT * FROM correspondence WHERE sender_id = 2;