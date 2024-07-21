CREATE TABLE `users` (
  `user_id` bigint PRIMARY KEY,
  `username` varchar(100),
  `current_balance` int,
  `prestige_level` int,
  `prestige_multiplier` decimal(5,2),
  `last_active` timestamp
);

CREATE TABLE `generators` (
  `generator_id` serial PRIMARY KEY,
  `generator_name` varchar(100),
  `base_generation_rate` int,
  `price` int,
  `unlock_level` int
);

CREATE TABLE `user_generators` (
  `user_id` bigint,
  `generator_id` int,
  `quantity` int,
  `total_generation_rate` int
);

CREATE TABLE `transactions` (
  `transaction_id` serial PRIMARY KEY,
  `user_id` bigint,
  `amount` int,
  `transaction_type` varchar(50),
  `timestamp` timestamp DEFAULT 'CURRENT_TIMESTAMP'
);

CREATE TABLE `games` (
  `game_id` serial PRIMARY KEY,
  `game_name` varchar(100),
  `description` text
);

CREATE TABLE `game_records` (
  `record_id` serial PRIMARY KEY,
  `user_id` bigint,
  `game_id` int,
  `result` varchar(50),
  `bet_amount` int,
  `win_amount` int,
  `timestamp` timestamp DEFAULT 'CURRENT_TIMESTAMP'
);

CREATE TABLE `upgrades` (
  `upgrade_id` serial PRIMARY KEY,
  `upgrade_name` varchar(100),
  `description` text,
  `price` int,
  `effect` varchar(100)
);

CREATE TABLE `user_upgrades` (
  `user_id` bigint,
  `upgrade_id` int,
  `quantity` int,
  `effect_value` decimal(5,2)
);

ALTER TABLE `user_generators` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `user_generators` ADD FOREIGN KEY (`generator_id`) REFERENCES `generators` (`generator_id`);

ALTER TABLE `transactions` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `game_records` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `game_records` ADD FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

ALTER TABLE `user_upgrades` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `user_upgrades` ADD FOREIGN KEY (`upgrade_id`) REFERENCES `upgrades` (`upgrade_id`);
