"use client";

import React, { useState } from "react";
// import LoginPopup from "./_components/LoginPopup";
import Sect1 from "./_components/Sect1";
import Sect2 from "./_components/Sect2";
import Sect3 from "./_components/Sect3";

export default function Page() {
  const [showPopup, setShowPopup] = useState(false);

  const handleSignUpClick = () => {
    setShowPopup(true);
  };

  const handleClosePopup = () => {
    setShowPopup(false);
  };

  return (
    <div  className="mt-50">
      <Sect1 onSignUpClick={handleSignUpClick}/>
      {showPopup && <LoginPopup onClose={handleClosePopup} />}
      
      <Sect2 />
      <Sect3 />
    </div>

  );
}
