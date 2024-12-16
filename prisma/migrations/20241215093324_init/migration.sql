/*
  Warnings:

  - You are about to drop the column `gambar` on the `tempatwisata` table. All the data in the column will be lost.
  - You are about to drop the column `kategori` on the `tempatwisata` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `tempatwisata` DROP COLUMN `gambar`,
    DROP COLUMN `kategori`,
    ADD COLUMN `fasilitas` VARCHAR(191) NULL;
