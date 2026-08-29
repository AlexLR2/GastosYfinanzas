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
<<<<<<< HEAD
('gasto', 25000.00, 1, '2026-08-01'),
('gasto', 12000.00, 2, '2026-08-02'),
('gasto', 850000.00, 3, '2026-08-03'),
('gasto', 45000.00, 4, '2026-08-04'),
('ingreso', 2500000.00, 8, '2026-08-05'),
('gasto', 35000.00, 1, '2026-08-06'),
('gasto', 18000.00, 6, '2026-08-07'),
('gasto', 120000.00, 7, '2026-08-08'),
('gasto', 60000.00, 5, '2026-08-09'),
('ingreso', 500000.00, 8, '2026-08-10'),
('gasto', 28000.00, 2, '2026-08-11'),
('gasto', 95000.00, 1, '2026-08-12'),
('gasto', 75000.00, 4, '2026-08-13'),
('gasto', 40000.00, 6, '2026-08-14'),
('gasto', 150000.00, 7, '2026-08-15'),
('gasto', 70000.00, 5, '2026-08-16'),
('gasto', 30000.00, 1, '2026-08-17'),
('gasto', 15000.00, 2, '2026-08-18'),
('ingreso', 800000.00, 8, '2026-08-19'),
('gasto', 50000.00, 6, '2026-08-20');

--base de datos
=======
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

--verificar datos en la api