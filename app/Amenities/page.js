"use client";

import React, { useEffect, useRef } from "react";

const Amenities = () => {
  const mapRef = useRef(null);

  useEffect(() => {
    const loadMap = () => {
      const map = new window.google.maps.Map(mapRef.current, {
        center: { lat: -0.9492496, lng: 100.3488093 }, // Fokus Kota Padang
        zoom: 13,
        mapTypeControl: false,
        streetViewControl: false,
        fullscreenControl: false,
        styles: [
          {
            featureType: "poi",
            elementType: "labels",
            stylers: [{ visibility: "off" }], // Sembunyikan semua POI
          },
          {
            featureType: "poi.place_of_worship",
            elementType: "labels",
            stylers: [{ visibility: "on" }], // Tampilkan masjid
          },

        ],
      });

      // Tambahkan marker untuk lokasi tertentu jika diperlukan
    };

    if (!window.google) {
      const script = document.createElement("script");
      script.src = `https://maps.googleapis.com/maps/api/js?key=AIzaSyBBftwDWo-TGpRsJGTFAeDO2bxDMLAHH3o`;
      script.async = true;
      script.onload = loadMap;
      document.head.appendChild(script);
    } else {
      loadMap();
    }
  }, []);

  return (
    <section className="bg-black relative w-full h-[98vh] flex flex-col items-center justify-center py-20">
      {/* Judul Section */}
      <h2 className="text-3xl md:text-4xl font-bold text-white mb-6">
        Mesjid
      </h2>

      {/* Google Maps */}
      <div
        ref={mapRef}
        className="w-11/12 md:w-3/4 h-3/4 rounded-lg overflow-hidden shadow-lg py-20"
      ></div>
    </section>
  );
};

export default Amenities;
