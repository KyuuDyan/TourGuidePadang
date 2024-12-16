/*
  Warnings:

  - You are about to drop the column `fasilitas` on the `tempatwisata` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `tempatwisata` DROP COLUMN `fasilitas`,
    ADD COLUMN `kategori` VARCHAR(191) NULL;
