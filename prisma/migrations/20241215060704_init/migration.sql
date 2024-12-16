-- CreateTable
CREATE TABLE `TempatWisata` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `namaTempat` VARCHAR(191) NOT NULL,
    `deskripsi` VARCHAR(191) NULL,
    `lokasi` VARCHAR(191) NOT NULL,
    `koordinat` VARCHAR(191) NULL,
    `kategori` VARCHAR(191) NULL,
    `hargaTiket` DOUBLE NULL,
    `jamOperasional` VARCHAR(191) NULL,
    `kontak` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `namaUser` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `role` ENUM('user', 'admin') NOT NULL DEFAULT 'user',
    `tanggalDaftar` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `User_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Event` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `namaEvent` VARCHAR(191) NOT NULL,
    `deskripsi` VARCHAR(191) NULL,
    `tanggalMulai` DATETIME(3) NOT NULL,
    `tanggalSelesai` DATETIME(3) NULL,
    `lokasiEvent` VARCHAR(191) NOT NULL,
    `penyelenggara` VARCHAR(191) NULL,
    `kontakEvent` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Amenities` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `idTempatWisata` INTEGER NOT NULL,
    `namaAmenity` VARCHAR(191) NOT NULL,
    `deskripsi` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `KomentarRating` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `idTempatWisata` INTEGER NOT NULL,
    `idUser` INTEGER NOT NULL,
    `komentar` VARCHAR(191) NULL,
    `rating` INTEGER NOT NULL,
    `tanggalKomentar` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Amenities` ADD CONSTRAINT `Amenities_idTempatWisata_fkey` FOREIGN KEY (`idTempatWisata`) REFERENCES `TempatWisata`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `KomentarRating` ADD CONSTRAINT `KomentarRating_idTempatWisata_fkey` FOREIGN KEY (`idTempatWisata`) REFERENCES `TempatWisata`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `KomentarRating` ADD CONSTRAINT `KomentarRating_idUser_fkey` FOREIGN KEY (`idUser`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
