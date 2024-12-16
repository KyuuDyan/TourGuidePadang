// src/components/Event_components/Event.js
import React from 'react';
import { getEvents } from '@/lib/fetcher'; // Import fungsi fetcher untuk mengambil data Event

const Event = async () => {
  // Ambil data Event dari database
  const eventData = await getEvents();
  console.log(eventData);

  return (
    <div className="p-8">
      <h1 className="text-3xl font-bold mb-6 text-center">Event Lokal di Padang</h1>
      <div className="grid gap-8">
        {eventData.map((item, index) => (
          <div
            key={index}
            className="flex flex-col md:flex-row items-center border p-4 rounded-lg shadow-lg hover:shadow-xl transition-shadow duration-300"
          >
            {/* Gunakan gambar default atau gambar yang sesuai */}
            <img
              src={item.image} // Gambar default jika item.image tidak tersedia
              alt={item.namaEvent}
              className="w-full md:w-1/2 h-64 object-cover rounded-md mb-4 md:mb-0 md:mr-6"
            />
            <div className="flex flex-col justify-between md:w-1/2">
              <h2 className="text-xl font-semibold mb-2">{item.namaEvent}</h2>
              <p className="text-gray-700">{item.deskripsi || 'Tidak ada deskripsi tersedia.'}</p>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Event;
