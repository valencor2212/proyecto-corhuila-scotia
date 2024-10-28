import React from 'react';
import { useNavigate } from 'react-router-dom';
import './Home.css';
import logo from '../assets/img/logo.png';

const Home = ({ nombreUsuario = 'Invitado', onLogout }) => {
  const navigate = useNavigate();

  const goToFormulario = () => {
    navigate('/agenda');
  };

  const goToHistorico = () => {
    navigate('/history'); // Redirige al componente History
  };

  return (
    <div className="home-container">

      <div className="Rectangle12"></div>
      <div className="Rectangle13"></div>

      <div className="header">
        <img src={logo} alt="Logo Corhuila" className="logo" />
        <h1 className="bienvenida-texto">
          BIENVENIDO {nombreUsuario ? nombreUsuario.toUpperCase() : 'INVITADO'}! ¿ESTÁS LISTO PARA ORGANIZAR TU AGENDA?
        </h1>
      </div>

      <div className="sidebar">
        <button className="menu-btn" onClick={goToFormulario}>FORMULARIO</button>
        <button className="menu-btn" onClick={goToHistorico}>HISTÓRICO</button>
        <button className="menu-btn" onClick={onLogout}>CERRAR SESIÓN</button>
      </div>

      <div className="ellipse-bg large-ellipse"></div>
      <div className="ellipse-bg medium-ellipse">
        <div className="outer-ellipse"></div>
      </div>
      <div className="ellipse-bg small-ellipse">
        <div className="outer-small-ellipse"></div>
      </div>
      <div className="ellipse-bg extra-small-ellipse">
        <div className="inner-ellipse"></div>
      </div>

      <div className="Rectangle14"></div>
      <div className="Rectangle15"></div>
      <div className="Rectangle16"></div>
    </div>
  );
};

export default Home;
