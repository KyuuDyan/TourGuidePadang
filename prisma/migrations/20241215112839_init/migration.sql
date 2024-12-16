-- CreateTable
CREATE TABLE `Gambar` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `url` VARCHAR(191) NOT NULL,
    `idTempatWisata` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Gambar` ADD CONSTRAINT `Gambar_idTempatWisata_fkey` FOREIGN KEY (`idTempatWisata`) REFERENCES `TempatWisata`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
