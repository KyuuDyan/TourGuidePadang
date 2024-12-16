/*
  Warnings:

  - You are about to drop the `komentarrating` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `amenities` DROP FOREIGN KEY `Amenities_idTempatWisata_fkey`;

-- DropForeignKey
ALTER TABLE `komentarrating` DROP FOREIGN KEY `KomentarRating_idTempatWisata_fkey`;

-- DropForeignKey
ALTER TABLE `komentarrating` DROP FOREIGN KEY `KomentarRating_idUser_fkey`;

-- DropTable
DROP TABLE `komentarrating`;

-- DropTable
DROP TABLE `user`;
