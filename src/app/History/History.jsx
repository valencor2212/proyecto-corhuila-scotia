import React from 'react';
import { useNavigate } from 'react-router-dom'; // Para poder navegar entre rutas
import './History.css'; // Archivo CSS para los estilos
import logo from '../assets/img/logo.png'; // Asegúrate de que esta ruta sea correcta para el logo
import Icon from '../assets/icons/Icon.svg'; // Ruta del ícono de regresar

const History = ({ nombreUsuario, onLogout, historial }) => {
  const navigate = useNavigate(); // Hook para navegar entre rutas

  // Función para manejar el botón de regresar
  const handleBack = () => {
    navigate(-1); // Regresa a la página anterior
  };

  return (
    <div className="history-container">
      <div className="Rectangle12"></div>
      <div className="Rectangle13"></div>

      <div className="header">
        <img src={logo} alt="Logo Corhuila" className="logo" />
        <h1 className="bienvenida-texto">
          HISTÓRICO DE DOCUMENTOS
        </h1>
       
      </div>

      <div className="sidebar">
        <button className="menu-btn">HISTÓRICO</button>
        <button className="menu-btn" onClick={onLogout}>CERRAR SESIÓN</button>
      </div>

      <div className="history-content">
        {historial.map((item, index) => (
          <div key={index} className="history-item">
            <h2>{item.titulo}</h2>
            <p>{item.descripcion}</p>
            <button className="abrir-btn">ABRIR</button>
          </div>
        ))}
      </div>

      {/* Botón de regresar */}
      <button className="back-btn" onClick={handleBack}>
        <img src={Icon} alt="Regresar" className="back-icon" />
      </button>

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
    </div>
  );
};

export default History;
