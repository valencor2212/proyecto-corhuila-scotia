import React from 'react';

const TableSection = ({ title, rows, onUpdateWork, updatedWorks }) => {
  const handleChange = (id, field, value) => {
    const newValue = value >= 0 ? value : 0; // Evitar valores negativos
    onUpdateWork(id, field, newValue);
  };

  return (
    <div className="table-section">
      <h1 className="section-title">{title}</h1>
      <table className="form-table">
        <thead>
          <tr>
            <th>LABOR</th>
            <th>DEDICACIÓN (HORAS SEMANA)</th>
            <th>DEDICACIÓN (HORAS SEMESTRE)</th>
            <th>DESCRIPCIÓN</th>
            <th>PRODUCTO</th>
          </tr>
        </thead>
        <tbody>
          {rows.map((row) => (
            <tr key={row.id}>
              <td>{row.name}</td>
              <td>
                <input
                  type="number"
                  min="0"
                  value={updatedWorks[row.id]?.estimatedWeeklyTime || ''}
                  onChange={(e) => handleChange(row.id, 'estimatedWeeklyTime', e.target.value)}
                  className="input-field"
                />
              </td>
              <td>
                <input
                  type="number"
                  min="0"
                  value={updatedWorks[row.id]?.estimatedSemiannualTime || ''}
                  onChange={(e) => handleChange(row.id, 'estimatedSemiannualTime', e.target.value)}
                  className="input-field"
                />
              </td>
              <td>
                <input
                  type="text"
                  placeholder="Descripción"
                  className="input-field"
                />
              </td>
              <td>
                <input
                  type="text"
                  placeholder="Producto"
                  className="input-field"
                />
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default TableSection;
