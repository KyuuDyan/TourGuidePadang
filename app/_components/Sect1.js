"use client";
import React from "react";

const Sect1 = ({ onSignUpClick }) => {
  return (
    <section className="relative h-screen w-full overflow-hidden">
      {/* Background Video */}
      <video
        className="absolute top-0 left-0 w-full h-full object-cover"
        src="/vidio/Padang.mp4"
        autoPlay
        loop
        muted
        playsInline
      ></video>

      {/* Overlay Gradient */}
      <div className="absolute top-0 left-0 w-full h-full bg-gradient-to-b from-transparent to-black"></div>

      {/* Content */}
      <div className="relative z-10 flex items-center justify-center h-full text-center">
        <div>
          <h1 className="text-5xl md:text-6xl font-bold text-white mb-8 uppercase">
            Welcome to Kota Padang
          </h1>
          {/* Sign Up Button
          <button
            className="bg-yellow-500 text-gray-900 font-semibold px-8 py-3 rounded-full hover:bg-yellow-400 transition duration-300"
            onClick={onSignUpClick} // Call the passed function to open the popup
          >
            SIGN UP
          </button> */}
        </div>
      </div>
    </section>
  );
};

export default Sect1;
