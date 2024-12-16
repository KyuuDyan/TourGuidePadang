"use client"; // Untuk Next.js jika diperlukan

import React, { useState } from "react";

const Footer = () => {
  const [language, setLanguage] = useState("English");
  const [isDropdownOpen, setIsDropdownOpen] = useState(false);

  const handleLanguageChange = (lang) => {
    setLanguage(lang);
    setIsDropdownOpen(false);
  };

  return (
    <footer className="bg-gray-900 text-white">
      {/* Garis Pembatas */}
      <div className="h-1 bg-gradient-to-r from-yellow-500 via-red-500 to-purple-500"></div>

      <div className="max-w-7xl mx-auto px-6 lg:px-8 py-8">
        <div className="flex flex-col lg:flex-row justify-between items-center">
          {/* Kiri: Informasi Footer */}
          <div className="text-center lg:text-left mb-6 lg:mb-0">
            <h2 className="text-2xl font-semibold">Tour Guide Padang</h2>
            <p className="text-sm text-gray-400 mt-1">
              © 2024 Kelompok 5. All Rights Reserved.
            </p>
          </div>

          {/* Tengah: Pilihan Bahasa */}
          <div className="relative mb-6 lg:mb-0">
            <button
              onClick={() => setIsDropdownOpen(!isDropdownOpen)}
              className="flex items-center bg-gray-800 px-4 py-2 rounded-lg shadow hover:bg-gray-700 transition duration-300"
            >
              <span className="mr-2">{language}</span>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                className="h-5 w-5 text-gray-300"
                viewBox="0 0 20 20"
                fill="currentColor"
              >
                <path
                  fillRule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clipRule="evenodd"
                />
              </svg>
            </button>

            {/* Dropdown */}
            {isDropdownOpen && (
              <ul className="absolute left-0 mt-2 bg-gray-800 rounded-lg shadow-lg overflow-hidden z-10">
                <li
                  onClick={() => handleLanguageChange("English")}
                  className="cursor-pointer px-4 py-2 hover:bg-gray-700 transition duration-300"
                >
                  English
                </li>
                <li
                  onClick={() => handleLanguageChange("Bahasa Indonesia")}
                  className="cursor-pointer px-4 py-2 hover:bg-gray-700 transition duration-300"
                >
                  Bahasa Indonesia
                </li>
              </ul>
            )}
          </div>

          {/* Kanan: Media Sosial */}
          <div className="flex space-x-4">
            <a href="#" className="text-gray-400 hover:text-white">
              <i className="fab fa-facebook-f"></i>
            </a>
            <a href="#" className="text-gray-400 hover:text-white">
              <i className="fab fa-twitter"></i>
            </a>
            <a href="#" className="text-gray-400 hover:text-white">
              <i className="fab fa-instagram"></i>
            </a>
            <a href="#" className="text-gray-400 hover:text-white">
              <i className="fab fa-youtube"></i>
            </a>
          </div>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
