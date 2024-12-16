// src/components/Wisata_components/Wisata.js
import Link from 'next/link';
import React from 'react';
import { getTempatWisata } from '@/lib/fetcher';

const Wisata = async () => {
  const wisataData = await getTempatWisata()
  console.log(wisataData)
  return (
    <div className="p-8">
      <h1 className="text-3xl font-bold mb-6 text-center">Tempat Wisata di Padang</h1>
      <div className="grid gap-8">
        {wisataData.map((item, index) => (
            <a key={index} href={`/Wisata/${item.id}`}>
              <div className="flex flex-col md:flex-row items-center border p-4 rounded-lg shadow-lg hover:shadow-xl transition-shadow duration-300 cursor-pointer">
                {/* Gunakan gambar default atau gambar yang sesuai */}
                <img
                  src={item.image}  // Pastikan image ada, atau gunakan gambar default
                  alt={item.namaTempat}
                  className="w-full md:w-1/2 h-64 object-cover rounded-md mb-4 md:mb-0 md:mr-6"
                />
                <div className="flex flex-col justify-between md:w-1/2">
                  <h2 className="text-xl font-semibold mb-2">{item.namaTempat}</h2>
                  <p className="text-gray-700">{item.deskripsi}</p>
                </div>
              </div>
            </a>
        ))}
      </div>
    </div>
  );
};

export default Wisata;
