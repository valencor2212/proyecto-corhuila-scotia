import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './Agenda.css';
import Icon from '../assets/icons/Icon.svg';
import logo from '../assets/img/logo.png';
import TableSection from '../components/TableSection';
import { getWorks, updateWork } from '../services/agenda.service';
import Swal from 'sweetalert2';

const Agenda = () => {
    const navigate = useNavigate();
    const [currentView, setCurrentView] = useState(0);
    const [works, setWorks] = useState([]);
    const [updatedWorks, setUpdatedWorks] = useState({});
    const [teacherId, setTeacherId] = useState(null);

    useEffect(() => {
        // Obtener el teacherId del almacenamiento local
        const storedTeacherId = localStorage.getItem("teacherId");
        if (storedTeacherId) {
            setTeacherId(parseInt(storedTeacherId));
        } else {
            console.error("Teacher ID no encontrado en localStorage.");
            navigate("/login"); // Redirige a la página de inicio de sesión si no hay teacherId
        }

        async function fetchWorks() {
            const result = await getWorks();
            setWorks(result);

            const emptyUpdates = result.reduce((acc, work) => {
                acc[work.id] = { ...work, estimatedWeeklyTime: '', estimatedSemiannualTime: '' };
                return acc;
            }, {});
            setUpdatedWorks(emptyUpdates);
        }
        fetchWorks();
    }, [navigate]);

    const handleBack = () => {
        navigate(-1);
    };

    const handleNext = () => {
        if (currentView < 3) setCurrentView(currentView + 1);
    };

    const handlePrev = () => {
        if (currentView > 0) setCurrentView(currentView - 1);
    };

    const filteredWorks = [
        works.filter(work => ['Preparación de clases', 'Evaluación de aprendizajes a estudiantes', 'Gestión de eventos académicos'].includes(work.name)),
        works.filter(work => ['Gestión de semilleros de investigación', 'Elaboración de propuestas para convocatorias de CTeI', 'Gestión de proyectos de investigación en CTeI', 'Dirección de grupos de investigación', 'Elaboración de artículos científicos y textos académicos'].includes(work.name)),
        works.filter(work => ['Gestión de proyectos de consultoría', 'Acompañamiento al sector empresarial', 'Participación en proyectos de intervención comunitaria', 'Gestión de proyectos culturales', 'Promoción de la educación artística', 'Divulgación de los valores culturales'].includes(work.name)),
        works.filter(work => ['Participación como jurado y/o asesor académico en trabajos de grado', 'Participación en procesos de registros calificados', 'Participación en procesos de acreditación', 'Participación en Consejos y Comités', 'Participación en procesos de autoevaluación', 'Participación en Investigaciones de mercado', 'Participación en procesos de formación de profesores', 'Programación y gestión de prácticas extramuros', 'Elaboración de exámenes para validaciones', 'Líder de CTeI, extensión y proyección social', 'Líder de resultados de aprendizaje'].includes(work.name)),
    ];

    const handleInputChange = (id, field, value) => {
        setUpdatedWorks(prev => ({
            ...prev,
            [id]: { ...prev[id], [field]: value }
        }));
    };

    const handleSubmit = async () => {
        let hasEditedWork = false;

        for (let workId in updatedWorks) {
            const work = updatedWorks[workId];
            if (work.estimatedWeeklyTime || work.estimatedSemiannualTime) {
                hasEditedWork = true;
                break;
            }
        }

        if (!hasEditedWork) {
            Swal.fire({
                icon: 'warning',
                title: 'No se ha editado ninguna labor',
                text: 'Debe editar al menos una labor antes de enviar los cambios.',
                confirmButtonText: 'Aceptar'
            });
        } else {
            try {
                for (let workId in updatedWorks) {
                    const work = updatedWorks[workId];
                    if (work.estimatedWeeklyTime || work.estimatedSemiannualTime) {
                        await updateWork(workId, {
                            estimatedWeeklyTime: work.estimatedWeeklyTime || 0,
                            estimatedSemiannualTime: work.estimatedSemiannualTime || 0
                        }, teacherId);
                    }
                }

                Swal.fire({
                    icon: 'success',
                    title: '¡Éxito!',
                    text: 'Horas actualizadas exitosamente',
                    confirmButtonText: 'Aceptar'
                }).then(() => {
                    const resetUpdates = works.reduce((acc, work) => {
                        acc[work.id] = { ...work, estimatedWeeklyTime: '', estimatedSemiannualTime: '' };
                        return acc;
                    }, {});
                    setUpdatedWorks(resetUpdates);
                });

            } catch (error) {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Ocurrió un problema al actualizar las horas. Por favor, intenta de nuevo.',
                    confirmButtonText: 'Aceptar'
                });
            }
        }
    };

    return (
        <div className="agenda-container">
            <div className="Rectangle12"></div>
            <div className="Rectangle13"></div>
            <div className="header">
                <img src={logo} alt="Logo Corhuila" className="logo" />
            </div>

            <div className="table-container">
                <TableSection
                    title={currentView + 1 === 1 ? "1. LABORES DE DOCENCIA, ACADÉMICAS Y FORMATIVAS" :
                        currentView + 1 === 2 ? "2. LABORES CIENTÍFICAS" :
                            currentView + 1 === 3 ? "3. LABORES EXTENSIÓN Y CULTURALES" :
                                "4. ACTIVIDADES DE GESTIÓN ACADÉMICA - ADMINISTRATIVA"}
                    rows={filteredWorks[currentView]}
                    onUpdateWork={handleInputChange}
                    updatedWorks={updatedWorks}
                />

                <div className="form-buttons">
                    <button className="prev-btn" onClick={handlePrev} disabled={currentView === 0}>
                        Anterior
                    </button>
                    <button className="submit-btn" onClick={handleSubmit}>Enviar</button>
                    <button className="next-btn" onClick={handleNext} disabled={currentView === filteredWorks.length - 1}>
                        Siguiente
                    </button>
                </div>
            </div>

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

export default Agenda;
