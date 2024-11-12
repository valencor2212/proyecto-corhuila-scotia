import axios from 'axios';

const WORKS_API_URL = 'http://ec2-18-218-203-108.us-east-2.compute.amazonaws.com:9000/Work';
const TEACHERS_API_URL = 'http://ec2-18-218-203-108.us-east-2.compute.amazonaws.com:9000/api/teachers';


export const getWorks = async () => {
    try {
        const response = await axios.get(`${WORKS_API_URL}/findall`);
        return response.data;
    } catch (error) {
        console.error('Error obteniendo las labores:', error);
        throw error;
    }
};

export const updateWork = async (id, data, teacherId) => {
    try {
        const response = await axios.put(`${WORKS_API_URL}/${id}?teacherId=${teacherId}`, data);
        return response.data;
    } catch (error) {
        console.error('Error actualizando la labor:', error);
        throw error;
    }
};
export const getUpdatedWorksByTeacher = async (teacherId) => {
    if (!teacherId) {
        console.error('El ID del profesor no está definido');
        throw new Error('El ID del profesor es requerido');
    }
    try {
        const response = await axios.get(`${WORKS_API_URL}/updated-by-teacher`, {
            params: { teacherId }
        });
        return response.data;
    } catch (error) {
        console.error('Error obteniendo las actualizaciones de las labores del profesor:', error);
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
