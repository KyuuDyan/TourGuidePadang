/*
  Warnings:

  - Made the column `fasilitas` on table `tempatwisata` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `tempatwisata` MODIFY `fasilitas` VARCHAR(191) NOT NULL;
