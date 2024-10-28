import axios from 'axios';

const WORKS_API_URL = 'http://localhost:9000/Work';
const TEACHERS_API_URL = 'http://localhost:9000/api/teachers';


export const getWorks = async () => {
    try {
        const response = await axios.get(`${WORKS_API_URL}/findall`);
        return response.data;
    } catch (error) {
        console.error('Error obteniendo las labores:', error);
        throw error;
    }
};

export const updateWork = async (id, data) => {
    try {
        console.log('Actualizando labor con id:', id, 'y data:', data);
        const response = await axios.put(`${WORKS_API_URL}/${id}`, data);
        console.log('Respuesta del servidor:', response.data);
        return response.data;
    } catch (error) {
        console.error('Error actualizando la labor:', error);
        throw error;
    }
};

export const getTeacherInfo = async (id) => {
    try {
        const response = await axios.get(`${TEACHERS_API_URL}/${id}`);
        return response.data;
    } catch (error) {
        console.error('Error obteniendo la información del profesor:', error);
        throw error;
    }
};
