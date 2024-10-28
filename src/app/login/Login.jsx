import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';
import Swal from 'sweetalert2';
import './Login.css';
import logo from '../assets/img/logo.png';

const Login = ({ onLoginSuccess }) => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [highlightError, setHighlightError] = useState({ username: false, password: false });
  const navigate = useNavigate();

  const handleLogin = async (e) => {
    e.preventDefault();

    // Verificar si los campos están vacíos
    if (!username || !password) {
      Swal.fire({
        icon: 'warning',
        title: 'Campos incompletos',
        text: 'Debe llenar los campos de usuario y contraseña.',
        confirmButtonText: 'Aceptar',
      });

      setHighlightError({
        username: !username,
        password: !password,
      });

      return; 
    }

    try {
      const response = await axios.post('http://localhost:9000/api/teachers/login', {
        username,
        password,
      });
    
      if (response.status === 200) {
        Swal.fire({
          icon: 'success',
          title: '¡Login exitoso!',
          text: `Bienvenido a la plataforma, ${response.data.nombre}`,
          confirmButtonText: 'OK',
        });
    
        localStorage.setItem('nombreUsuario', response.data.nombre);
    
        setHighlightError({ username: false, password: false });
        onLoginSuccess(response.data.nombre);
        navigate('/home');
      }
    } catch (err) {
      Swal.fire({
        icon: 'error',
        title: 'Error de inicio de sesión',
        text: 'Credenciales inválidas. Intenta de nuevo.',
        confirmButtonText: 'Aceptar',
      });
    }
}    

  return (
    <div className="login-container">
      <div className="Rectangle12"></div>
      <div className="Rectangle13"></div>
      <div className="Rectangle14"></div>
      <div className="Rectangle15"></div>

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

      <div className="logo-container">
        <img src={logo} alt="Logo" className="login-logo" />
      </div>

      <div className="login-box">
        <div className="login-header">
          <i className="bi bi-person-circle login-icon"></i>
          <h2>Agenda Intersemestral</h2>
        </div>

        <form onSubmit={handleLogin} className="login-form">
          <div className="form-group">
            <label>USUARIO</label>
            <input
              type="text"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
              placeholder="Ingrese su usuario"
              className={`input-field ${highlightError.username ? 'input-error' : ''}`} // Resaltar campo vacío en rojo
            />
          </div>
          <div className="form-group">
            <label>CONTRASEÑA</label>
            <input
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              placeholder="Ingrese su contraseña"
              className={`input-field ${highlightError.password ? 'input-error' : ''}`} // Resaltar campo vacío en rojo
            />
          </div>
          <button type="submit" className="login-btn">
            Iniciar Sesión
          </button>
        </form>
      </div>
    </div>
  );
};

export default Login;
