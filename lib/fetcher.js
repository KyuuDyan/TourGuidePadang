import prisma from './prisma.js'; // Pastikan jalur ke prismaClient.js sudah benar

// Fungsi untuk mengambil data tempat wisata beserta relasi
async function getTempatWisata() {
  try {
    // Mengambil data tempat wisata termasuk relasi
    const tempatWisata = await prisma.tempatWisata.findMany({
    });

    console.log(tempatWisata); // Debugging untuk melihat hasil query
    return tempatWisata;
  } catch (error) {
    console.error('Terjadi kesalahan saat mengambil data:', error);
    throw new Error('Gagal mengambil data tempat wisata');
  }
}

// Fungsi untuk mengambil data event
async function getEvents() {
  try {
    // Mengambil data event
    const events = await prisma.event.findMany({
      include: {
        // Tambahkan relasi jika diperlukan (misal: tempatWisata, atau relasi lainnya)
      },
    });

    console.log(events); // Debugging untuk melihat hasil query
    return events;
  } catch (error) {
    console.error('Terjadi kesalahan saat mengambil data event:', error);
    throw new Error('Gagal mengambil data event');
  }
}

export { getTempatWisata, getEvents };
