/*
  Warnings:

  - You are about to drop the column `kontakEvent` on the `event` table. All the data in the column will be lost.
  - You are about to drop the column `lokasiEvent` on the `event` table. All the data in the column will be lost.
  - You are about to drop the column `penyelenggara` on the `event` table. All the data in the column will be lost.
  - You are about to drop the column `tanggalMulai` on the `event` table. All the data in the column will be lost.
  - You are about to drop the column `tanggalSelesai` on the `event` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `event` DROP COLUMN `kontakEvent`,
    DROP COLUMN `lokasiEvent`,
    DROP COLUMN `penyelenggara`,
    DROP COLUMN `tanggalMulai`,
    DROP COLUMN `tanggalSelesai`;
