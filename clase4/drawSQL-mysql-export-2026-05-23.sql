CREATE TABLE `productos`(
    `idProducto` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `producto` VARCHAR(50) NOT NULL,
    `precio` DECIMAL(10, 2) NOT NULL,
    `idMarca` TINYINT UNSIGNED NOT NULL,
    `idCategoria` TINYINT UNSIGNED NOT NULL,
    `descripcion` VARCHAR(1000) NOT NULL,
    `imagen` VARCHAR(50) NOT NULL,
    `activo` BOOLEAN NOT NULL
);
ALTER TABLE
    `productos` ADD UNIQUE `productos_producto_unique`(`producto`);
CREATE TABLE `marcas`(
    `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `marca` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `marcas` ADD UNIQUE `marcas_marca_unique`(`marca`);
CREATE TABLE `categorias`(
    `idCategoria` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `categoria` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `categorias` ADD UNIQUE `categorias_categoria_unique`(`categoria`);
CREATE TABLE `proveedores`(
    `idProveedor` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `razonSocial` VARCHAR(100) NOT NULL,
    `cuit` VARCHAR(13) NOT NULL,
    `telefono` VARCHAR(25) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `direccion` VARCHAR(100) NOT NULL
);
ALTER TABLE
    `proveedores` ADD UNIQUE `proveedores_cuit_unique`(`cuit`);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idmarca_foreign` FOREIGN KEY(`idMarca`) REFERENCES `marcas`(`idMarca`);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idcategoria_foreign` FOREIGN KEY(`idCategoria`) REFERENCES `categorias`(`idCategoria`);