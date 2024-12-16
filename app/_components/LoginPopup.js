// "use client";

// import React, { useState } from "react";
// import { signIn } from "next-auth/react";

// const LoginPopup = ({ onClose }) => {
//   const [email, setEmail] = useState("");
//   const [password, setPassword] = useState("");
//   const [error, setError] = useState("");

//   const handleLogin = async () => {
//     if (!email || !password) {
//       setError("Email and Password are required.");
//       return;
//     } else {
//       setError("");
//       // Menggunakan NextAuth untuk login dengan kredensial
//       const res = await signIn("credentials", {
//         redirect: false,
//         email,
//         password,
//       });

//       if (res?.error) {
//         setError("Invalid email or password.");
//       } else {
//         alert("Logged in successfully!");
//         onClose(); // Menutup modal setelah login berhasil
//       }
//     }
//   };

//   return (
//     <div className="fixed inset-0 flex items-center justify-center z-50 bg-black bg-opacity-70">
//       <div className="bg-gray-900 text-white rounded-lg shadow-lg max-w-sm w-full p-6 relative">
//         {/* Close Button */}
//         <button
//           onClick={onClose}
//           className="absolute top-4 right-4 text-white hover:text-gray-400"
//         >
//           ✕
//         </button>

//         {/* Logo */}
//         <div className="flex justify-center mb-4">
//           <img
//             src="/img/Logo.png"
//             alt="Logo"
//             className="h-12"
//           />
//         </div>

//         {/* Email Input */}
//         <div className="mb-4">
//           <label
//             htmlFor="email"
//             className="block text-sm text-gray-400 mb-1"
//           >
//             Email
//           </label>
//           <input
//             type="email"
//             id="email"
//             value={email}
//             onChange={(e) => setEmail(e.target.value)}
//             placeholder="Enter email address"
//             className="w-full px-4 py-2 text-black bg-gray-200 rounded focus:outline-none focus:ring-2 focus:ring-green-500"
//           />
//         </div>

//         {/* Password Input */}
//         <div className="mb-4">
//           <label
//             htmlFor="password"
//             className="block text-sm text-gray-400 mb-1"
//           >
//             Password
//           </label>
//           <input
//             type="password"
//             id="password"
//             value={password}
//             onChange={(e) => setPassword(e.target.value)}
//             placeholder="Enter password"
//             className="w-full px-4 py-2 text-black bg-gray-200 rounded focus:outline-none focus:ring-2 focus:ring-green-500"
//           />
//           {error && <p className="text-red-500 text-sm mt-1">{error}</p>}
//         </div>

//         {/* Log In Button */}
//         <button
//           onClick={handleLogin}
//           className="w-full bg-green-500 hover:bg-green-600 text-gray-900 font-semibold py-2 rounded transition duration-300"
//         >
//           Log in
//         </button>

//         {/* Register & Forgot Password Links */}
//         <div className="flex justify-between text-sm text-gray-400 mt-4">
//           <button className="hover:text-gray-200">Register</button>
//           <button className="hover:text-gray-200">Forgot password?</button>
//         </div>

//         {/* Social Login */}
//         <div className="flex justify-center space-x-4 mt-6">
//           <button className="text-gray-400 hover:text-white transition duration-300">
//             <img src="/img/Google.png" alt="Google" className="h-6" />
//           </button>
//           <button className="text-gray-400 hover:text-white transition duration-300">
//             <img src="/img/Facebook.png" alt="Facebook" className="h-6" />
//           </button>
//         </div>
//       </div>
//     </div>
//   );
// };

// export default LoginPopup;
