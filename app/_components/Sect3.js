"use client"; // Karena komponen client-side

import React from "react";

const Sect3 = () => {
  return (
    <section className="relative w-full h-[98vh] bg-gray-900 flex flex-col items-center justify-center">
      {/* Judul Section */}
      <h2 className="text-3xl md:text-4xl font-bold text-white mb-6">
        Kota Padang
      </h2>

      {/* Google Maps */}
      <div className="w-11/12 md:w-3/4 h-3/4 rounded-lg overflow-hidden shadow-lg">
        <iframe
          title="Google Maps - Kota Padang"
          className="w-full h-full"
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63779.248900984556!2d100.3488093!3d-0.9492496!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd4b9c09c74b6d3%3A0x3039d80b220c320!2sPadang%2C%20Kota%20Padang%2C%20Sumatera%20Barat!5e0!3m2!1sen!2sid!4v1702555555555!5m2!1sen!2sid"
          allowFullScreen=""
          loading="lazy"
          referrerPolicy="no-referrer-when-downgrade"
        ></iframe>
      </div>
    </section>
  );
};

export default Sect3;
