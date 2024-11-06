import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './History.css';
import logo from '../assets/img/logo.png';
import Icon from '../assets/icons/Icon.svg';
import { getUpdatedWorksByTeacher } from '../services/agenda.service';

const History = ({ teacherId: propTeacherId, onLogout }) => {
  const [historial, setHistorial] = useState([]);
  const navigate = useNavigate();

  // Obtén el ID del profesor desde `localStorage` si no se pasa como prop
  const teacherId = propTeacherId || localStorage.getItem('teacherId');

  useEffect(() => {
    async function fetchHistorial() {
      if (!teacherId) {
        console.error('El ID del profesor es requerido.');
        return;
      }
      try {
        const data = await getUpdatedWorksByTeacher(teacherId);
        console.log('Historial:', data);
        setHistorial(data);
      } catch (error) {
        console.error('Error al obtener el historial:', error);
      }
    }
    fetchHistorial();
  }, [teacherId]);

  const handleBack = () => {
    navigate(-1);
  };

  return (
    <div className="history-container">
      <div className="Rectangle12"></div>
      <div className="Rectangle13"></div>

      <div className="header">
        <img src={logo} alt="Logo Corhuila" className="logo" />
        <h1 className="bienvenida-texto">HISTÓRICO DE DOCUMENTOS</h1>
      </div>

      <div className="sidebar">
        <button className="menu-btn">HISTÓRICO</button>
        <button className="menu-btn" onClick={onLogout}>CERRAR SESIÓN</button>
      </div>

      <div className="history-content">
        {historial.length > 0 ? (
          historial.map((item, index) => (
            <div key={index} className="history-item">
              <h2>{item.titulo || 'Título no disponible'}</h2>
              <p>{item.descripcion || 'Descripción no disponible'}</p>
              <button className="abrir-btn">ABRIR</button>
            </div>
          ))
        ) : (
          <p>No hay historial disponible.</p>
        )}
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
