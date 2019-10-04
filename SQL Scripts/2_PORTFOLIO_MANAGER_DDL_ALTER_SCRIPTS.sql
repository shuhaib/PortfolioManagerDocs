ALTER TABLE `OE` ADD FOREIGN KEY (`Organization_id`) REFERENCES `Organization` (`id`);

ALTER TABLE `ServiceOffering` ADD FOREIGN KEY (`OE_id`) REFERENCES `OE` (`id`);

ALTER TABLE `Portfolio` ADD FOREIGN KEY (`ServiceOffering_id`) REFERENCES `ServiceOffering` (`id`);

ALTER TABLE `KPI` ADD FOREIGN KEY (`Project_id`) REFERENCES `Project` (`id`);

ALTER TABLE `KPI_Data` ADD FOREIGN KEY (`KPI_id`) REFERENCES `KPI` (`id`);

ALTER TABLE `Portfolio` ADD FOREIGN KEY (`id`) REFERENCES `Project` (`Portfolio_id`);

ALTER TABLE `OE` ADD FOREIGN KEY (`country_code`) REFERENCES `Organization` (`country_code`);

ALTER TABLE `ServiceOffering` ADD FOREIGN KEY (`country_code`) REFERENCES `OE` (`country_code`);