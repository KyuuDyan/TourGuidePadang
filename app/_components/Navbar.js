"use client";

import React, { useState } from "react";

const Navbar = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  // Fungsi untuk toggle menu
  const toggleMenu = () => {
    setIsMenuOpen(!isMenuOpen);
  };

  return (
    <div className="fixed top-0 w-full z-50">
      <nav className="bg-gray-900 text-white px-6 py-4 flex items-center justify-between">
        {/* Logo */}
        <div className="flex justify-center">
          <img
            src="/img/Logo.png"
            alt="Logo"
            className="h-10"
          />
        </div>

        {/* Menu links untuk desktop */}
        <ul id="nav-links" className="hidden md:flex space-x-6">
          <li><a href="/" className="hover:text-yellow-400 font-bold">Home</a></li>
          <li><a href="/Wisata" className="hover:text-yellow-400 font-bold">Daftar Wisata</a></li>
          <li><a href="/Event" className="hover:text-yellow-400 font-bold">Event Lokal</a></li>
          <li><a href="/Amenities" className="hover:text-yellow-400 font-bold">Amenities</a></li>
        </ul>

        {/* Tombol untuk log in/sign up */}
        {/* <div className="hidden md:flex space-x-4">
          <button className="bg-gray-800 text-white px-4 py-2 rounded hover:bg-gray-700">Log In</button>
          <button className="bg-yellow-500 text-gray-900 px-4 py-2 rounded hover:bg-yellow-600">Sign Up</button>
        </div> */}

        {/* Button untuk mobile menu */}
        <button
          id="menu-toggle"
          className="md:hidden text-white focus:outline-none"
          onClick={toggleMenu}
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            className="h-6 w-6"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
          >
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M4 6h16M4 12h16m-7 6h7" />
          </svg>
        </button>
      </nav>

      {/* Mobile menu dengan animasi */}
      <div
        id="mobile-menu"
        className={`fixed top-16 left-0 w-full bg-gray-800 text-white space-y-4 py-4 px-6 z-50 transition-all duration-300 ease-in-out ${
          isMenuOpen ? "opacity-100 translate-y-0" : "opacity-0 -translate-y-5 pointer-events-none"
        }`}
      >
        <a href="/" className="block hover:text-yellow-400 font-bold">Home</a>
        <a href="/Wisata" className="block hover:text-yellow-400 font-bold">Daftar Wisata</a>
        <a href="/Event" className="block hover:text-yellow-400 font-bold">Event Lokal</a>
        <a href="/Amenities" className="block hover:text-yellow-400 font-bold">Amenities</a>
        {/* <div className="space-y-2">
          <button className="block w-full bg-gray-700 text-white px-4 py-2 rounded hover:bg-gray-600">Log In</button>
          <button className="block w-full bg-yellow-500 text-gray-900 px-4 py-2 rounded hover:bg-yellow-600">Sign Up</button>
        </div> */}
      </div>
    </div>
  );
};

export default Navbar;
