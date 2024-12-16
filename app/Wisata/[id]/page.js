import { getTempatWisata } from "@/lib/fetcher";

export default async function WisataDetail({ params }) {
  const { id } = params; // Ambil parameter 'id' dari URL

  // Ambil data tempat wisata dari database
  const wisataData = await getTempatWisata();
  const selectedWisata = wisataData.find((wisata) => wisata.id === parseInt(id));

  if (!selectedWisata) {
    return <div className="container mx-auto p-6">Tempat wisata tidak ditemukan.</div>;
  }

  return (
    <div className="container mx-auto p-6 py-20">
      {/* Gambar utama tempat wisata */}
      <div className="mb-6">
        <img
          src={selectedWisata.image || '/img/Ark.png'}
          alt={selectedWisata.namaTempat}
          className="w-full h-96 object-cover rounded-lg shadow-md"
        />
      </div>

      {/* Galeri gambar tambahan */}
      <div className="mb-6">
        <h2 className="text-xl font-semibold mb-4">Galeri Foto</h2>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
          {selectedWisata.galeri && selectedWisata.galeri.length > 0 ? (
            selectedWisata.galeri.map((foto, index) => (
              <img
                key={index}
                src={foto || '/default-image.jpg'}
                alt={`Foto ${index + 1} - ${selectedWisata.namaTempat}`}
                className="w-full h-40 object-cover rounded-lg shadow-md"
              />
            ))
          ) : (
            <p className="text-gray-500 col-span-full">Tidak ada foto tambahan tersedia.</p>
          )}
        </div>
      </div>

      {/* Konten utama */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        {/* Sejarah tempat wisata */}
        <div className="md:col-span-2">
          <h1 className="text-3xl font-bold mb-4">{selectedWisata.namaTempat}</h1>
          <p className="text-gray-600 mb-6">{selectedWisata.sejarah}</p>
        </div>

        {/* Informasi detail */}
        <div className="bg-gray-100 p-4 rounded-lg shadow-md">
          <h2 className="text-yellow-600 text-xl font-semibold mb-2">Informasi Detail</h2>
          <ul className="list-disc pl-5 text-gray-700">
            <li><strong>Lokasi:</strong> {selectedWisata.lokasi}</li>
            <li><strong>Koordinat:</strong> {selectedWisata.koordinat}</li>
            <li><strong>Harga Tiket:</strong> Rp {selectedWisata.hargaTiket.toLocaleString()}</li>
            <li><strong>Jam Operasional:</strong> {selectedWisata.jamOperasional}</li>
            <li><strong>Kontak:</strong> {selectedWisata.kontak}</li>
            <li><strong>Kategori:</strong> {selectedWisata.kategori}</li>
          </ul>
        </div>
      </div>

      {/* Map */}
      <div className="mt-6">
        <h2 className="text-xl font-semibold mb-4">Lokasi pada Peta</h2>
        <div className="w-full h-96 rounded-lg overflow-hidden shadow-md">
          <iframe
            src={`https://www.google.com/maps?q=${selectedWisata.koordinat}&z=15&output=embed`}
            className="w-full h-full border-0"
            allowFullScreen
            loading="lazy"
            referrerPolicy="no-referrer-when-downgrade"
          ></iframe>
        </div>
      </div>
    </div>
  );
}
