/*
  Warnings:

  - You are about to drop the `gambar` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `gambar` DROP FOREIGN KEY `Gambar_idTempatWisata_fkey`;

-- DropTable
DROP TABLE `gambar`;
