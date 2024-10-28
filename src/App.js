import React, { useState } from 'react';
import { BrowserRouter as Router, Route, Routes, Navigate } from 'react-router-dom';
import Login from './app/login/Login';
import Home from './app/home/Home';
import Agenda from './app/agenda/Agenda';
import 'bootstrap-icons/font/bootstrap-icons.css';
import History from './app/History/History';

function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(false);
  const [nombreUsuario, setNombreUsuario] = useState('');
  
  const handleLogout = () => {
    setIsLoggedIn(false);
    setNombreUsuario('');
  };

  const handleLoginSuccess = (nombre) => {
    setIsLoggedIn(true);
    setNombreUsuario(nombre);
  };

  return (
    <Router>
      <Routes>
        <Route path="/" element={isLoggedIn ? <Navigate to="/home" /> : <Login onLoginSuccess={handleLoginSuccess} />} />
        <Route path="/login" element={<Login onLoginSuccess={handleLoginSuccess} />} />
        <Route
          path="/home"
          element={isLoggedIn ? <Home nombreUsuario={nombreUsuario} onLogout={handleLogout} /> : <Navigate to="/login" />}
        />
        <Route path="/agenda" element={isLoggedIn ? <Agenda /> : <Navigate to="/login" />} />
        <Route path="/history" element={isLoggedIn ? <History nombreUsuario={nombreUsuario} onLogout={handleLogout} historial={[]} /> : <Navigate to="/login" />} />
      </Routes>
    </Router>
  );
}

export default App;
