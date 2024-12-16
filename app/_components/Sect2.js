"use client";
import React, { useState } from "react";

const images = [
  "/img/Padang.jpg",
  "/img/Mesjid.jpg",
  "/img/Museum.jpg",
];

const Sect2 = () => {
  const [selectedImage, setSelectedImage] = useState(images[0]);

  return (
    <section className="relative w-full h-[90vh] bg-black">
      {/* Full Section Image */}
      <div className="absolute top-0 left-0 w-full h-full">
        <img
          src={selectedImage}
          alt="Selected"
          className="w-full h-full object-cover transition-transform duration-500"
        />
      </div>

      {/* Overlay (Optional Gradient for better visibility) */}
      <div className="absolute top-0 left-0 w-full h-full bg-gradient-to-t from-black via-transparent to-transparent"></div>

      {/* Thumbnail Slider */}
      <div className="absolute bottom-5 left-5 flex space-x-4 z-10">
        {images.map((image, index) => (
          <button
            key={index}
            onClick={() => setSelectedImage(image)}
            className={`w-20 h-14 border-2 ${
              selectedImage === image ? "border-yellow-400" : "border-gray-700"
            } rounded overflow-hidden transition-all duration-300`}
          >
            <img
              src={image}
              alt={`Thumbnail ${index}`}
              className="w-full h-full object-cover hover:scale-110 transition-transform duration-300"
            />
          </button>
        ))}
      </div>
    </section>
  );
};

export default Sect2;
