import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import * as XLSX from 'xlsx';
import './History.css';
import logo from '../assets/img/logo.png';
import Icon from '../assets/icons/Icon.svg';
import { getUpdatedWorksByTeacher } from '../services/agenda.service';

const History = ({ teacherId: propTeacherId, onLogout }) => {
  const [historial, setHistorial] = useState([]);
  const [expandedRows, setExpandedRows] = useState({});
  const navigate = useNavigate();

  const teacherId = propTeacherId || localStorage.getItem('teacherId');

  useEffect(() => {
    async function fetchHistorial() {
      if (!teacherId) {
        console.error('El ID del profesor es requerido.');
        return;
      }
      try {
        const data = await getUpdatedWorksByTeacher(teacherId);
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

  const exportToExcel = () => {
    const worksheet = XLSX.utils.json_to_sheet(historial);
    const workbook = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(workbook, worksheet, 'Historial');
    XLSX.writeFile(workbook, 'Historial_Academico.xlsx');
  };

  const toggleExpandRow = (index) => {
    setExpandedRows((prev) => ({
      ...prev,
      [index]: !prev[index],
    }));
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
          <div className="history-table-container">
            <table className="history-table">
              <thead>
                <tr>
                  <th>Título</th>
                  <th>Descripción</th>
                  <th>Tiempo Semanal</th>
                  <th>Tiempo Semestral</th>
                  <th>Productos Asociados</th>
                </tr>
              </thead>
              <tbody>
                {historial.map((item, index) => (
                  <React.Fragment key={index}>
                    <tr>
                      <td>{item.name || 'Título no disponible'}</td>
                      <td>{item.descripcion || 'Descripción no disponible'}</td>
                      <td>{item.estimatedWeeklyTime || 'No disponible'}</td>
                      <td>{item.estimatedSemiannualTime || 'No disponible'}</td>
                      <td>
                        <button onClick={() => toggleExpandRow(index)} className="toggle-btn">
                          {expandedRows[index] ? 'Minimizar' : 'Expandir'}
                        </button>
                      </td>
                    </tr>
                    {expandedRows[index] && (
                      <tr>
                        <td colSpan="5">
                          <ul className="productos-list">
                            {item.productos && item.productos.length > 0 ? (
                              item.productos.map((producto, idx) => (
                                <li key={idx} className="producto-item">
                                  <strong>{producto.nombre}</strong>: {producto.descripcion || 'Sin descripción'}
                                </li>
                              ))
                            ) : (
                              <li>No hay productos asociados</li>
                            )}
                          </ul>
                        </td>
                      </tr>
                    )}
                  </React.Fragment>
                ))}
              </tbody>
            </table>
            <button className="excel-btn" onClick={exportToExcel}>Descargar Excel</button>
          </div>
        ) : (
          <p>No hay historial disponible.</p>
        )}
      </div>

      <button className="back-btn" onClick={handleBack}>
        <img src={Icon} alt="Regresar" className="back-icon" />
      </button>

      {/* Ellipses and rectangles as part of the background design */}
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
