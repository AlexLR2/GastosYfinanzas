CREATE DATABASE IF NOT EXISTS registro_gastos CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE registro_gastos;

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE transacciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('gasto', 'ingreso') NOT NULL,
    monto DECIMAL(12,2) NOT NULL,
    categoria_id INT NOT NULL,
    fecha DATE NOT NULL,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT INTO categorias (nombre) VALUES
('Alimentación'),
('Transporte'),
('Vivienda'),
('Salud'),
('Educación'),
('Entretenimiento'),
('Servicios'),
('Otros');

INSERT INTO transacciones (tipo, monto, categoria_id, fecha) VALUES
('ingreso', 2500000.00, 8, '2026-08-01'),  -- salario, categoría "Otros"
('gasto',    350000.00, 1, '2026-08-02'),  -- mercado, Alimentación
('gasto',     45000.00, 2, '2026-08-02'),  -- pasajes, Transporte
('gasto',   1200000.00, 3, '2026-08-03'),  -- arriendo, Vivienda
('gasto',     80000.00, 4, '2026-08-04'),  -- medicamentos, Salud
('gasto',    150000.00, 5, '2026-08-05'),  -- curso online, Educación
('gasto',     60000.00, 6, '2026-08-06'),  -- cine, Entretenimiento
('gasto',    120000.00, 7, '2026-08-07'),  -- internet, Servicios
('ingreso',  300000.00, 8, '2026-08-08'),  -- venta ocasional, Otros
('gasto',     95000.00, 1, '2026-08-09');  -- restaurante, Alimentación